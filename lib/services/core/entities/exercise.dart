import 'package:lt/services/core/entities/instruction.dart';

class Exercise {
  int id;
  String name;
  late List<Instruction> instructions;

  Exercise({required this.id, required this.name});
}
