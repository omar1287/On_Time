import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:on_time/Modules/Task_Screen/TaskBloc/TaskState.dart';

class TaskCubit extends Cubit<TaskState>{
  TaskCubit():super(IntialTaskState());
  static TaskCubit get(context)=>BlocProvider.of(context);
bool button1=true;
bool button2=false;
bool button3=false;
bool button4=false;
void changeColorButton1(){
  button1=true;
  button2=false;
  button3=false;
  button4=false;
  emit(ChangeColorButton1());
}
  void changeColorButton2(){
    button1=false;
    button2=true;
    button3=false;
    button4=false;
    emit(ChangeColorButton2());
  }
  void changeColorButton3(){
    button1=false;
    button2=false;
    button3=true;
    button4=false;
    emit(ChangeColorButton3());
  }
  void changeColorButton4(){
    button1=false;
    button2=false;
    button3=false;
    button4=true;
    emit(ChangeColorButton4());
  }
}