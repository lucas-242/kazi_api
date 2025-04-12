import 'package:kazi_api/src/domain/entities/service.dart';

abstract interface class ServiceRepository {
  Future<Service> create(Service service);
  Future<Service> update(Service service);
  Future<void> cancel(int id);
  Future<Service?> getById(int id);
  Future<List<Service>> get({
    int? employeeId,
    int? customerId,
    int? serviceTypeId,
    DateTime? startDate,
    DateTime? endDate,
  });
}
