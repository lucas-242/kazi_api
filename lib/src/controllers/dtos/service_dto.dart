import 'package:kazi_api/src/domain/entities/service.dart';
import 'package:vaden/vaden.dart' as v;

@v.DTO()
class ServiceDTO {
  const ServiceDTO({
    this.id,
    required this.value,
    required this.discountValue,
    required this.scheduledToStartAt,
    required this.scheduledToEndAt,
    required this.serviceTypeId,
    required this.employeeId,
    required this.scheduledByUserId,
  });

  factory ServiceDTO.fromEntity(Service service) => ServiceDTO(
        id: service.id,
        value: service.value,
        discountValue: service.discountValue,
        scheduledToStartAt: service.scheduledToStartAt,
        scheduledToEndAt: service.scheduledToEndAt,
        serviceTypeId: service.serviceTypeId,
        employeeId: service.employeeId,
        scheduledByUserId: service.scheduledByUserId,
      );

  final int? id;
  final double value;
  final double discountValue;
  final DateTime scheduledToStartAt;
  final DateTime scheduledToEndAt;
  final int serviceTypeId;
  final int employeeId;
  final int scheduledByUserId;

  Service toEntity() => Service(
        id: id ?? 0,
        value: value,
        discountValue: discountValue,
        scheduledToStartAt: scheduledToStartAt,
        scheduledToEndAt: scheduledToEndAt,
        serviceTypeId: serviceTypeId,
        employeeId: employeeId,
        scheduledByUserId: scheduledByUserId,
      );
}
