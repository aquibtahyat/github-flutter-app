import 'package:github_flutter_app/core/services/network_service/utils/error_model.dart';
import 'package:github_flutter_app/core/services/network_service/utils/request_handler.dart';
import 'package:github_flutter_app/features/repo_list/data/datasources/repo_data_source.dart';
import 'package:github_flutter_app/features/repo_list/data/model/repo_response.dart';
import 'package:github_flutter_app/features/repo_list/domain/repository/repo_repository.dart';

class RepoRepositoryImpl implements RepoRepository {
  RepoRepositoryImpl({required this.dataSource});

  final RepoListDataSourceImpl dataSource;

  @override
  Future<(ErrorModel?, List<RepoModel>?)> getRepos() {
    return dataSource.getRepos().guard((data) {
      return data["items"]
          .map<RepoModel>((item) => RepoModel.fromJson(item))
          .toList();
    });
  }
}
