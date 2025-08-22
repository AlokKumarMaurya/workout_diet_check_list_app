import 'package:workout_diet_check_list_app/domain/entity/auth/login_entity.dart';
import 'package:workout_diet_check_list_app/domain/entity/auth/logout_entity.dart';

abstract class AuthRepo {
  Future<LoginEntity> login();
  Future<LogoutEntity> logout();
}
