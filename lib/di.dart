import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:workout_diet_check_list_app/data/data_source/auth/auth_data_source.dart';
import 'package:workout_diet_check_list_app/data/data_source/profile/profile_data_source.dart';
import 'package:workout_diet_check_list_app/data/data_source/weekly_workout/weekly_workout_data_source.dart';
import 'package:workout_diet_check_list_app/data/data_source_impl/auth/auth_data_source_impl.dart';
import 'package:workout_diet_check_list_app/data/data_source_impl/profile/profile_data_source_impl.dart';
import 'package:workout_diet_check_list_app/data/data_source_impl/weekly_workout/weekly_workout_data_source_impl.dart';
import 'package:workout_diet_check_list_app/data/repo_impl/auth/auth_repo_impl.dart';
import 'package:workout_diet_check_list_app/data/repo_impl/profile/profile_repo_impl.dart';
import 'package:workout_diet_check_list_app/data/repo_impl/workout/weekly_workout/weekly_workout_repo_impl.dart';
import 'package:workout_diet_check_list_app/domain/repo/auth/auth_repo.dart';
import 'package:workout_diet_check_list_app/domain/repo/profile/profile_repo.dart';
import 'package:workout_diet_check_list_app/domain/repo/weekly_workout/weekly_workout_repo.dart';
import 'package:workout_diet_check_list_app/domain/use_case/auth/auth_use_case.dart';
import 'package:workout_diet_check_list_app/domain/use_case/profile/profile_use_case.dart';
import 'package:workout_diet_check_list_app/domain/use_case/weekly_workout/weekly_workout_use_case.dart';

class AppDi {
  AppDi() {
    _injectDependency();
  }

  Future<void> _injectDependency() async {
    Get.put<FirebaseAuth>(FirebaseAuth.instance);
    Get.put<FirebaseFirestore>(FirebaseFirestore.instance);
    await _injectDataSource();
    await _injectRepo();
    await _injectUseCase();
  }

  Future<void> _injectDataSource() async {
    Get.put<AuthDataSource>(AuthDataSourceImpl(Get.find()));
    Get.put<ProfileDataSource>(ProfileDataSourceImpl(Get.find()));
    Get.put<WeeklyWorkoutDataSource>(WeeklyWorkoutDataSourceImpl(Get.find()));
  }

  Future<void> _injectRepo() async {
    Get.put<AuthRepo>(AuthRepoImpl(Get.find()));
    Get.put<ProfileRepo>(ProfileRepoImpl(Get.find()));
    Get.put<WeeklyWorkoutRepo>(WeeklyWorkoutRepoImpl(Get.find()));
  }

  Future<void> _injectUseCase() async {
    Get.put<AuthUseCase>(AuthUseCase(Get.find()));
    Get.put<ProfileUseCase>(ProfileUseCase(Get.find()));
    Get.put<WeeklyWorkoutUseCase>(WeeklyWorkoutUseCase(Get.find()));
  }
}
