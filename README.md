# 唐华文

> **电话**：`18374898915`   **邮箱**：`1477514699@qq.com`
> 
> **Github**: [github.com/tanghw9827](https://github.com/tanghw9827)  **个人博客**: [tanghw9827.github.io](https://tanghw9827.github.io)
>
<!-- <img src="https://avatars.githubusercontent.com/u/583231?v=4" alt="avatar"> -->

## 教育信息

### 哈尔滨工业大学（深圳） - 硕士 - 控制科学与工程专业 (2022.09 - 2025.03)（985 双一流）

### 湖南大学 - 本科 - 车辆工程专业 (2015.09 - 2019.06) （985 双一流）

荣誉奖励: 国家励志奖学金，校一等奖学金，英语四六级，美国大学生数学建模竞赛一等奖


## 专业技能

- 掌握 **C++、Python、Matlab** 等多种编程语言，熟悉 **Ubuntu、ROS2** 开发
- 熟悉 **Hybrid A***、**RRT***、**Lattice Planner**等规划算法，以及 **QP**、**iLQR**等优化算法（[blog page](https://tanghw9827.github.io/2024/08/01/%E6%8E%A7%E5%88%B6%E5%9F%BA%E6%9C%AC%E5%8E%9F%E7%90%86/)）
- 熟悉车辆运动学特性、动力学建模，掌握 **PID**、**LQR**、**MPC** 等控制算法
- 熟悉 **FSM**、**POMDP**、**RLHF** 等决策模型
- 拥有 **3年**驾驶经验，熟悉驾驶过程中的难点


## 实习工作

### 机器人算法工程师 - 速腾聚创  (2024.04 - 2024.08)
- 负责参考线功能新特性开发，包括**参考线绕行**静态障碍物、通过匝道、无变道路口等复杂场景，**无图版本**下参考线的适配，以及接入**决策NN先验**的参考线生成
- 实现控制模块的性能优化，包括**车辆运动学和动力学**参数及加速度和转角响应时间的**系统辨识**，以及**MPC误差权重参数自整定**下的横纵向轨迹跟踪误差优化
- 研究**contingency-planning**下基于场景树构建的自车轨迹优化，包括自车策略定义下的**场景树构建**，**多意图优化**问题的求解，以及最优轨迹的获取

### 汽车工艺开发工程师 - 广汽埃安  (2019.07 - 2021.06)
- 负责新车型与改款车型**总装工艺的设计开发**与自动化**设备导入**及改造调试
- 完成了Aion S、Aion LX两款**改款车型**，Aion Y、Aion V两款**新车型**的工艺开发工作

## 项目经历

###  规划控制算法部署- [github.com/tanghw9827/carla-ros-pnc](https://github.com/tanghw9827/carla-ros-pnc)
- 使用 **Carla 和 ROS2** 部署规划控制常用算法，并在 carla_ad_demo 场景中运行
- **控制算法：** Pure Pursuit，Stanley，纵向串级 PID，横向 LQR，横纵向 MPC
- **规划算法**：A\*，Hybrid A\*，RRT\*，参考线 OSQP 平滑，EM Planner，Lattice Planner

### 时空联合轨迹优化
- 通过多决策构建的场景树**构建联合规划问题**，包括模型的建立（交互目标的筛选、联合状态的建立）以及potential的初始化
- 基于iLQR求解优化问题，输出优化后自车和keyagents各时刻的**输入序列U_list​和状态序列X_list**

### 轨迹预测与跟踪控制（研究生课题）
- 使用LSTM神经网络对五轴数控机床的输出轨迹进行预测
- 基于时延同步迭代学习控制算法，实现轨迹跟踪控制
- **论文：** (Major revision)An iterative contouring error compensation scheme for five-axis machine tools based on motion synchronization control（IEEE/ASME TMECH）（SCI 一区，IF=6.1）
- **专利：** 一种基于时延同步的多轴联动轮廓误差控制方法：中国，CN202410113133.3 [P]. 2022-03-23.

