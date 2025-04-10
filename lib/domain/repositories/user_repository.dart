import 'package:kazi_api/domain/entities/user.dart';

abstract interface class UserRepository {
  Future<User> create(User user);
  Future<User> update(User user);
  Future<void> delete(int id);
  Future<User?> findById(int id);
  Future<User?> findByEmail(String email);
  Future<List<User>> findAll({
    int? companyId,
    int? userId,
    UserType? type,
  });
} 