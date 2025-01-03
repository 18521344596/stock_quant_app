# Stock Quant App

一个高性能的股票量化交易应用，采用 Flutter 开发前端界面，C++ 开发交易引擎，Python 实现策略逻辑。

## 技术栈

### 前端 (Flutter)

- **状态管理**:

  - Riverpod 2.4.9 用于响应式状态管理
  - Provider 模式实现依赖注入
- **网络层**:

  - Dio 5.4.0 处理 HTTP 请求
  - WebSocket Channel 2.4.0 实现实时数据推送
  - 统一的错误处理和重试机制
- **数据序列化**:

  - Freezed 用于数据类生成
  - JSON Serializable 处理 JSON 转换
- **UI 组件**:

  - FL Chart 0.65.0 绘制专业图表
  - Candlesticks 2.1.0 显示 K 线图
  - Material Design 3 设计规范

### 后端

- **交易引擎 (C++)**:
  - Boost.Beast 处理 WebSocket
  - PostgreSQL 数据存储
  - Redis 缓存层
  - SPDLog 日志系统

## 页面框架

### 1. 认证页面

- **登录页面** (`LoginScreen`)
  - 用户名/密码登录
  - 表单验证
  - 错误提示
  - 记住登录状态

### 2. 行情页面

- **市场概览** (`MarketOverviewScreen`)

  - 自选股列表
  - 市场指数展示
  - 涨跌幅排行
- **股票详情** (`StockDetailScreen`)

  - K线图表展示
  - 盘口深度信息
  - 成交量分析
  - 基本信息展示

### 3. 交易页面

- **下单界面** (`OrderEntryScreen`)

  - 委托下单表单
  - 快速交易面板
  - 持仓信息展示
- **订单管理** (`OrderManagementScreen`)

  - 当日委托
  - 历史委托
  - 成交记录

### 4. 策略页面

- **策略列表** (`StrategyListScreen`)

  - 策略卡片展示
  - 状态监控
  - 绩效统计
- **策略详情** (`StrategyDetailScreen`)

  - 参数配置
  - 运行状态
  - 收益分析

## 已实现功能

### 1. 核心功能

- [X] 用户认证系统
- [X] WebSocket 实时数据连接
- [X] HTTP 请求封装
- [X] 错误处理机制

### 2. UI 组件

- [X] Market Depth Widget
- [X] Order Entry Form
- [X] Strategy Card
- [X] Loading Indicator

### 3. 业务功能

- [X] 用户登录/注销
- [X] 实时行情订阅
- [X] 基础交易功能
- [X] 策略状态展示

## 开发中功能

### 1. 行情模块

- [ ] 技术指标计算
- [ ] 自定义指标配置
- [ ] 图表交互优化
- [ ] 多时间周期支持

### 2. 交易模块

- [ ] 条件单功能
- [ ] 算法交易接口
- [ ] 风控规则配置
- [ ] 交易统计分析

### 3. 策略模块

- [ ] 策略回测系统
- [ ] 参数优化功能
- [ ] 绩效评估报告
- [ ] 策略组合管理

## 待办事项

### 近期计划

1. **性能优化**

   - [ ] 实现行情数据本地缓存
   - [ ] 优化 WebSocket 重连机制
   - [ ] 减少不必要的 Widget 重建
2. **功能完善**

   - [ ] 添加用户注册流程
   - [ ] 实现密码重置功能
   - [ ] 完善错误提示机制
3. **测试覆盖**

   - [ ] 补充单元测试
   - [ ] 添加集成测试
   - [ ] 完善 Golden 测试

### 长期规划

1. **架构优化**

   - [ ] 引入 Clean Architecture
   - [ ] 优化依赖注入系统
   - [ ] 重构状态管理逻辑
2. **新功能开发**

   - [ ] 实现多账户管理
   - [ ] 添加社交功能
   - [ ] 开发策略市场
3. **运维支持**

   - [ ] 完善监控系统
   - [ ] 优化日志记录
   - [ ] 添加性能分析工具

## 项目进度

a. 第一阶段（基础市场数据）：

* 暂时移除 TradingScreen
* 专注于市场数据展示功能
* 完善行情监控功能
* 实现自选股管理

b. 第二阶段（模拟交易）：

* 添加虚拟交易功能
* 实现基础订单管理
* 提供模拟账户余额
* 不涉及实际资金

c. 第三阶段（实盘交易）：

* 完整实现 TradingScreen
* 添加资金安全措施
* 实现实盘交易接口
* 提供完整的订单系统
* 后续规划：
* 完成基础市场数据功能
* 添加用户认证系统
* 实现资金账户管理
* 再考虑交易功能的实现

## 项目结构

