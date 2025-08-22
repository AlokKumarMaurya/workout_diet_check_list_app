import 'package:workout_diet_check_list_app/domain/entity/auth/login_entity.dart';
import 'package:workout_diet_check_list_app/domain/entity/auth/logout_entity.dart';
import 'package:workout_diet_check_list_app/domain/repo/auth/auth_repo.dart';

class AuthUseCase {
  final AuthRepo _repo;
  const AuthUseCase(this._repo);

  Future<LoginEntity> login() => _repo.login();
  Future<LogoutEntity> logout() => _repo.logout();
}
