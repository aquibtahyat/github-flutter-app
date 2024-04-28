import 'package:dio/dio.dart';
import 'package:github_flutter_app/core/services/network_service/network/api.dart';
import 'package:github_flutter_app/core/services/network_service/network/rest_client.dart';

abstract class RepoListDataSource {
  Future<Response> getRepos();
}

class RepoListDataSourceImpl implements RepoListDataSource {
  RepoListDataSourceImpl({required this.restClient});
  final RestClient restClient;

  @override
  Future<Response> getRepos() async {
    final response = await restClient.get(APIType.public, API.repositoryUrl);
    return response;
  }
}
