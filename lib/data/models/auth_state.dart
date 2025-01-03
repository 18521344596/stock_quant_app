import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stock_quant_app/data/models/user.dart';

part 'auth_state.freezed.dart';

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

/// 认证状态数据类
@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    @Default(AuthStatus.initial) AuthStatus status,
    User? user,
    @Default(false) bool isLoading,
    String? error,
  }) = _AuthState;
}
