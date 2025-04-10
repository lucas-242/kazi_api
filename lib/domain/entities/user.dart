import 'package:kazi_api/domain/entities/company.dart';
import 'package:kazi_api/domain/entities/email.dart';
import 'package:kazi_api/domain/entities/permission.dart';
import 'package:kazi_api/domain/entities/phone.dart';
import 'package:kazi_api/domain/entities/service.dart';
import 'package:kazi_api/domain/entities/service_type.dart';
import 'package:kazi_api/domain/entities/special_discount.dart';
import 'package:kazi_api/domain/entities/special_work_hour.dart';
import 'package:kazi_api/domain/entities/work_hour.dart';

enum UserType { admin, manager, selfEmployed, employee }

class User {
  const User({
    required this.id,
    required this.name,
    required this.password,
    required this.userType,
    required this.permissionId,
    this.permission,
    this.companyId,
    this.company,
    this.isActive = true,
    this.emails = const [],
    this.phones = const [],
    this.workHours = const [],
    this.specialWorkHours = const [],
    this.serviceTypes = const [],
    this.employeeServices = const [],
    this.customerServices = const [],
    this.scheduledByServices = const [],
    this.specialDiscounts = const [],
  });

  final int id;
  final String name;
  final String password;
  final UserType userType;
  final int permissionId;
  final Permission? permission;
  final int? companyId;
  final Company? company;
  final bool isActive;
  final List<Email> emails;
  final List<Phone> phones;
  final List<WorkHour> workHours;
  final List<SpecialWorkHour> specialWorkHours;
  final List<ServiceType> serviceTypes;
  final List<Service> employeeServices;
  final List<Service> customerServices;
  final List<Service> scheduledByServices;
  final List<SpecialDiscount> specialDiscounts;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is User &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          name == other.name &&
          password == other.password &&
          userType == other.userType &&
          permissionId == other.permissionId &&
          permission == other.permission &&
          companyId == other.companyId &&
          company == other.company &&
          isActive == other.isActive &&
          emails == other.emails &&
          phones == other.phones &&
          workHours == other.workHours &&
          specialWorkHours == other.specialWorkHours &&
          serviceTypes == other.serviceTypes &&
          employeeServices == other.employeeServices &&
          customerServices == other.customerServices &&
          scheduledByServices == other.scheduledByServices &&
          specialDiscounts == other.specialDiscounts;

  @override
  int get hashCode =>
      id.hashCode ^
      name.hashCode ^
      password.hashCode ^
      userType.hashCode ^
      permissionId.hashCode ^
      permission.hashCode ^
      companyId.hashCode ^
      company.hashCode ^
      isActive.hashCode ^
      emails.hashCode ^
      phones.hashCode ^
      workHours.hashCode ^
      specialWorkHours.hashCode ^
      serviceTypes.hashCode ^
      employeeServices.hashCode ^
      customerServices.hashCode ^
      scheduledByServices.hashCode ^
      specialDiscounts.hashCode;
}
