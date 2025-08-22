import 'package:workout_diet_check_list_app/data/models/response/user/user_model_class.dart';
import 'package:workout_diet_check_list_app/domain/entity/base_entity.dart';

class UpdateProfileEntity extends BaseEntity {
  final UserModel? userModel;
  const UpdateProfileEntity({
    required super.isSuccess,
    required super.message,
    this.userModel,
  });
}
