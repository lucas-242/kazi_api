import 'package:kazi_api/src/domain/entities/service_type.dart';

abstract interface class ServiceTypeRepository {
  Future<ServiceType> create(ServiceType serviceType);
  Future<ServiceType> update(ServiceType serviceType);
  Future<void> delete(int id);
  Future<ServiceType?> findById(int id);
  Future<List<ServiceType>> findAll({
    int? companyId,
    int? userId,
  });
}
