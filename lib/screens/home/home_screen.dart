import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

// Constants
import 'package:movie_info_ui/constants.dart';

// Components
import './components/body.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  String menuIcon = 'assets/icons/menu.svg';
  String searchIcon = 'assets/icons/search.svg';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        padding: const EdgeInsets.only(left: kDefaultPadding),
        icon: SvgPicture.asset(menuIcon),
        onPressed: () {},
      ),
      actions: <Widget>[
        IconButton(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          icon: SvgPicture.asset(searchIcon),
          onPressed: () {},
        )
      ],
    );
  }
}
