import 'package:flutter/material.dart';
import 'package:movie_info_ui/constants.dart';

// Components
import 'package:movie_info_ui/screens/details/components/backdrop_rating.dart';
import 'package:movie_info_ui/screens/details/components/cast_and_crew.dart';
import 'package:movie_info_ui/screens/details/components/genres.dart';
import 'package:movie_info_ui/screens/details/components/title_duration.dart';

// Models
import '../../../models/movie.dart';

class Body extends StatelessWidget {
  const Body({Key? key, required this.movie}) : super(key: key);
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    // Get total height and width of the screen
    Size size = MediaQuery.of(context).size;

    String starIcon = 'assets/icons/star_fill.svg';
    String starOutline = 'assets/icons/star.svg';

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        BackdropAndRating(
          size: size,
          movie: movie,
          starIcon: starIcon,
          starOutline: starOutline,
        ),
        const SizedBox(height: kDefaultPadding / 2),
        TitleDuration(movie: movie),
        Genres(movie: movie),
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: kDefaultPadding / 2,
            horizontal: kDefaultPadding,
          ),
          child: Text(
            'Plot Summary',
            style: Theme.of(context).textTheme.headline5,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Text(
            movie.plot,
            style: const TextStyle(
              color: Color(
                0xFF737599,
              ),
            ),
          ),
        ),
        CastAndCrew(cast: movie.cast),
      ],
    );
  }
}
