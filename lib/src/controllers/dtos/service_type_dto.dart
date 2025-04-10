import 'package:kazi_api/src/domain/entities/service_type.dart';
import 'package:vaden/vaden.dart';

@DTO()
class ServiceTypeDTO {
  const ServiceTypeDTO({
    this.id,
    required this.name,
    required this.defaultValue,
    required this.discountValue,
    required this.performanceTime,
  });

  factory ServiceTypeDTO.fromEntity(ServiceType serviceType) {
    return ServiceTypeDTO(
      id: serviceType.id,
      name: serviceType.name,
      defaultValue: serviceType.defaultValue,
      discountValue: serviceType.defaultValue,
      performanceTime: serviceType.performanceTime,
    );
  }
  final int? id;
  final String name;
  final double defaultValue;
  final double discountValue;
  final int performanceTime;

  ServiceType toEntity() => ServiceType(
        id: id ?? 0,
        name: name,
        defaultValue: defaultValue,
        discountValue: discountValue,
        performanceTime: performanceTime,
      );
}
