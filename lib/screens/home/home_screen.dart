import 'package:appinio_swiper/appinio_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:transitioned_indexed_stack/transitioned_indexed_stack.dart';
import '../../common/app_assets.dart';
import '../../common/app_custom_size.dart';
import '../../common/widgets/animated_switch_btn.dart';
import '../../const/tab_type.dart';
import '../../helpers/app_logger.dart';
import 'tabs/movie_list_screen.dart';
import 'tabs/users_list_screen.dart';
import 'widgets/like_btn_component.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = "/home-screen";
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool positive = true;
  int currentIndex = TabType.User;
  bool isFavorite = false;
  AppinioSwiperController userSwipeController = AppinioSwiperController();
  AppinioSwiperController movieSwipeController = AppinioSwiperController();

  void clickOnClose() {
    Log.debug("click on close");
    if (currentIndex == TabType.User) {
      userSwipeController.swipeRight();
    } else {
      movieSwipeController.swipeRight();
    }
    setState(() {
      isFavorite = false;
    });
  }

  Future<void> onLikeButtonTapped() async {
    setState(() {
      isFavorite = !isFavorite;
    });
  }

  Future<bool> onSuperLikeButtonTapped(bool isLiked) async {
    Log.debug("click on super like");
    setState(() {
      isLiked = true;
    });

    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          SizeFactorIndexedStack(
            beginSizeFactor: 0.0,
            endSizeFactor: 1.0,
            axis: Axis.vertical,
            curve: Curves.easeInOutCirc,
            duration: const Duration(milliseconds: 350),
            index: currentIndex,
            children: <Widget>[
              MovieListScreen(
                swipeController: movieSwipeController,
                header: _buildHeaderComponent(),
                onSwiping: (SwiperActivity direction) {
                  setState(() {
                    setState(() {
                      isFavorite = false;
                    });
                  });
                },
              ),
              UsersListScreen(
                swipeController: userSwipeController,
                header: _buildHeaderComponent(),
                onSwiping: (SwiperActivity direction) {
                  setState(() {
                    setState(() {
                      isFavorite = false;
                    });
                  });
                },
              ),
            ],
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: CustomSize.getHeight(134),
            child: LikeBtnComponent(
              onCloseClick: clickOnClose,
              onLikeClick: onLikeButtonTapped,
              onSuperLikeClick: onSuperLikeButtonTapped,
              isFavorite: isFavorite,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHeaderComponent() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: CustomSize.getWidth(16)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Align(
                alignment: Alignment.centerLeft,
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 90),
                  child: AnimatedSwitchBtn(
                    onSwitch: (i) {
                      setState(() {
                        currentIndex = i;
                      });
                      return Future.delayed(const Duration(seconds: 0));
                    },
                    index: currentIndex,
                  ),
                )),
          ),
          // Expanded(
          //   child: Image.asset(
          //     AppAssets.logo,
          //   ),
          // ),
          Expanded(
            child: Align(
              alignment: Alignment.centerRight,
              child: InkWell(
                onTap: () {},
                child: SvgPicture.asset(AppAssets.filterIcon),
              ),
            ),
          )
        ],
      ),
    );
  }
}
