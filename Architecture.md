# Stock Quant App

一个基于 Flutter 的量化交易应用。

## 项目架构

本项目采用 Clean Architecture（洁净架构）设计模式，目录结构如下：

```
lib/
├── core/                   # 核心功能
│   ├── network/           # 网络相关
│   └── utils/             # 工具类
├── data/                  # 数据层
│   ├── models/            # 数据模型
│   ├── repositories/      # 仓库实现
│   └── services/          # 服务实现
├── domain/                # 领域层
│   ├── entities/          # 业务实体
│   ├── enums/            # 枚举定义
│   ├── repositories/      # 仓库接口
│   └── services/          # 服务接口
├── di/                    # 依赖注入
├── presentation/         # 表现层
│   ├── controllers/      # 控制器
│   ├── pages/           # 页面
│   └── widgets/         # 组件
└── config/              # 配置
```

### 架构说明

1. **领域层 (Domain Layer)**
   - 包含业务逻辑和规则
   - 定义接口（抽象类）
   - 完全独立于其他层
   - 包含：
     - Entities: 核心业务对象
     - Repository Interfaces: 数据操作接口
     - Service Interfaces: 业务服务接口

2. **数据层 (Data Layer)**
   - 实现领域层定义的接口
   - 处理数据持久化和网络请求
   - 包含：
     - Models: 数据模型（可序列化）
     - Repository Implementations: 仓库实现
     - Service Implementations: 服务实现
     - API Clients: 网络客户端

3. **表现层 (Presentation Layer)**
   - 处理 UI 相关逻辑
   - 使用 Riverpod 进行状态管理
   - 包含：
     - Pages: 页面
     - Widgets: UI 组件
     - Controllers: 业务逻辑控制器

### 依赖规则

1. 外层依赖内层，内层不依赖外层
2. 领域层是最内层，不依赖任何其他层
3. 数据层依赖领域层，实现其接口
4. 表现层依赖领域层，通过依赖注入使用数据层

### 数据流向

1. UI 调用 Controller
2. Controller 调用 Service/Repository
3. Service/Repository 实现处理数据
4. 数据通过 Stream/Future 返回给 UI

## 技术栈

- Flutter
- Riverpod: 状态管理
- GetIt: 依赖注入
- Freezed: 数据类生成
- Dio: 网络请求
- WebSocket: 实时数据
