import 'package:on_time/Modules/Attendance_Screen/data/repos/attendence_repo.dart';

import '../../../../core/data/data_providers/remote/dio_helper.dart';

class AttendenceRepoImpl extends AttendenceRepo {
  final DioHelper dioHelper;

  AttendenceRepoImpl(this.dioHelper);

}