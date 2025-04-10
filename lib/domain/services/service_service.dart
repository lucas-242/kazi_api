import 'package:kazi_api/domain/entities/service.dart';

abstract interface class ServiceService {
  Future<Service> scheduleService(Service service);
  Future<Service> updateService(Service service);
  Future<void> cancelService(int serviceId, int userId);
  Future<Service?> getServiceById(int id);
  Future<List<Service>> getServices({
    int? employeeId,
    int? customerId,
    int? serviceTypeId,
    DateTime? startDate,
    DateTime? endDate,
  });
} 