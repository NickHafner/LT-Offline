import 'package:lt/services/core/entities/exercise.dart';
import 'package:lt/services/core/entities/workout.dart';

abstract class WorkoutService {
  Future<List<Workout>> getWorkoutById(int userId);
  Future<List<Workout>> getWorkoutHistoryById(int userId);
  Future<List<Exercise>> getExercises();
}
