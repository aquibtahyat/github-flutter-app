import 'package:github_flutter_app/core/services/network_service/utils/error_model.dart';
import 'package:github_flutter_app/features/repo_list/domain/entities/repo_entity.dart';
import 'package:github_flutter_app/features/repo_list/domain/repository/repo_repository.dart';
import 'package:github_flutter_app/features/repo_list/domain/usecases/usecase.dart';

class GetReposUseCase
    implements UseCase<(ErrorModel?, List<RepoEntity>?), void> {
  final RepoRepository repoRepository;
  GetReposUseCase({required this.repoRepository});

  @override
  Future<(ErrorModel?, List<RepoEntity>?)> call({void params}) async {
    return await repoRepository.getRepos();
  }
}
