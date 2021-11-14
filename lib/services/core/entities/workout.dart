import 'package:lt/services/core/entities/exercise.dart';

class Workout {
  late int id;
  String name;
  late List<Exercise> exercises;

  Workout({required this.name});
}
