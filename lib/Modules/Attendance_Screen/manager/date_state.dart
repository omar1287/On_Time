part of 'date_cubit.dart';

@immutable
abstract class DateState {}

class DateInitial extends DateState {}

class DateRangeSelected extends DateState {}
class DateSelected  extends DateState {}
