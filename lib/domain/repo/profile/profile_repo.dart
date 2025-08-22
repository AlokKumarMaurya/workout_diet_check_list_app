import 'package:workout_diet_check_list_app/data/models/request/profile/update_profile/update_profile_request.dart';
import 'package:workout_diet_check_list_app/domain/entity/profile/update_profile_entity.dart';

abstract class ProfileRepo {
  Future<UpdateProfileEntity> updateProfile({
    required UpdateProfileRequestModel request,
  });
}
