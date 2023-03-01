import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_app_bloc_pattern/blocs/app_bloc.dart';
import 'package:movie_app_bloc_pattern/repository/respsitary.dart';
import 'package:movie_app_bloc_pattern/view/navigation_screen.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 990),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: MultiBlocProvider(
              providers: [
                BlocProvider<MovieBloc>(
                  create: (BuildContext context) =>
                      MovieBloc(MovieRepository()),
                ),
              ],
              child: NavigationBarScreen(),
            ),
          );
        });
  }
}
