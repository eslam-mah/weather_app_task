import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_app_task/core/config/router.dart';
import 'package:weather_app_task/features/weather_page/view%20model/bloc/get_weather_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) {
        return MaterialApp.router(
          routerConfig: Rout.router,
          debugShowCheckedModeBanner: false,
          builder: (context, child) {
            return BlocProvider(
              create: (context) => GetWeatherBloc(),
              child: child!,
            );
          },
        );
      },
    );
  }
}
