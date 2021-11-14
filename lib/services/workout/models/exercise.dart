import 'package:lt/services/workout/models/instruction.dart';

class Exercise {
  int id;
  String name;
  late List<Instruction> instructions;

  Exercise({required this.id, required this.name});
}
