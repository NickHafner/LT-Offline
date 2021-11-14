import 'package:lt/services/apis/workout_service.dart';
import 'package:lt/services/workout/models/workout.dart';
import 'package:lt/services/workout/models/exercise.dart';

class WorkoutServiceImpl extends WorkoutService {
  WorkoutServiceImpl(Object object);

  @override
  Future<List<Exercise>> getExercises() {
    // TODO: implement getExercises
    throw UnimplementedError();
  }

  @override
  Future<List<Workout>> getWorkoutById(int userId) {
    // TODO: implement getWorkoutById
    throw UnimplementedError();
  }

  @override
  Future<List<Workout>> getWorkoutHistoryById(int userId) {
    // TODO: implement getWorkoutHistoryById
    throw UnimplementedError();
  }
}
