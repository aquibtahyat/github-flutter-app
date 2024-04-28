part of '../screen/repo_list.dart';

class _RepoItemWidget extends StatelessWidget {
  const _RepoItemWidget({Key? key, required this.repo}) : super(key: key);

  final RepoEntity repo;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: ghGreyBorderColor, width: 1.0),
        borderRadius: BorderRadius.circular(8.0),
      ),
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start, // Align text to left
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SvgPicture.asset(
                "images/git_repository.svg",
                color: ghGreyColor,
                width: 16.0,
                height: 16.0,
              ),
              const SizedBox(width: 4.0),
              Text(
                repo.name ?? "",
                style: const TextStyle(color: ghBlueColor, fontSize: 18.0),
              ),
            ],
          ),
          const SizedBox(height: 10.0),
          Text(
            repo.description ?? "",
            maxLines: 2,
            style: const TextStyle(
              fontSize: 14,
              color: ghWhiteColor,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const SizedBox(height: 8.0),
          _RepoTopicsWidget(repo: repo),
          const SizedBox(height: 8.0),
          _RepoInformationWidget(repo: repo),
        ],
      ),
    );
  }
}