```
lib/
├── core/                 # 核心功能
│   ├── constants/       # 应用常量
│   ├── network/         # Dio 客户端
│   └── errors/         # 异常处理
├── data/                # 数据层
│   ├── models/         # Freezed 模型
│   └── repositories/   # 仓库实现
├── domain/              # 领域层
│   ├── repositories/   # 仓库接口
│   └── services/       # 业务服务
└── presentation/        # 表现层
    ├── pages/          # 页面组件
    ├── widgets/        # 可复用组件
    ├── controllers/    # Riverpod 控制器
    └── themes/         # 主题定义
```

## 开发规范

1. **代码风格**

   - 使用 flutter_lints 3.0.1 进行代码检查
   - 遵循 cursorrules 定义的规范
   - 保持一致的命名约定
2. **测试覆盖**

   - Widget 测试使用 flutter_test
   - Golden 测试使用 golden_toolkit
   - Mock 测试使用 mockito
3. **性能优化**

   - 使用 const 构造器减少重建
   - Provider 缓存策略
   - 异步操作正确处理

## 部署说明

1. **环境要求**

   - Flutter SDK >= 3.0.0
   - Dart SDK >= 3.0.0
   - CMake >= 3.10
   - PostgreSQL >= 13
   - Redis >= 6.0
2. **安装步骤**

   ```bash
   # 克隆项目
   git clone https://github.com/your-username/stock_quant_app.git

   # 安装依赖
   flutter pub get

   # 生成代码
   flutter pub run build_runner build --delete-conflicting-outputs

   # 编译 C++ 引擎
   cd trading_engine && mkdir build && cd build
   cmake ..
   make

   # 运行应用
   ./scripts/build.sh
   ```
3. **配置说明**

   - `config/config.json`: 服务器配置
   - `lib/core/constants/app_constants.dart`: 应用常量
   - 环境变量配置参考 `.env.example`

## 许可证

MIT License

## 详细技术实现

### 1. 网络层实现

```dart
// DioClient 封装
class DioClient {
  late final Dio _dio;

  DioClient() {
    _dio = Dio(
      BaseOptions(
        baseUrl: AppConstants.baseUrl,
        connectTimeout: const Duration(milliseconds: AppConstants.connectionTimeout),
        receiveTimeout: const Duration(milliseconds: AppConstants.receiveTimeout),
      ),
    );
  }
}
```

### 2. 状态管理示例

```dart
// 认证状态管理
final authControllerProvider = StateNotifierProvider<AuthController, AuthState>(
  (ref) => AuthController(ref.watch(authRepositoryProvider)),
);

class AuthController extends StateNotifier<AuthState> {
  final AuthRepository _repository;
  
  AuthController(this._repository) : super(const AuthState());
}
```

### 3. 测试实现

```dart
// Widget 测试示例
testWidgets('Market depth widget shows correctly', (WidgetTester tester) async {
  await tester.runAsync(() async {
    await TestHelper.pumpWidgetWithProviders(
      tester,
      const MarketDepth(symbol: 'AAPL'),
    );
  });
});
```

## 开发指南

### 1. 新增功能流程

1. **添加新模型**

```bash
# 创建模型文件
touch lib/data/models/new_model.dart

# 生成 Freezed 代码
flutter pub run build_runner build
```

2. **实现仓库层**

- 创建仓库接口
- 实现具体仓库类
- 注册 Provider

3. **添加控制器**

- 创建状态类
- 实现控制器逻辑
- 注册 Provider

4. **开发 UI 组件**

- 创建 Widget
- 添加测试
- 更新路由配置

### 2. 测试规范

1. **单元测试**

- 测试所有公共方法
- 模拟外部依赖
- 验证边界条件

2. **Widget 测试**

- 测试用户交互
- 验证状态更新
- 检查错误处理

3. **Golden 测试**

- 创建基准图片
- 验证布局变化
- 多设备适配测试

### 3. 错误处理

1. **网络错误**

```dart
Exception _handleError(dynamic error) {
  if (error is DioException) {
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
        return const NetworkException('Connection timeout');
      // ... 其他错误处理
    }
  }
  return Exception('Unknown error');
}
```

2. **业务错误**

```dart
sealed class AppError {
  final String message;
  const AppError(this.message);
}

class AuthError extends AppError {
  const AuthError(super.message);
}
```

## 构建和部署

### 1. 开发环境设置

```bash
# 安装依赖
flutter pub get

# 设置环境变量
cp .env.example .env
vim .env

# 启动开发服务器
./scripts/dev.sh
```

### 2. 生产环境部署

```bash
# 构建发布版本
./scripts/build.sh --release

# 运行数据库迁移
./scripts/migrate.sh

# 启动服务
./scripts/start.sh
```

### 3. CI/CD 配置

```yaml
# .github/workflows/main.yml
name: CI/CD Pipeline
on: [push, pull_request]
jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
      - uses: subosito/flutter-action@v2
      - run: flutter test
      - run: ./scripts/build.sh
```
