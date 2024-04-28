import 'package:flutter/material.dart';
import 'package:github_flutter_app/core/route/github_app_routes.dart';

dynamic githubAppRoutes(RouteSettings settings) {
  final arguments = settings.arguments;

  switch (settings.name) {
    case '/':
      return Container();

    case GithubAppRoutes.splash:
      return Container();

    case GithubAppRoutes.repoListScreen:
      return Container();
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
