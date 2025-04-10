import 'package:kazi_api/src/controllers/dtos/service_type_dto.dart';
import 'package:kazi_api/src/domain/services/service_type_service.dart';
import 'package:vaden/vaden.dart';

@Api(tag: 'ServiceType', description: 'ServiceType Controller')
@Controller('/service-type')
class ServiceTypeController {
  const ServiceTypeController(this._serviceTypeService);
  final ServiceTypeService _serviceTypeService;

  @Post('/')
  Future<Response> create(@Body() ServiceTypeDTO serviceType) async {
    try {
      final response = await _serviceTypeService.create(serviceType.toEntity());
      return Response.ok(response);
    } catch (error) {
      return Response.badRequest();
    }
  }

  @Get('/<id>')
  Future<Response> getById(@Param('id') int id) async {
    try {
      return Response.ok(await _serviceTypeService.getById(id));
    } catch (error) {
      return Response.badRequest();
    }
  }

  @Get('/')
  Future<Response> get() async {
    try {
      return Response.ok(await _serviceTypeService.get());
    } catch (error) {
      return Response.badRequest();
    }
  }

  @Put('/<id>')
  Future<Response> update(
    @Param('id') int id,
    @Body() ServiceTypeDTO serviceType,
  ) async {
    try {
      if (serviceType.id != id) throw Exception('ServiceType not found');

      final response = await _serviceTypeService.update(serviceType.toEntity());
      return Response.ok(response);
    } catch (error) {
      return Response.badRequest();
    }
  }

  @Delete('/<id>')
  Future<Response> delete(@Param('id') int id) async {
    try {
      await _serviceTypeService.delete(id);
      return Response.ok(null);
    } catch (error) {
      return Response.badRequest();
    }
  }
}
