import 'package:kazi_api/src/domain/entities/service.dart';
import 'package:kazi_api/src/domain/repositories/service_repository.dart';
import 'package:kazi_api/src/domain/services/service_service.dart';

final class ServiceServiceImpl implements ServiceService {
  const ServiceServiceImpl(this._repository);
  final ServiceRepository _repository;

  @override
  Future<Service> create(Service service) => _repository.create(service);

  @override
  Future<Service> update(Service service) => _repository.update(service);

  @override
  Future<void> cancel(int serviceId) async {
    final service = await _repository.getById(serviceId);
    if (service == null) throw Exception('Service not found');
    await _repository.cancel(serviceId);
  }

  @override
  Future<Service?> getById(int id) => _repository.getById(id);

  @override
  Future<List<Service>> get({
    int? employeeId,
    int? customerId,
    int? serviceTypeId,
    DateTime? startDate,
    DateTime? endDate,
  }) =>
      _repository.get(
        employeeId: employeeId,
        customerId: customerId,
        serviceTypeId: serviceTypeId,
        startDate: startDate,
        endDate: endDate,
      );
}
