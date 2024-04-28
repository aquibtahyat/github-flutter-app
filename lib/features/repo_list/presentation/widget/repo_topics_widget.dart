part of '../screen/repo_list.dart';

class _RepoTopicsWidget extends StatelessWidget {
  const _RepoTopicsWidget({super.key, required this.repo});

  final RepoEntity repo;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.0, // Adjust height as needed
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: repo.topics?.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4.0),
            child: Chip(
              backgroundColor: ghBlueColorLight,
              label: Text(
                repo.topics?[index] ?? "",
                style: const TextStyle(color: ghBlueColor),
              ),
              side: const BorderSide(color: ghBlueColorLight),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.0), // Adjust curvature
              ),
            ),
          );
        },
      ),
    );
  }
}
