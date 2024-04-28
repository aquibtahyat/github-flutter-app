part of '../screen/repo_list.dart';

class _RepoInformationWidget extends StatelessWidget {
  const _RepoInformationWidget({super.key, required this.repo});

  final RepoEntity repo;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(Icons.circle_sharp, color: ghCyanColor, size: 14.0),
        const SizedBox(
          width: 10,
        ),
        Text(
          repo.language ?? "",
          style: const TextStyle(color: ghGreyColor, fontSize: 14.0),
        ),
        const SizedBox(
          width: 10,
        ),
        const Icon(Icons.circle_sharp, color: ghGreyColor, size: 3.0),
        const SizedBox(
          width: 10,
        ),
        const Icon(Icons.star_border_outlined, color: ghGreyColor, size: 18.0),
        const SizedBox(
          width: 6,
        ),
        Text(repo.starGazersCountFormatted(),
            style: const TextStyle(color: ghGreyColor, fontSize: 14.0)),
        const SizedBox(
          width: 10,
        ),
        const Icon(Icons.circle_sharp, color: ghGreyColor, size: 3.0),
        const SizedBox(
          width: 10,
        ),
        Text(repo.updatedAtFormatted(),
            style: const TextStyle(color: ghGreyColor, fontSize: 14.0)),
      ],
    );
  }
}
