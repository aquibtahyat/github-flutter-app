import 'package:github_flutter_app/core/services/network_service/utils/error_model.dart';
import 'package:github_flutter_app/features/repo_list/domain/entities/repo_entity.dart';

abstract class RepoRepository {
  Future<(ErrorModel?, List<RepoEntity>?)> getRepos();
}
