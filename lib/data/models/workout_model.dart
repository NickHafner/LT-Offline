import 'package:lt/services/core/entities/workout.dart';

class WorkoutModel extends Workout {
  WorkoutModel({required int id, required String name})
      : super(name: name, id: id);
}
