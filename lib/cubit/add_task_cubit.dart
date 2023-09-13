import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../models/task_model.dart';

part 'add_task_state.dart';

class AddTaskCubit extends Cubit<AddTaskState>{
  AddTaskCubit() : super(AddTaskInitial());

  addTask(TaskModel task){
    
  }
}
