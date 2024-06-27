import 'package:appinio_swiper/appinio_swiper.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../helpers/app_logger.dart';
import '../../../providers/user_provider.dart';
import '../widgets/user_card.dart';

class UsersListScreen extends StatefulWidget {
  final AppinioSwiperController swipeController;
  final Widget header;
  final Function onSwiping;
  const UsersListScreen(
      {super.key,
      required this.swipeController,
      required this.header,
      required this.onSwiping});

  @override
  State<UsersListScreen> createState() => _UsersListScreenState();
}

class _UsersListScreenState extends State<UsersListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Consumer<UserProvider>(builder: (context, userProvider, _) {
        return AppinioSwiper(
          controller: widget.swipeController,
          cardCount: userProvider.userList.length,
          threshold: 100,
          loop: true,
          duration: const Duration(milliseconds: 400),
          allowUnSwipe: true,
          onSwipeEnd: (begin, end, direction) => widget.onSwiping(direction),
          cardBuilder: (BuildContext context, int index) {
            return UserCard(
              user: userProvider.userList[index],
              header: widget.header,
            );
          },
          // onSwipe: (index, direction) {
          //   Log.debug("---$direction.  $index");
          // },
        );
      }),
    );
  }
}
