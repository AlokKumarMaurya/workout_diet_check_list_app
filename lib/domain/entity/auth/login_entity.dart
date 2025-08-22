import 'package:workout_diet_check_list_app/data/models/response/user/user_model_class.dart';
import 'package:workout_diet_check_list_app/domain/entity/base_entity.dart';

class LoginEntity extends BaseEntity {
  final UserModel? userCredential;
  const LoginEntity({
    required super.message,
    required super.isSuccess,
    this.userCredential,
  });
}
