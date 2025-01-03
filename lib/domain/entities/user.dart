/// Entity class representing a user
class UserEntity {
  /// Unique identifier for the user
  final String id;

  /// User's email address
  final String email;

  /// User's display name
  final String name;

  /// User's avatar URL
  final String? avatarUrl;

  /// Whether the user's email is verified
  final bool isEmailVerified;

  /// User's creation timestamp
  final DateTime createdAt;

  /// Creates a new [UserEntity] instance
  const UserEntity({
    required this.id,
    required this.email,
    required this.name,
    this.avatarUrl,
    required this.isEmailVerified,
    required this.createdAt,
  });
}
