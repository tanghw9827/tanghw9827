#!/usr/bin/env bash
# 用 Chrome headless 把 resume.html 打印成 PDF。
# 用法：bash build-pdf.sh
# 注意：如果 resume.pdf 在 PDF 阅读器中打开，请先关闭再运行。

set -euo pipefail

cd "$(dirname "$0")"

CHROME="/c/Program Files/Google/Chrome/Application/chrome.exe"
[[ -x "$CHROME" ]] || CHROME="/c/Program Files (x86)/Google/Chrome/Application/chrome.exe"
[[ -x "$CHROME" ]] || CHROME="/c/Program Files (x86)/Microsoft/Edge/Application/msedge.exe"

if [[ ! -x "$CHROME" ]]; then
  echo "找不到 Chrome 或 Edge，请手动设置 CHROME 变量。" >&2
  exit 1
fi

WIN_DIR="$(pwd -W 2>/dev/null || pwd)"
SRC_URL="file:///${WIN_DIR//\\//}/resume.html"
TMP_PDF_WIN="${WIN_DIR}\\resume.tmp.pdf"
TMP_PDF_NIX="resume.tmp.pdf"
OUT="resume.pdf"
ALT="唐华文-自动驾驶决策规划算法.pdf"

# 检查目标文件是否被占用
for f in "$OUT" "$ALT"; do
  if [[ -e "$f" ]] && ! (echo "" >> "$f") 2>/dev/null; then
    echo "无法写入 $f，可能正在被 PDF 阅读器占用，请先关闭。" >&2
    exit 1
  fi
done

# 清理可能残留的临时文件
rm -f "$TMP_PDF_NIX"

echo "使用浏览器: $CHROME"
echo "输入: $SRC_URL"

"$CHROME" \
  --headless=new \
  --disable-gpu \
  --no-pdf-header-footer \
  --print-to-pdf="$TMP_PDF_WIN" \
  "$SRC_URL"

if [[ ! -s "$TMP_PDF_NIX" ]]; then
  echo "生成失败：临时 PDF 文件为空或不存在。" >&2
  exit 1
fi

mv -f "$TMP_PDF_NIX" "$OUT"
cp -f "$OUT" "$ALT"

echo "生成完成:"
ls -la "$OUT" "$ALT"
