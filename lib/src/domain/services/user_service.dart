import 'package:kazi_api/src/domain/entities/user.dart';

abstract interface class UserService {
  Future<User> create(User user);
  Future<User> update(User user);
  Future<void> delete(int id);
  Future<User?> getById(int id);
  Future<User?> getByEmail(String email);
  Future<List<User>> get({int? companyId, int? userId});
  Future<bool> validateUserCredentials(String email, String password);
  Future<void> changePassword(
    int userId,
    String currentPassword,
    String newPassword,
  );
  Future<void> resetPassword(int userId);
  Future<bool> hasPermission(int userId, String permission);
}
