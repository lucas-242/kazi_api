import 'package:kazi_api/src/domain/entities/user.dart';

abstract interface class UserRepository {
  Future<User> create(User user);
  Future<User> update(User user);
  Future<void> delete(int id);
  Future<User?> getById(int id);
  Future<User?> getByEmail(String email);
  Future<List<User>> get({
    int? companyId,
    int? userId,
    UserRole? type,
  });
}
