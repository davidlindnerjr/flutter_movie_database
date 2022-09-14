import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

// Constants
import '../../../constants.dart';

// Models
import '../../../models/movie.dart';

class BackdropAndRating extends StatelessWidget {
  const BackdropAndRating({
    Key? key,
    required this.size,
    required this.movie,
    required this.starIcon,
    required this.starOutline,
  }) : super(key: key);

  final Size size;
  final Movie movie;
  final String starIcon;
  final String starOutline;

  @override
  Widget build(BuildContext context) {
    return Container(
      // 40% pf total height
      height: size.height * 0.4,
      child: Stack(
        children: <Widget>[
          Container(
            height: size.height * 0.4 - 50,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(50),
              ),
              image: DecorationImage(
                image: AssetImage(movie.backdrop),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              width: size.width * 0.9,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  topLeft: Radius.circular(50),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 5),
                    blurRadius: 50,
                    color: const Color(0xFF12153D).withOpacity(0.2),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SvgPicture.asset(starIcon),
                      const SizedBox(
                        height: kDefaultPadding / 4,
                      ),
                      RichText(
                        text: TextSpan(
                          style: const TextStyle(color: Colors.black),
                          children: [
                            TextSpan(
                              text: '${movie.rating}/',
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const TextSpan(
                              text: '10\n',
                            ),
                            const TextSpan(
                              text: '150,212',
                              style: TextStyle(color: kTextLightColor),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SvgPicture.asset(starOutline),
                      const SizedBox(
                        height: kDefaultPadding / 4,
                      ),
                      Text(
                        'Rate This',
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          color: const Color(0xFF51CF66),
                          borderRadius: BorderRadius.circular(2),
                        ),
                        child: Text(
                          '${movie.metascoreRating}',
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: kDefaultPadding / 4,
                      ),
                      const Text(
                        'Metascore',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const Text(
                        '62 critic reviews',
                        style: TextStyle(color: kTextLightColor),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SafeArea(
            child: BackButton(),
          ),
        ],
      ),
    );
  }
}
