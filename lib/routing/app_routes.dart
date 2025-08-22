import 'package:get/get.dart';
import 'package:workout_diet_check_list_app/presentation/auth/login/login_view.dart';
import 'package:workout_diet_check_list_app/presentation/dashboard/dashboard_view.dart';
import 'package:workout_diet_check_list_app/presentation/splash/splash_view.dart';
import 'package:workout_diet_check_list_app/presentation/workout/add_edit_workout/add_edit_workout_view.dart';
import 'package:workout_diet_check_list_app/presentation/workout/workout_dashboard/workout_dashboard_view.dart';

import '../presentation/workout/workout_weekly_list/workout_weekly_list_view.dart';

class AppRoutes {
  const AppRoutes._();

  static const String splash = "/";
  static const String login = "/login";
  static const String dashboard = "/dashboard";
  static const String workOutDashboardView = "/workOutDashboardView";
  static const String workoutWeeklyListView = "/workoutWeeklyListView";
  static const String addEditWorkoutView = "/addEditWorkoutWeeklyView";

  static List<GetPage> pages = [
    GetPage(name: splash, page: () => SplashView()),
    GetPage(name: login, page: () => LoginView()),
    GetPage(name: dashboard, page: () => DashboardView()),
    GetPage(name: workOutDashboardView, page: () => WorkOutDashboardView()),
    GetPage(name: workoutWeeklyListView, page: () => WorkoutWeeklyListView()),
    GetPage(name: addEditWorkoutView, page: () => AddEditWorkoutView()),
  ];
}
