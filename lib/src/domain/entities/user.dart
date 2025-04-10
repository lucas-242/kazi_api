import 'package:kazi_api/src/domain/entities/email.dart';
import 'package:kazi_api/src/domain/entities/phone.dart';
import 'package:kazi_api/src/domain/entities/service.dart';
import 'package:kazi_api/src/domain/entities/service_type.dart';

enum UserRole {
  admin,
  manager,
  selfEmployed,
  employee;

  factory UserRole.fromString(String string) {
    switch (string) {
      case 'admin':
        return UserRole.admin;
      case 'manager':
        return UserRole.manager;
      case 'selfEmployed':
        return UserRole.selfEmployed;
      case 'employee':
        return UserRole.employee;
      default:
        throw Exception('Invalid user role: $string');
    }
  }
}

class User {
  const User({
    required this.id,
    required this.name,
    required this.password,
    required this.role,
    // required this.permissionId,
    // this.permission,
    this.companyId,
    // this.company,
    this.isActive = true,
    required this.email,
    this.phone,
    // this.emails = const [],
    // this.phones = const [],
    // this.workHours = const [],
    // this.specialWorkHours = const [],
    this.serviceTypes = const [],
    this.employeeServices = const [],
    this.customerServices = const [],
    this.scheduledByServices = const [],
    // this.specialDiscounts = const [],
  });

  final int id;
  final String name;
  final String password;
  final UserRole role;
  // final int permissionId;
  // final Permission? permission;
  final int? companyId;
  // final Company? company;
  final bool isActive;
  final Email email;
  final Phone? phone;
  // final List<Email> emails;
  // final List<Phone> phones;
  // final List<WorkHour> workHours;
  // final List<SpecialWorkHour> specialWorkHours;
  final List<ServiceType> serviceTypes;
  final List<Service> employeeServices;
  final List<Service> customerServices;
  final List<Service> scheduledByServices;
  // final List<SpecialDiscount> specialDiscounts;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is User &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          name == other.name &&
          password == other.password &&
          role == other.role &&
          // permissionId == other.permissionId &&
          // permission == other.permission &&
          companyId == other.companyId &&
          // company == other.company &&
          isActive == other.isActive &&
          email == other.email &&
          phone == other.phone &&
          // emails == other.emails &&
          // phones == other.phones &&
          // workHours == other.workHours &&
          // specialWorkHours == other.specialWorkHours &&
          serviceTypes == other.serviceTypes &&
          employeeServices == other.employeeServices &&
          customerServices == other.customerServices &&
          scheduledByServices == other.scheduledByServices;
  // specialDiscounts == other.specialDiscounts;

  @override
  int get hashCode =>
      id.hashCode ^
      name.hashCode ^
      password.hashCode ^
      role.hashCode ^
      // permissionId.hashCode ^
      // permission.hashCode ^
      companyId.hashCode ^
      // company.hashCode ^
      isActive.hashCode ^
      email.hashCode ^
      phone.hashCode ^
      // emails.hashCode ^
      // phones.hashCode ^
      // workHours.hashCode ^
      // specialWorkHours.hashCode ^
      serviceTypes.hashCode ^
      employeeServices.hashCode ^
      customerServices.hashCode ^
      scheduledByServices.hashCode;
  // specialDiscounts.hashCode;
}
