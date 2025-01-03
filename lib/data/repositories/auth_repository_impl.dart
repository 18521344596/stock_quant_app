import 'package:stock_quant_app/core/network/dio_client.dart';
import 'package:stock_quant_app/data/models/auth_state.dart';
import 'package:stock_quant_app/data/models/user.dart';
import 'package:stock_quant_app/domain/repositories/auth_repository.dart';

/// Implementation of [AuthRepository]
class AuthRepositoryImpl implements AuthRepository {
  final DioClient _dioClient;

  /// Creates a new auth repository implementation
  const AuthRepositoryImpl(this._dioClient);

  @override
  Stream<AuthState> get authStateChanges => throw UnimplementedError();

  @override
  User? get currentUser => null;

  @override
  Future<void> signInWithEmailAndPassword(String email, String password) async {
    try {
      await _dioClient.post('/auth/login', data: {
        'email': email,
        'password': password,
      });
    } catch (e) {
      throw Exception('Failed to sign in: $e');
    }
  }

  @override
  Future<void> signUpWithEmailAndPassword(String email, String password) async {
    try {
      await _dioClient.post('/auth/register', data: {
        'email': email,
        'password': password,
      });
    } catch (e) {
      throw Exception('Failed to sign up: $e');
    }
  }

  @override
  Future<void> signOut() async {
    try {
      await _dioClient.post('/auth/logout');
    } catch (e) {
      throw Exception('Failed to sign out: $e');
    }
  }

  @override
  Future<void> updateProfile(User user) async {
    try {
      await _dioClient.put('/auth/profile', data: user.toJson());
    } catch (e) {
      throw Exception('Failed to update profile: $e');
    }
  }
}
