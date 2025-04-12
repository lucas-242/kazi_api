import 'package:kazi_api/src/domain/entities/service_type.dart';

abstract interface class ServiceTypeRepository {
  Future<ServiceType> create(ServiceType serviceType);
  Future<ServiceType> update(ServiceType serviceType);
  Future<void> deactive(int id);
  Future<ServiceType?> getById(int id);
  Future<List<ServiceType>> get({
    int? companyId,
    int? userId,
  });
}
