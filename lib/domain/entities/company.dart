import 'package:kazi_api/domain/entities/email.dart';
import 'package:kazi_api/domain/entities/phone.dart';
import 'package:kazi_api/domain/entities/service_type.dart';
import 'package:kazi_api/domain/entities/special_work_hour.dart';
import 'package:kazi_api/domain/entities/user.dart';
import 'package:kazi_api/domain/entities/work_hour.dart';

class Company {
  const Company({
    required this.id,
    required this.name,
    required this.cnpj,
    this.isActive = true,
    this.emails = const [],
    this.users = const [],
    this.phones = const [],
    this.workHours = const [],
    this.specialWorkHours = const [],
    this.serviceTypes = const [],
  });

  final int id;
  final String name;
  final String cnpj;
  final bool isActive;
  final List<Email> emails;
  final List<User> users;
  final List<Phone> phones;
  final List<WorkHour> workHours;
  final List<SpecialWorkHour> specialWorkHours;
  final List<ServiceType> serviceTypes;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Company &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          name == other.name &&
          cnpj == other.cnpj &&
          isActive == other.isActive &&
          emails == other.emails &&
          users == other.users &&
          phones == other.phones &&
          workHours == other.workHours &&
          specialWorkHours == other.specialWorkHours &&
          serviceTypes == other.serviceTypes;

  @override
  int get hashCode =>
      id.hashCode ^
      name.hashCode ^
      cnpj.hashCode ^
      isActive.hashCode ^
      emails.hashCode ^
      users.hashCode ^
      phones.hashCode ^
      workHours.hashCode ^
      specialWorkHours.hashCode ^
      serviceTypes.hashCode;
}
