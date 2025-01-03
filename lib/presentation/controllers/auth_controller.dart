import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../data/models/user.dart';
import '../../domain/repositories/auth_repository.dart';
import '../../domain/repositories/auth_repository_provider.dart';

/// Authentication state
sealed class AuthState {
  const AuthState();
}

/// Initial authentication state
class AuthInitial extends AuthState {
  const AuthInitial();
}

/// Loading state
class AuthLoading extends AuthState {
  const AuthLoading();
}

/// Authenticated state with user
class Authenticated extends AuthState {
  final User user;
  const Authenticated(this.user);
}

/// Unauthenticated state
class Unauthenticated extends AuthState {
  const Unauthenticated();
}

/// Error state with message
class AuthError extends AuthState {
  final String message;
  const AuthError(this.message);
}

/// Controller for authentication operations
class AuthController extends StateNotifier<AuthState> {
  final AuthRepository _repository;

  /// Creates a new auth controller
  AuthController(this._repository) : super(const AuthInitial());

  /// Checks current authentication state
  Future<void> checkAuth() async {
    try {
      state = const AuthLoading();
      final user = await _repository.getCurrentUser();
      state = user != null ? Authenticated(user) : const Unauthenticated();
    } catch (e) {
      state = AuthError(e.toString());
    }
  }

  /// Signs in with email and password
  Future<void> signIn(String email, String password) async {
    try {
      state = const AuthLoading();
      final user =
          await _repository.signInWithEmailAndPassword(email, password);
      state = Authenticated(user);
    } catch (e) {
      state = AuthError(e.toString());
    }
  }

  /// Signs up with email and password
  Future<void> signUp(String email, String password) async {
    try {
      state = const AuthLoading();
      final user =
          await _repository.signUpWithEmailAndPassword(email, password);
      state = Authenticated(user);
    } catch (e) {
      state = AuthError(e.toString());
    }
  }

  /// Signs out the current user
  Future<void> signOut() async {
    try {
      state = const AuthLoading();
      await _repository.signOut();
      state = const Unauthenticated();
    } catch (e) {
      state = AuthError(e.toString());
    }
  }

  /// Resets password for email
  Future<void> resetPassword(String email) async {
    try {
      state = const AuthLoading();
      await _repository.resetPassword(email);
      state = const Unauthenticated();
    } catch (e) {
      state = AuthError(e.toString());
    }
  }
}

/// Provider for auth controller
final authControllerProvider =
    StateNotifierProvider<AuthController, AuthState>((ref) {
  return AuthController(ref.watch(authRepositoryProvider));
});
