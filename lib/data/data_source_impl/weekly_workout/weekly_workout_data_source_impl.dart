import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:workout_diet_check_list_app/data/data_source/weekly_workout/weekly_workout_data_source.dart';
import 'package:workout_diet_check_list_app/data/models/request/workout/work_out_request_model.dart';
import 'package:workout_diet_check_list_app/data/models/response/workout/add_edit_weekly_workout/add_edit_weekly_workout_response_model.dart';
import 'package:workout_diet_check_list_app/data/models/response/workout/weekly_workout_list/weekly_workout_list_response_model.dart';

class WeeklyWorkoutDataSourceImpl implements WeeklyWorkoutDataSource {
  final FirebaseFirestore _firebaseFirestore;
  const WeeklyWorkoutDataSourceImpl(this._firebaseFirestore);

  @override
  Future<AddEditWeeklyWorkoutResponseModel> addNewWorkOut({
    required WorkOutRequestModel request,
    required String email,
  }) async {
    try {
      List data = [];
      try {
        data = (await _firebaseFirestore
            .collection("workout_list")
            .doc(email)
            .get())[request.day.name];
      } catch (_) {}
      await _firebaseFirestore.collection("workout_list").doc(email).update({
        request.day.name: data..add(request.toJson()),
      });
      return AddEditWeeklyWorkoutResponseModel(
        isSuccess: true,
        message: "Workout added successfully",
      );
    } catch (e) {
      return AddEditWeeklyWorkoutResponseModel(
        isSuccess: false,
        message: e.toString(),
      );
    }
  }

  @override
  Future<WeeklyWorkoutListResponseModel> getWeeklyWorkoutList({
    required String email,
  }) async {
    try {
      var res =
          (await _firebaseFirestore.collection("workout_list").doc(email).get())
              .data();
      res!["isSuccess"] = true;
      res["message"] = "Workout list fetched";
      return WeeklyWorkoutListResponseModel.fromJson(res);
    } catch (e) {
      Map<String, dynamic> res = {};
      res["isSuccess"] = false;
      res["message"] = e.toString();
      return WeeklyWorkoutListResponseModel.fromJson(res);
    }
  }
}
