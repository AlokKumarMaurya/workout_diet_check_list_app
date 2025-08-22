import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:workout_diet_check_list_app/data/data_source/auth/auth_data_source.dart';
import 'package:workout_diet_check_list_app/data/models/response/auth/login/login_response_model_class.dart';
import 'package:workout_diet_check_list_app/data/models/response/auth/logout/logout_response_model.dart';
import 'package:workout_diet_check_list_app/data/models/response/user/user_model_class.dart';
import 'package:workout_diet_check_list_app/utils/helpers/snack_bar.dart';

import '../../models/response/user/user_cred/user_cred.dart';

class AuthDataSourceImpl implements AuthDataSource {
  final FirebaseAuth _firebaseAuth;

  const AuthDataSourceImpl(this._firebaseAuth);

  @override
  Future<LoginResponseModelClass> login() async {
    try {
      UserCredential res = await _firebaseAuth.signInWithProvider(
        GoogleAuthProvider(),
      );
      (Get.find<FirebaseFirestore>()
              .collection("workout_list")
              .doc(res.user?.email))
          .set({});
      return LoginResponseModelClass(
        userCredential: UserModel(
          userId: res.user!.uid,
          userName: res.user!.displayName ?? "",
          email: res.user!.email ?? "",
          profileImage: res.user?.photoURL ?? "",
          phone: res.user?.phoneNumber ?? "",
          userCredentials: UserCredentials(
            token: res.credential!.token ?? 0,
            accessToken: res.credential!.accessToken ?? "",
            providerId: res.credential!.providerId,
            signInMethod: res.credential!.signInMethod,
          ),
        ),
        message: "Logged IN",
        isSuccess: true,
      );
    } catch (e) {
      return LoginResponseModelClass(message: e.toString(), isSuccess: false);
    }
  }

  @override
  Future<LogoutResponseModel> logout() async {
    try {
      await _firebaseAuth.signOut();
      return LogoutResponseModel(
        isSuccess: true,
        message: "Logged out successfully",
      );
    } catch (e) {
      showSnackBar(message: e.toString(), isError: true);
      return LogoutResponseModel(isSuccess: false, message: e.toString());
    }
  }
}
