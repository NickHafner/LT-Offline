import 'package:lt/data/models/exercise_model.dart';

abstract class ExerciseDao {
  Future<List<ExerciseModel>> getExercises();
}
