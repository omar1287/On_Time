import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'auth_presentation/resources/routes_manager.dart';
import 'core/bloc_observer.dart';
import 'core/data/data_providers/local/cache_helper.dart';
import 'core/data/data_providers/remote/dio_helper.dart';

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
          theme: ThemeData(),
          debugShowCheckedModeBanner: false,
          onGenerateRoute: RouteGenerator.getRoute,
          initialRoute: Routes.splashRoute,
        );
      }
    );
  }
}


