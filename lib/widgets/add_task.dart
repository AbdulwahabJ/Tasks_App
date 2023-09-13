import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:tasks_app/cubit/add_task_cubit.dart';
import '../constant.dart';
import 'add_task_body.dart';

class AddTask extends StatefulWidget {
  const AddTask({super.key});

  @override
  State<AddTask> createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: const BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(45), topRight: Radius.circular(45)),
        ),
        //
        child: BlocConsumer<AddTaskCubit, AddTaskState>(
          listener: (context, state) {
            if (state is AddTaskFailure) {
              print('failled ${state.errmessage}');
            }
            if (state is AddTaskSuccess) {
              Navigator.pop(context);
            }
          },
          builder: (context, state) {
            return ModalProgressHUD(
              inAsyncCall: state is AddTaskLoding ? true : false,
              child: const AddTaskBody(),
            );
          },
        ),
      ),
    );
  }
}
