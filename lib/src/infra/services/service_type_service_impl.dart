import 'package:kazi_api/src/domain/entities/service_type.dart';
import 'package:kazi_api/src/domain/repositories/service_type_repository.dart';
import 'package:kazi_api/src/domain/services/service_type_service.dart';

final class ServiceTypeServiceImpl implements ServiceTypeService {
  const ServiceTypeServiceImpl(this._repository);
  final ServiceTypeRepository _repository;

  @override
  Future<ServiceType> create(ServiceType serviceType) =>
      _repository.create(serviceType);

  @override
  Future<ServiceType> update(ServiceType serviceType) =>
      _repository.update(serviceType);

  @override
  Future<void> deactive(int id) async {
    final serviceType = await _repository.getById(id);
    if (serviceType == null) throw Exception('ServiceType not found');
    await _repository.deactive(id);
  }

  @override
  Future<ServiceType?> getById(int id) => _repository.getById(id);

  @override
  Future<List<ServiceType>> get({int? companyId, int? userId}) =>
      _repository.get(companyId: companyId, userId: userId);
}
