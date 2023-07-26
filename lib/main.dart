import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:on_time/core/bloc_observer.dart';

import 'Modules/Layout/Layout.dart';
import 'core/data/data_providers/local/cache_helper.dart';
import 'core/data/data_providers/remote/dio_helper.dart';
import 'core/utils/app_constant.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  BlocOverrides.runZoned(
          () async {
            DioHelper.init();
            await CacheHelper.init();
            runApp(const MyApp());
          },
  blocObserver: MyBlocObserver(),
  );

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          theme: ThemeData(
            appBarTheme:  const AppBarTheme(
              elevation: 0.0,
              color: AppConstance.primaryColor,
              systemOverlayStyle: SystemUiOverlayStyle(
                statusBarColor: AppConstance.primaryColor,
                statusBarIconBrightness: Brightness.light,
                systemNavigationBarColor: AppConstance.primaryColor
              ),
            ),
          ),
          home: const Layout(),
          debugShowCheckedModeBanner: false,
        );
      }
    );
  }
}


