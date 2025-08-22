import 'package:workout_diet_check_list_app/data/data_source/auth/auth_data_source.dart';
import 'package:workout_diet_check_list_app/domain/entity/auth/login_entity.dart';
import 'package:workout_diet_check_list_app/domain/repo/auth/auth_repo.dart';

import '../../../domain/entity/auth/logout_entity.dart';

class AuthRepoImpl implements AuthRepo {
  final AuthDataSource _dataSource;

  const AuthRepoImpl(this._dataSource);

  @override
  Future<LoginEntity> login() async => (await _dataSource.login()).toEntity();

  @override
  Future<LogoutEntity> logout() async =>
      (await _dataSource.logout()).toEntity();
}
