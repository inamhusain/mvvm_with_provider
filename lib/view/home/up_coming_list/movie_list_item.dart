import 'package:architecture_demos/models/movies.dart';
import 'package:architecture_demos/res/color.dart';
import 'package:architecture_demos/res/componenets/avaible_poster_path.dart';
import 'package:architecture_demos/res/componenets/not_avaible_photo.dart';
import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  final Results movies;
  const ListItem({
    Key? key,
    required this.movies,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    final width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Stack(children: [
          movies.posterPath!.isEmpty
              ? const NotAvaiblePhoto(
                  height: 20,
                  width: 20,
                )
              : AvaiblePosterPath(
                  height: height, width: width, imageUrl: movies.posterPath!),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: Container(
              height: height * .04,
              width: width * .10,
              decoration: BoxDecoration(
                color: AppColors.redColor,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Center(
                  child: Text(
                "${movies.voteAverage!.roundToDouble()}",
                style: const TextStyle(
                  color: AppColors.whiteColor,
                ),
              )),
            ),
          )
        ]),
      ],
    );
  }
}
