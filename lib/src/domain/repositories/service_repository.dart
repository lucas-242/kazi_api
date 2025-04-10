import 'package:kazi_api/src/domain/entities/service.dart';

abstract interface class ServiceRepository {
  Future<Service> create(Service service);
  Future<Service> update(Service service);
  Future<void> delete(int id);
  Future<Service?> findById(int id);
  Future<List<Service>> findAll({
    int? employeeId,
    int? customerId,
    int? serviceTypeId,
    DateTime? startDate,
    DateTime? endDate,
  });
}
