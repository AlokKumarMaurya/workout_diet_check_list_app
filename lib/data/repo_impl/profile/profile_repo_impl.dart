import 'package:workout_diet_check_list_app/data/data_source/profile/profile_data_source.dart';
import 'package:workout_diet_check_list_app/data/models/request/profile/update_profile/update_profile_request.dart';
import 'package:workout_diet_check_list_app/domain/repo/profile/profile_repo.dart';

import '../../../domain/entity/profile/update_profile_entity.dart';

class ProfileRepoImpl implements ProfileRepo {
  final ProfileDataSource _dataSource;
  const ProfileRepoImpl(this._dataSource);

  @override
  Future<UpdateProfileEntity> updateProfile({
    required UpdateProfileRequestModel request,
  }) async => (await _dataSource.updateProfile(request: request)).toEntity();
}
