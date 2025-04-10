import 'package:kazi_api/domain/entities/service_type.dart';
import 'package:kazi_api/domain/entities/user.dart';

class Service {
  const Service({
    required this.id,
    required this.value,
    required this.discountValue,
    required this.scheduledToStartAt,
    required this.scheduledToEndAt,
    this.startedAt,
    this.endedAt,
    this.description,
    required this.serviceTypeId,
    this.serviceType,
    this.isActive = true,
    this.customerId,
    required this.employeeId,
    this.employee,
    required this.scheduledByUserId,
    this.scheduledByUser,
  });

  final int id;
  final double value;
  final double discountValue;
  final DateTime scheduledToStartAt;
  final DateTime scheduledToEndAt;
  final DateTime? startedAt;
  final DateTime? endedAt;
  final String? description;
  final int serviceTypeId;
  final ServiceType? serviceType;
  final bool isActive;
  final int? customerId;
  final int employeeId;
  final User? employee;
  final int scheduledByUserId;
  final User? scheduledByUser;

  double get discountPercent {
    if (value == 0) return 0;
    return (discountValue / value) * 100;
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Service &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          value == other.value &&
          discountValue == other.discountValue &&
          scheduledToStartAt == other.scheduledToStartAt &&
          scheduledToEndAt == other.scheduledToEndAt &&
          startedAt == other.startedAt &&
          endedAt == other.endedAt &&
          description == other.description &&
          serviceTypeId == other.serviceTypeId &&
          serviceType == other.serviceType &&
          isActive == other.isActive &&
          customerId == other.customerId &&
          employeeId == other.employeeId &&
          employee == other.employee &&
          scheduledByUserId == other.scheduledByUserId &&
          scheduledByUser == other.scheduledByUser;

  @override
  int get hashCode =>
      id.hashCode ^
      value.hashCode ^
      discountValue.hashCode ^
      scheduledToStartAt.hashCode ^
      scheduledToEndAt.hashCode ^
      startedAt.hashCode ^
      endedAt.hashCode ^
      description.hashCode ^
      serviceTypeId.hashCode ^
      serviceType.hashCode ^
      isActive.hashCode ^
      customerId.hashCode ^
      employeeId.hashCode ^
      employee.hashCode ^
      scheduledByUserId.hashCode ^
      scheduledByUser.hashCode;
}
