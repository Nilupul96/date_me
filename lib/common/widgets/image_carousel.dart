import 'package:fan_carousel_image_slider/fan_carousel_image_slider.dart';
import 'package:flutter/material.dart';
import '../app_custom_size.dart';
import '../custom_text_styles.dart';

class ImageCarousel extends StatefulWidget {
  final List<String> imageList;
  final bool isLoading;
  final Function(String)? onTapOnImage;
  const ImageCarousel(
      {super.key,
      required this.imageList,
      this.isLoading = false,
      this.onTapOnImage});

  @override
  State<ImageCarousel> createState() => _ImageCarouselState();
}

class _ImageCarouselState extends State<ImageCarousel> {
  @override
  Widget build(BuildContext context) {
    if (widget.imageList.isEmpty) {
      return SizedBox(
        height: CustomSize.getHeight(100),
        child: Center(
          child: Text(
            'No images in the Gallery',
            style: CustomTextStyles.regularStyle(),
          ),
        ),
      );
    }
    return Column(
      children: [
        FanCarouselImageSlider(
          imagesLink: widget.imageList,
          isAssets: false,
          showIndicator: false,
          imageRadius: 16,
          currentItemShadow: const [],
          sliderHeight: CustomSize.getHeight(424),
        )
      ],
    );
  }
}
