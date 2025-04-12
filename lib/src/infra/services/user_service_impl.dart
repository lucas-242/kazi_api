import 'package:kazi_api/src/domain/entities/user.dart';
import 'package:kazi_api/src/domain/errors/app_error.dart';
import 'package:kazi_api/src/domain/repositories/user_repository.dart';
import 'package:kazi_api/src/domain/services/user_service.dart';

final class UserServiceImpl implements UserService {
  const UserServiceImpl(this._repository);
  final UserRepository _repository;

  @override
  Future<User> create(User user) => _repository.create(user);

  @override
  Future<User> update(User user) => _repository.update(user);

  @override
  Future<void> delete(int id) => _repository.delete(id);

  @override
  Future<User?> getById(int id) => _repository.getById(id);

  @override
  Future<User?> getByEmail(String email) => _repository.getByEmail(email);

  @override
  Future<List<User>> get({int? companyId, int? userId}) =>
      _repository.get(companyId: companyId, userId: userId);

  @override
  Future<bool> validateUserCredentials(String email, String password) async {
    final user = await _repository.getByEmail(email);
    if (user == null) throw const NotFoundError('User not found');
    return user.password == password;
  }

  @override
  Future<void> changePassword(
    int userId,
    String currentPassword,
    String newPassword,
  ) async {
    final user = await _repository.getById(userId);
    if (user == null) throw const NotFoundError('User not found');
    if (user.password != currentPassword) {
      throw const UnauthorizedError('Invalid current password');
    }

    final updatedUser = User(
      id: user.id,
      name: user.name,
      password: newPassword,
      role: user.role,
      companyId: user.companyId,
      isActive: user.isActive,
      email: user.email,
      phone: user.phone,
      serviceTypes: user.serviceTypes,
      employeeServices: user.employeeServices,
      customerServices: user.customerServices,
      scheduledByServices: user.scheduledByServices,
    );

    await _repository.update(updatedUser);
  }

  @override
  Future<void> resetPassword(int userId) async {
    final user = await _repository.getById(userId);
    if (user == null) throw const NotFoundError('User not found');

    final updatedUser = User(
      id: user.id,
      name: user.name,
      password: '123456', // Default password after reset
      role: user.role,
      companyId: user.companyId,
      isActive: user.isActive,
      email: user.email,
      phone: user.phone,
      serviceTypes: user.serviceTypes,
      employeeServices: user.employeeServices,
      customerServices: user.customerServices,
      scheduledByServices: user.scheduledByServices,
    );

    await _repository.update(updatedUser);
  }

  @override
  Future<bool> hasPermission(int userId, String permission) async {
    final user = await _repository.getById(userId);
    if (user == null) throw const NotFoundError('User not found');

    // TODO: Implement permission check based on user role and permission string
    // This is a placeholder implementation
    return user.role == UserRole.admin;
  }
}
