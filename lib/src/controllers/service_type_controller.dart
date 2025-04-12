import 'package:kazi_api/src/controllers/dtos/service_type_dto.dart';
import 'package:kazi_api/src/domain/errors/app_error.dart';
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
    } on AppError catch (error) {
      return error.toResponse();
    }
  }

  @Get('/<id>')
  Future<Response> getById(@Param('id') int id) async {
    try {
      return Response.ok(await _serviceTypeService.getById(id));
    } on AppError catch (error) {
      return error.toResponse();
    }
  }

  @Get('/')
  Future<Response> get() async {
    try {
      return Response.ok(await _serviceTypeService.get());
    } on AppError catch (error) {
      return error.toResponse();
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
    } on AppError catch (error) {
      return error.toResponse();
    }
  }

  @Delete('/<id>')
  Future<Response> delete(@Param('id') int id) async {
    try {
      await _serviceTypeService.deactive(id);
      return Response.ok(null);
    } on AppError catch (error) {
      return error.toResponse();
    }
  }
}
