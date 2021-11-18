import 'package:lt/services/core/entities/exercise.dart';

class Workout {
  final int id;
  String name;
  late List<Exercise> exercises;

  Workout({required this.id, required this.name});
}
