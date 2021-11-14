import 'package:get_it/get_it.dart';
import 'package:lt/services/apis/workout_service.dart';
import 'package:lt/services/workout/fake_workout_service_impl.dart';
import 'package:lt/pages/stores/workout_store.dart';

final sl = GetIt.instance;

void init() {
  sl.registerFactory(() => WorkoutStore(sl()));

  sl.registerLazySingleton<WorkoutService>(
      () => FakeWorkoutServiceImpl(exerciseDao: sl(), workoutDao: sl()));
}
