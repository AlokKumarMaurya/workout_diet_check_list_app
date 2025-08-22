import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:workout_diet_check_list_app/data/data_source/profile/profile_data_source.dart';
import 'package:workout_diet_check_list_app/data/models/response/profile/update_profile/update_profile_response_model.dart';

import '../../models/request/profile/update_profile/update_profile_request.dart';

class ProfileDataSourceImpl implements ProfileDataSource {
  final FirebaseFirestore _firebaseFirestore;
  const ProfileDataSourceImpl(this._firebaseFirestore);

  @override
  Future<UpdateProfileResponseModel> updateProfile({
    required UpdateProfileRequestModel request,
  }) async {
    try {
      await _firebaseFirestore
          .collection("users")
          .doc(request.email)
          .set(request.toJson());
      return UpdateProfileResponseModel(
        message: "Profile updated successfully",
        isSuccess: true,
      );
    } catch (e) {
      return UpdateProfileResponseModel(
        message: e.toString(),
        isSuccess: false,
      );
    }
  }
}
