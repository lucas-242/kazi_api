import 'package:kazi_api/domain/entities/user.dart';

abstract interface class UserService {
  Future<User> createUser(User user);
  Future<User> updateUser(User user);
  Future<void> deleteUser(int id);
  Future<User?> getUserById(int id);
  Future<User?> getUserByEmail(String email);
  Future<List<User>> getUsers({
    int? companyId,
    int? userId,
  });
  Future<bool> validateUserCredentials(String email, String password);
  Future<void> changeUserPassword(int userId, String currentPassword, String newPassword);
  Future<void> resetUserPassword(int userId);
  Future<bool> hasPermission(int userId, String permission);
} 