import 'package:kazi_api/src/controllers/dtos/service_dto.dart';
import 'package:kazi_api/src/domain/services/service_service.dart';
import 'package:vaden/vaden.dart';

@Api(tag: 'Service', description: 'Service Controller')
@Controller('/service')
class ServiceController {
  const ServiceController(this._serviceService);
  final ServiceService _serviceService;

  @Post('/')
  Future<Response> create(@Body() ServiceDTO service) async {
    try {
      final response = await _serviceService.create(service.toEntity());
      return Response.ok(response);
    } catch (error) {
      return Response.badRequest();
    }
  }

  @Get('/<id>')
  Future<Response> getById(@Param('id') int id) async {
    try {
      return Response.ok(await _serviceService.getById(id));
    } catch (error) {
      return Response.badRequest();
    }
  }

  @Get('/')
  Future<Response> get() async {
    try {
      return Response.ok(await _serviceService.get());
    } catch (error) {
      return Response.badRequest();
    }
  }

  @Put('/<id>')
  Future<Response> update(
    @Param('id') int id,
    @Body() ServiceDTO service,
  ) async {
    try {
      if (service.id != id) throw Exception('Service not found');

      final response = await _serviceService.update(service.toEntity());
      return Response.ok(response);
    } catch (error) {
      return Response.badRequest();
    }
  }

  @Delete('/<id>')
  Future<Response> delete(@Param('id') int id) async {
    try {
      await _serviceService.cancel(id);
      return Response.ok(null);
    } catch (error) {
      return Response.badRequest();
    }
  }
}
