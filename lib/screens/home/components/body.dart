import 'package:flutter/material.dart';

// Constants
import 'package:movie_info_ui/constants.dart';

// Components
import 'categories_list.dart';
import '../components/genres.dart';
import 'package:movie_info_ui/screens/home/components/movie_carousel.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      // Adding the scroll view will make sure we can scroll on small devices
      child: Column(
        children: const <Widget>[
          CategoryList(),
          Genres(),
          SizedBox(height: kDefaultPadding),
          MovieCarousel(),
        ],
      ),
    );
  }
}
