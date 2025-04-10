import 'package:kazi_api/domain/entities/service_type.dart';

abstract interface class ServiceTypeService {
  Future<ServiceType> createServiceType(ServiceType serviceType);
  Future<ServiceType> updateServiceType(ServiceType serviceType);
  Future<void> deleteServiceType(int id);
  Future<ServiceType?> getServiceTypeById(int id);
  Future<List<ServiceType>> getAllServiceTypes({
    int? companyId,
    int? userId,
  });
} 