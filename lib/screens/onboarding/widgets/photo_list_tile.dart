
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sizer/sizer.dart';
import '../../../common/app_colors.dart';
import '../../../common/app_custom_size.dart';
import '../../../common/app_icons.dart';
import '../../../common/custom_text_styles.dart';

class PhotoListTile extends StatefulWidget {
  const PhotoListTile({super.key});

  @override
  State<PhotoListTile> createState() => _PhotoListTileState();
}

class _PhotoListTileState extends State<PhotoListTile> {
  final ImagePicker picker = ImagePicker();
  XFile? image;

  void pickImage() async {
    image = await picker.pickImage(source: ImageSource.gallery);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: (100.w - 64) / 3,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: const Color(0xff30313314).withOpacity(0.08),
              blurRadius: 40,
              offset: const Offset(0, 24))
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: image != null
          ? Image.asset(image!.path)
          : Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 14),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(AppIcon.smileFace),
                  SizedBox(
                    height: CustomSize.getHeight(28),
                    child: ElevatedButton(
                        onPressed: pickImage,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0XFFF3F4F6),
                          elevation: 0.0,
                          shadowColor: Colors.transparent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.add,
                              size: 15,
                              color: AppColors.red,
                            ),
                            Text(
                              'Add',
                              style: CustomTextStyles.btnLabelStyle(
                                  color: AppColors.red),
                            )
                          ],
                        )),
                  )
                ],
              ),
            ),
    );
  }
}
