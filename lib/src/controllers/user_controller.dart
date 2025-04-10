import 'package:kazi_api/src/controllers/dtos/user_dto.dart';
import 'package:kazi_api/src/domain/services/user_service.dart';
import 'package:vaden/vaden.dart';

@Api(tag: 'User', description: 'User Controller')
@Controller('/user')
class UserController {
  const UserController(this._userService);
  final UserService _userService;

  @Post('/')
  Future<Response> create(@Body() UserDTO user) async {
    try {
      final response = await _userService.create(user.toEntity());
      return Response.ok(response);
    } catch (error) {
      return Response.badRequest();
    }
  }

  @Get('/<id>')
  Future<Response> getById(@Param('id') int id) async {
    try {
      return Response.ok(await _userService.getById(id));
    } catch (error) {
      return Response.badRequest();
    }
  }

  @Get('/')
  Future<Response> get() async {
    try {
      return Response.ok(await _userService.get());
    } catch (error) {
      return Response.badRequest();
    }
  }

  @Put('/<id>')
  Future<Response> update(@Param('id') int id, @Body() UserDTO user) async {
    try {
      if (user.id != id) throw Exception('User not found');

      final response = await _userService.update(user.toEntity());
      return Response.ok(response);
    } catch (error) {
      return Response.badRequest();
    }
  }

  @Delete('/<id>')
  Future<Response> delete(@Param('id') int id) async {
    try {
      await _userService.delete(id);
      return Response.ok(null);
    } catch (error) {
      return Response.badRequest();
    }
  }

  // @Post('/login')
  // Future<Response> authenticateUser(
  //   @Body() String email,
  //   String password,
  // ) async {
  //   try {
  //     final isValid =
  //         await _userService.validateUserCredentials(email, password);
  //     if (!isValid) throw Exception('Not valid credentials');

  //     return Response.ok(await _userService.getByEmail(email));
  //   } catch (error) {
  //     return Response.badRequest();
  //   }
  // }

  // @Post('/change-password')
  // Future<Response> changePassword(
  //   int userId,
  //   String oldPassword,
  //   String newPassword,
  // ) async {
  //   try {
  //     await _userService.changeUserPassword(userId, oldPassword, newPassword);
  //     return Response.ok(null);
  //   } catch (error) {
  //     return Response.badRequest();
  //   }
  // }

  // @Post('/reset-password')
  // Future<Response> resetPassword(@Body() int userId) async {
  //   try {
  //     await _userService.resetUserPassword(userId);
  //     return Response.ok(null);
  //   } catch (error) {
  //     return Response.badRequest();
  //   }
  // }
}
