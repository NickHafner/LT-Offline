import 'package:lt/data/dao/workout_dao.dart';
import 'package:lt/services/apis/workout_service.dart';
import 'package:lt/services/core/entities/workout.dart';
import 'package:lt/services/core/entities/exercise.dart';

import 'package:lt/data/dao/exercise_dao.dart';

class WorkoutServiceImpl extends WorkoutService {
  final ExerciseDao exerciseDao;
  final WorkoutDao workoutDao;

  WorkoutServiceImpl({required this.exerciseDao, required this.workoutDao});

  @override
  Future<List<Exercise>> getExercises() {
    return exerciseDao.getExercises();
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
