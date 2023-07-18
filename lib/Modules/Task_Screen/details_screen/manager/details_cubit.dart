import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

part 'details_state.dart';

class DetailsCubit extends Cubit<DetailsState> {
  DetailsCubit() : super(DetailsInitial());

  SizedBox buildSizedBox(double height) =>  SizedBox(height: height.h,);
  SizedBox buildSizedBoxWidth(double width) =>  SizedBox(width: width.w,);
}
