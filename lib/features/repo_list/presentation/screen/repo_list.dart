import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:github_flutter_app/core/constants/constants.dart';
import 'package:github_flutter_app/features/repo_list/domain/entities/repo_entity.dart';
import 'package:github_flutter_app/features/repo_list/presentation/bloc/repos_bloc/repos_bloc.dart';
import 'package:github_flutter_app/features/repo_list/presentation/bloc/repos_bloc/repos_state.dart';

part '../widget/repo_information_widget.dart';
part '../widget/repo_item_widget.dart';
part '../widget/repo_topics_widget.dart';

class RepoListScreen extends StatelessWidget {
  const RepoListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Repositories'),
      ),
      body: _listBody(context),
    );
  }

  _listBody(BuildContext context) {
    return BlocBuilder<ReposBloc, RemoteReposState>(
        builder: (BuildContext context, RemoteReposState state) {
      if (state is ReposLoadingState) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      } else if (state is ReposErrorState) {
        return Center(
          child: Text(
            state.error?.message ?? "something went wrong",
            style: const TextStyle(color: ghWhiteColor),
          ),
        );
      } else if (state is ReposLoadedState) {
        return Padding(
          padding: const EdgeInsets.all(8),
          child: ListView.separated(
              physics: const BouncingScrollPhysics(),
              shrinkWrap: true,
              itemCount: state.repoList?.length ?? 0,
              itemBuilder: (context, index) {
                return _RepoItemWidget(repo: state.repoList![index]);
              },
              separatorBuilder: (context, index) => const SizedBox(
                    height: 10,
                  )),
        );
      } else {
        return Container();
      }
    });
  }
}
