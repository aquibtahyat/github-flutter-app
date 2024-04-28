import 'package:get_it/get_it.dart';
import 'package:github_flutter_app/core/services/network_service/network/api.dart';
import 'package:github_flutter_app/core/services/network_service/network/rest_client.dart';
import 'package:github_flutter_app/features/repo_list/data/datasources/repo_data_source.dart';
import 'package:github_flutter_app/features/repo_list/data/repository/repo_repository_impl.dart';
import 'package:github_flutter_app/features/repo_list/domain/repository/repo_repository.dart';
import 'package:github_flutter_app/features/repo_list/domain/usecases/get_repos.dart';
import 'package:github_flutter_app/features/repo_list/presentation/bloc/repos_bloc/repos_bloc.dart';

final getIt = GetIt.instance;

Future<void> setupDi() async {
  _setupRestClient();

  getIt.registerSingleton<RepoListDataSourceImpl>(
      RepoListDataSourceImpl(restClient: getIt<RestClient>()));

  getIt.registerSingleton<RepoRepository>(
      RepoRepositoryImpl(dataSource: getIt()));
  getIt.registerSingleton<GetReposUseCase>(
      GetReposUseCase(repoRepository: getIt()));

  getIt.registerFactory<ReposBloc>(() => ReposBloc(getIt()));
}

_setupRestClient() {
  getIt.registerSingleton<RestClient>(RestClient(baseUrl: API.baseUrl));
}
