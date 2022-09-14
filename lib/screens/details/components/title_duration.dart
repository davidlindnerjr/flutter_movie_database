import 'package:flutter/material.dart';

// Constants
import '../../../constants.dart';

// Models
import '../../../models/movie.dart';

class TitleDuration extends StatelessWidget {
  const TitleDuration({
    Key? key,
    required this.movie,
  }) : super(key: key);

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kDefaultPadding),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  movie.title,
                  style: Theme.of(context).textTheme.headline5,
                ),
                const SizedBox(
                  height: kDefaultPadding / 2,
                ),
                Row(
                  children: <Widget>[
                    Text(
                      '${movie.year}',
                      style: const TextStyle(color: kTextLightColor),
                    ),
                    const SizedBox(
                      width: kDefaultPadding / 2,
                    ),
                    const Text(
                      'PG-13',
                      style: TextStyle(color: kTextLightColor),
                    ),
                    const SizedBox(
                      width: kDefaultPadding / 2,
                    ),
                    const Text(
                      '2hr 32min',
                      style: TextStyle(color: kTextLightColor),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 64,
            width: 64,
            child: TextButton(
              child: const Icon(Icons.add, size: 28, color: Colors.blue),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
