import 'package:workout_diet_check_list_app/data/models/response/auth/login/login_response_model_class.dart';
import 'package:workout_diet_check_list_app/data/models/response/auth/logout/logout_response_model.dart';

abstract class AuthDataSource{
  Future<LoginResponseModelClass> login();
  Future<LogoutResponseModel> logout();
}