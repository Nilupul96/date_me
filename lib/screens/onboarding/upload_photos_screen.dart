import 'package:date_me/screens/home_base_screen.dart';
import 'package:flutter/material.dart';
import '../../common/app_custom_size.dart';
import '../../common/custom_text_styles.dart';
import '../../common/widgets/common_appbar.dart';
import '../../common/widgets/main_btn.dart';
import 'widgets/photo_list_tile.dart';

class UploadPhotosScreen extends StatefulWidget {
  static const routeName = "/upload-photo-screen";
  const UploadPhotosScreen({Key? key}) : super(key: key);

  @override
  State<UploadPhotosScreen> createState() => _UploadPhotosScreenState();
}

class _UploadPhotosScreenState extends State<UploadPhotosScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(),
      body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
        return SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          physics: const AlwaysScrollableScrollPhysics(),
          child: SizedBox(
            height: constraints.maxHeight,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      top: CustomSize.getHeight(32),
                      bottom: CustomSize.getHeight(16)),
                  child: Text(
                    "Upload Photos",
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.displayLarge,
                  ),
                ),
                Text(
                  "Upload at least 1 photo to continue.",
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.regularStyle(
                      fontSize: 14, color: const Color(0xff6B7280)),
                ),
                SizedBox(height: CustomSize.getHeight(48)),
                Container(
                  margin:
                      EdgeInsets.symmetric(horizontal: CustomSize.getWidth(16)),
                  child: GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              crossAxisSpacing: 16,
                              mainAxisSpacing: 16,
                              childAspectRatio: 0.74),
                      itemCount: 6,
                      itemBuilder: (context, int index) {
                        return PhotoListTile();
                      }),
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: CustomSize.getWidth(16)),
                      child: MainBtn(
                        onClick: () {
                          Navigator.of(context).pushNamedAndRemoveUntil(
                              HomeBaseScreen.routeName, (route) => false);
                        },
                        lbl: "Continue",
                      ),
                    ),
                  ),
                ),
                SizedBox(height: CustomSize.getHeight(30))
              ],
            ),
          ),
        );
      }),
    );
  }
}
