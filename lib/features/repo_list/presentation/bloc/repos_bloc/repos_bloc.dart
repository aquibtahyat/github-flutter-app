import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:github_flutter_app/core/services/network_service/utils/error_model.dart';
import 'package:github_flutter_app/features/repo_list/domain/entities/repo_entity.dart';
import 'package:github_flutter_app/features/repo_list/domain/usecases/get_repos.dart';
import 'package:github_flutter_app/features/repo_list/presentation/bloc/repos_bloc/repos_events.dart';
import 'package:github_flutter_app/features/repo_list/presentation/bloc/repos_bloc/repos_state.dart';

class ReposBloc extends Bloc<RemoteReposEvents, RemoteReposState> {
  final GetReposUseCase useCase;

  ReposBloc(this.useCase) : super(const ReposLoadingState()) {
    on<GetReposEvent>(onGetRepos);
  }

  void onGetRepos(GetReposEvent event, Emitter<RemoteReposState> emit) async {
    final call = await useCase.call();
    ErrorModel? errorModel;
    List<RepoEntity>? repoList;

    (errorModel, repoList) = call;
    if (errorModel != null) {
      emit(ReposErrorState(errorModel));
    } else if (repoList != null) {
      emit(ReposLoadedState(repoList));
    }
  }
}
