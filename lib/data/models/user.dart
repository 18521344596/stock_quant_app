import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

/// Data model for user information
@freezed
class User with _$User {
  /// Creates a new user model
  const factory User({
    required String id,
    required String email,
    required String name,
    required DateTime createdAt,
  }) = _User;

  /// Creates a User from JSON
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
