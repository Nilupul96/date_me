import 'package:date_me/screens/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import '../common/app_assets.dart';
import '../common/app_colors.dart';
import '../common/app_custom_size.dart';
import '../common/widgets/base_widget.dart';

class HomeBaseScreen extends StatefulWidget {
  static const routeName = "/home-base-screen";
  const HomeBaseScreen({super.key});

  @override
  State<HomeBaseScreen> createState() => _HomeBaseScreenState();
}

class _HomeBaseScreenState extends State<HomeBaseScreen> {
  int _currentIndex = 0;
  int _screenIndex = 0;
  List<Widget> screenList = const [HomeScreen()];

  @override
  Widget build(BuildContext context) {
    return BaseWidget(
      child: Scaffold(
          body: Stack(
        children: [
          screenList[_screenIndex],
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: MediaQuery(
              data: MediaQuery.of(context).copyWith(padding: EdgeInsets.zero),
              child: Padding(
                padding: EdgeInsets.fromLTRB(CustomSize.getWidth(12), 0,
                    CustomSize.getWidth(12), CustomSize.getHeight(32)),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: SalomonBottomBar(
                      backgroundColor: AppColors.white,
                      selectedItemColor: AppColors.darkOrange,
                      unselectedItemColor: Colors.grey,
                      currentIndex: _currentIndex,
                      onTap: (index) => setState(() => _currentIndex = index),
                      margin: EdgeInsets.all(CustomSize.getWidth(10)),
                      items: [
                        /// Home
                        SalomonBottomBarItem(
                          icon: const Icon(Icons.home),
                          title: const Text("Home"),
                        ),

                        /// Likes
                        SalomonBottomBarItem(
                          icon: const Icon(Icons.favorite),
                          title: const Text("Likes"),
                        ),

                        /// Search
                        SalomonBottomBarItem(
                          icon: SvgPicture.asset(AppAssets.chatIcon,
                              colorFilter: ColorFilter.mode(
                                _currentIndex == 2
                                    ? Colors.orange
                                    : Colors.grey,
                                BlendMode.srcIn,
                              )),
                          title: const Text("Chat"),
                        ),

                        /// Profile
                        SalomonBottomBarItem(
                            icon: SvgPicture.asset(AppAssets.profileIcon,
                                colorFilter: ColorFilter.mode(
                                  _currentIndex == 3
                                      ? AppColors.darkOrange
                                      : Colors.grey,
                                  BlendMode.srcIn,
                                )),
                            title: const Text("Profile")),
                      ],
                    )),
              ),
            ),
          )
        ],
      )),
    );
  }
}
