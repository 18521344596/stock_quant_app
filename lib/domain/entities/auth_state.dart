import 'package:stock_quant_app/domain/entities/user.dart';

/// 认证状态枚举
enum AuthStatus {
  /// 初始状态
  initial,

  /// 已认证
  authenticated,

  /// 未认证
  unauthenticated,

  /// 错误状态
  error,
}

/// 认证状态实体类
class AuthStateEntity {
  final AuthStatus status;
  final UserEntity? user;
  final bool isLoading;
  final String? error;

  const AuthStateEntity({
    this.status = AuthStatus.initial,
    this.user,
    this.isLoading = false,
    this.error,
  });
}
