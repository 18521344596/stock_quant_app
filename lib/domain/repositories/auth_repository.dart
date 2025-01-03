import 'package:stock_quant_app/data/models/auth_state.dart';
import 'package:stock_quant_app/data/models/user.dart';

/// Repository interface for authentication operations
abstract class AuthRepository {
  /// Gets current authentication state
  Stream<AuthState> get authStateChanges;

  /// Gets current user
  User? get currentUser;

  /// Signs in with email and password
  Future<void> signInWithEmailAndPassword(String email, String password);

  /// Signs up with email and password
  Future<void> signUpWithEmailAndPassword(String email, String password);

  /// Signs out the current user
  Future<void> signOut();

  /// Updates user profile
  Future<void> updateProfile(User user);
}
