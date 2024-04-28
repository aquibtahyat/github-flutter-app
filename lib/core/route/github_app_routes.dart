import 'package:flutter/cupertino.dart';
import 'package:github_flutter_app/core/splash/splash_screen.dart';
import 'package:github_flutter_app/features/repo_list/presentation/screen/repo_list.dart';
import 'package:page_transition/page_transition.dart';

abstract class GithubAppRoutes {
  static const String splash = "/splash";
  static const String repoListScreen = "/repoListScreen";
}

dynamic githubAppRoutes(RouteSettings settings) {
  final arguments = settings.arguments;

  switch (settings.name) {
    case '/':
      return PageTransition(
        type: PageTransitionType.fade,
        settings: const RouteSettings(name: GithubAppRoutes.splash),
        child: const SplashScreen(),
      );

    case GithubAppRoutes.splash:
      return PageTransition(
        type: PageTransitionType.fade,
        settings: const RouteSettings(name: GithubAppRoutes.splash),
        child: const SplashScreen(),
      );

    case GithubAppRoutes.repoListScreen:
      return PageTransition(
        type: PageTransitionType.fade,
        settings: const RouteSettings(name: GithubAppRoutes.repoListScreen),
        child: const RepoListScreen(),
      );
  }
}

class RouteGenerator {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    dynamic page;

    page = githubAppRoutes(settings);
    if (page != null) return page;

    return page;
  }
}
