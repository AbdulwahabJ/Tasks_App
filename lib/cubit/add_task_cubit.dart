import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:tasks_app/constant.dart';

import '../models/task_model.dart';

part 'add_task_state.dart';

class AddTaskCubit extends Cubit<AddTaskState> {
  AddTaskCubit() : super(AddTaskInitial());

  addTask(TaskModel task) async {
    //
    emit(AddTaskLoding());
    //
    try {
      var taskBox = Hive.box(kTaskBox);
      emit(AddTaskSuccess());

      await taskBox.add(task);
      //
    } on Exception catch (e) {
      emit(AddTaskFailure(e.toString()));
    }
  }
}
