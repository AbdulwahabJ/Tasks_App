import 'package:hive/hive.dart';

part 'task_model.g.dart';

@HiveType(typeId: 0)
class TaskModel extends HiveObject {
  @HiveField(0)
  final String taskContent;
  @HiveField(1)
  final String startTime;
  @HiveField(2)
  final String endTime;
  @HiveField(3)
  final TaskState taskState;
  @HiveField(4)
  final int taskColor;
  @HiveField(5)
  final DateTime taskDate;

  TaskModel({
    required this.taskContent,
    required this.startTime,
    required this.endTime,
    required this.taskDate,
    required this.taskState,
    required this.taskColor,
  });
}

enum TaskState { upcoming, inPorgress, done }
