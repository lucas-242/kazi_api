import 'package:kazi_api/src/domain/entities/email.dart';
import 'package:kazi_api/src/domain/entities/phone.dart';
import 'package:kazi_api/src/domain/entities/user.dart';
import 'package:vaden/vaden.dart';

@DTO()
class UserDTO {
  const UserDTO({
    this.id,
    required this.name,
    required this.email,
    this.phone,
    this.password,
    this.role,
    this.companyId,
    this.isActive = true,
  });

  factory UserDTO.fromEntity(User user) => UserDTO(
        id: user.id,
        name: user.name,
        email: user.email.emailAddress,
        phone: user.phone?.phoneNumber,
        role: user.role.name,
        companyId: user.companyId,
        isActive: user.isActive,
      );

  final int? id;
  final String name;
  final String email;
  final String? phone;
  final String? password;
  final String? role;
  final int? companyId;
  final bool isActive;

  User toEntity() => User(
        id: id ?? 0,
        name: name,
        email: Email(id: 0, emailAddress: email),
        phone: phone != null ? Phone(id: 0, phoneNumber: phone!) : null,
        password: password ?? '',
        role: UserRole.fromString(role ?? UserRole.selfEmployed.name),
        companyId: companyId,
        isActive: isActive,
      );
}
