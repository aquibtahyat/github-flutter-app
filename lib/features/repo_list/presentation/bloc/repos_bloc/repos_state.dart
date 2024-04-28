import 'package:equatable/equatable.dart';
import 'package:github_flutter_app/core/services/network_service/utils/error_model.dart';
import 'package:github_flutter_app/features/repo_list/domain/entities/repo_entity.dart';

abstract class RemoteReposState extends Equatable {
  final List<RepoEntity>? repoList;
  final ErrorModel? error;

  const RemoteReposState({
    this.repoList,
    this.error,
  });

  @override
  List<Object?> get props => [repoList, error];
}

class ReposLoadingState extends RemoteReposState {
  const ReposLoadingState();
}

class ReposLoadedState extends RemoteReposState {
  const ReposLoadedState(
    List<RepoEntity> repoList,
  ) : super(repoList: repoList);
}

class ReposErrorState extends RemoteReposState {
  const ReposErrorState(
    ErrorModel error,
  ) : super(error: error);
}
