import 'package:lt/data/models/workout_model.dart';

abstract class WorkoutDao {
  Future<List<WorkoutModel>> getWorkoutById(int userId);
  Future<List<WorkoutModel>> getWorkoutHistoryById(int userId);
}
