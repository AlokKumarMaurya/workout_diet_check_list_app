import 'package:workout_diet_check_list_app/data/models/request/profile/update_profile/update_profile_request.dart';
import 'package:workout_diet_check_list_app/data/models/response/profile/update_profile/update_profile_response_model.dart';

abstract class ProfileDataSource {
  Future<UpdateProfileResponseModel> updateProfile({
    required UpdateProfileRequestModel request,
  });
}
