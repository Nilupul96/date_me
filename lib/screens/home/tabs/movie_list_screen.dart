import 'package:appinio_swiper/appinio_swiper.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../providers/user_provider.dart';
import '../widgets/movie_card.dart';

class MovieListScreen extends StatefulWidget {
  final AppinioSwiperController swipeController;
  final Widget header;
  final Function onSwiping;
  const MovieListScreen(
      {super.key,
      required this.swipeController,
      required this.header,
      required this.onSwiping});

  @override
  State<MovieListScreen> createState() => _MovieListScreenState();
}

class _MovieListScreenState extends State<MovieListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Consumer<UserProvider>(builder: (context, userProvider, _) {
        return AppinioSwiper(
          controller: widget.swipeController,
          cardCount: userProvider.movieList.length,
          threshold: 100,
          loop: true,
          backgroundCardCount: 1,
          allowUnSwipe: true,
          duration: const Duration(milliseconds: 400),
          onSwipeEnd: (begin, end, direction) => widget.onSwiping(direction),
          cardBuilder: (BuildContext context, int index) {
            return MovieCard(
              movie: userProvider.movieList[index],
              header: widget.header,
            );
          },
        );
      }),
    );
  }
}
