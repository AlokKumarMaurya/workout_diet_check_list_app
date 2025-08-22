import 'package:workout_diet_check_list_app/data/models/request/profile/update_profile/update_profile_request.dart';
import 'package:workout_diet_check_list_app/domain/entity/profile/update_profile_entity.dart';
import 'package:workout_diet_check_list_app/domain/repo/profile/profile_repo.dart';

class ProfileUseCase {
  final ProfileRepo _repo;
  const ProfileUseCase(this._repo);

  Future<UpdateProfileEntity> updateProfile({
    required UpdateProfileRequestModel request,
  }) => _repo.updateProfile(request: request);
}
