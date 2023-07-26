import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:on_time/Modules/Attendance_Screen/Attendance_Screen.dart';
import 'package:on_time/Modules/Chat_Screen/Chat_Screen.dart';
import 'package:on_time/Modules/Home_Screen/Home_Screen.dart';
import 'package:on_time/Modules/Layout/Bloc_Layout/State.dart';
import 'package:on_time/Modules/More_Screen/More_Screen.dart';

import '../../to_do_list/to_do_list.dart';

class LayerBloc extends Cubit<LayoutState>{

  LayerBloc():super(IntialState());
  static LayerBloc get(context) => BlocProvider.of(context);
  int currentIndex=0;
  void changeCurrentIndex(int index){
    currentIndex=index;
    emit(ChangeBottunNavBarState());

  }
List<Widget> screens=[
  const Home(),
  const Chat(),
  const ToDoList(),
  const Attendance(),
  const More(),
];
  void changeScreenTask(){
    currentIndex=2;
    emit(ChangeScreenTaskState());
  }
}