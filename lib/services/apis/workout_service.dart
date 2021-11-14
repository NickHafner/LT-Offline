import 'package:lt/services/workout/models/exercise.dart';
import 'package:lt/services/workout/models/workout.dart';

abstract class WorkoutService {
  Future<List<Workout>> getWorkoutById(int userId);
  Future<List<Workout>> getWorkoutHistoryById(int userId);
  Future<List<Exercise>> getExercises();
}
