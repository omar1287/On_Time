import 'package:on_time/Modules/Attendance_Screen/data/repos/attendence_repo.dart';

import '../../../../core/data/data_providers/remote/dio_helper.dart';

class AttendanceRepoImpl extends AttendanceRepo {
  final DioHelper dioHelper;

  AttendanceRepoImpl(this.dioHelper);

}