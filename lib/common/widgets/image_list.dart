import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import '../../helpers/app_logger.dart';
import '../../shimmers/image_shimmer.dart';
import '../app_custom_size.dart';

class ImageList extends StatelessWidget {
  final List<String> imageList;
  const ImageList({super.key, required this.imageList});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ListView.builder(
          itemCount: imageList.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, int index) {
            return Container(
                width: CustomSize.getWidth(164),
                height: CustomSize.getHeight(224),
                margin: EdgeInsets.only(right: CustomSize.getWidth(16)),
                decoration: const BoxDecoration(),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: CachedNetworkImage(
                      imageUrl: imageList[index],
                      width: CustomSize.getWidth(164),
                      height: CustomSize.getHeight(224),
                      fit: BoxFit.cover,
                      useOldImageOnUrlChange: true,
                      errorWidget: (context, url, error) {
                        Log.debug('-----image loading err---$error');
                        return const SizedBox();
                      },
                      placeholder: (context, url) {
                        return const ImageShimmer();
                      },
                    )));
          }),
    );
  }
}
