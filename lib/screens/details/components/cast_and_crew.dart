import 'package:flutter/material.dart';

// Components
import 'package:movie_info_ui/screens/details/components/cast_card.dart';

// Constants
import '../../../constants.dart';

class CastAndCrew extends StatelessWidget {
  const CastAndCrew({Key? key, required this.cast}) : super(key: key);

  final List cast;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Cast & Crew',
            style: Theme.of(context).textTheme.headline5,
          ),
          const SizedBox(
            height: kDefaultPadding / 2,
          ),
          SizedBox(
            height: 160,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: cast.length,
              itemBuilder: (context, index) => CastCard(cast: cast[index]),
            ),
          )
        ],
      ),
    );
  }
}
