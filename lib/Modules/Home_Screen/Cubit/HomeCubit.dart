
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:on_time/Modules/Home_Screen/Cubit/HomeState.dart';

class HomeCubit extends Cubit<HomeState>{
  HomeCubit():super(InatialHomeState());
  static HomeCubit get(context)=>BlocProvider.of(context);
  bool changeColorButtonChick=true;
  DateTime ?date;
  DateTime ?date2;
  bool  checkOutDate=false;
  bool  checkInDate=false;
  int count =0;

  void changeColor(){
    count++;
   if(count<=2){
     changeColorButtonChick=!changeColorButtonChick;
     if(changeColorButtonChick){
       checkOutDate=true;
       date2=DateTime.now();

     }
     if(!changeColorButtonChick){
       checkInDate=true;
       date=DateTime.now() ;
     }
if(changeColorButtonChick && !changeColorButtonChick){}
     emit(ChangeColorChickIn());
   }
  }


}