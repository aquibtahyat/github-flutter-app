import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:github_flutter_app/core/constants/constants.dart';
import 'package:github_flutter_app/core/di/setup_di.dart';
import 'package:github_flutter_app/core/route/github_app_routes.dart';
import 'package:github_flutter_app/features/repo_list/presentation/bloc/repos_bloc/repos_bloc.dart';
import 'package:github_flutter_app/features/repo_list/presentation/bloc/repos_bloc/repos_events.dart';

GlobalKey<NavigatorState>? navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatefulWidget {
  MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      useInheritedMediaQuery: true,
      minTextAdapt: true,
      splitScreenMode: true,
      designSize: const Size(393, 852),
      builder: (context, _) {
        return BlocProvider<ReposBloc>(
          create: (context) => getIt()..add(const GetReposEvent()),
          child: MaterialApp(
            navigatorKey: navigatorKey,
            title: 'Github App',
            debugShowCheckedModeBanner: false,
            onGenerateRoute: RouteGenerator.generateRoute,
            builder: (context, child) {
              return Stack(
                alignment: Alignment.center,
                children: [
                  child!,
                ],
              );
            },
            theme: theme(),
          ),
        );
      },
    );
  }
}
