import 'package:lt/services/workout/models/exercise.dart';

class Workout {
  late int id;
  String name;
  late List<Exercise> exercises;

  Workout({required this.name});
}
