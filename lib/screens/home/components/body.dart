import 'package:flutter/material.dart';
import 'package:movie_info_ui/constants.dart';

// Components
import 'categories_list.dart';
import '../components/genres.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        CategoryList(),
        Genres(),
      ],
    );
  }
}
