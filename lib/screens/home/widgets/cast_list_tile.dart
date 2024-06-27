import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import '../../../common/app_custom_size.dart';
import '../../../common/custom_text_styles.dart';
import '../../../helpers/app_logger.dart';
import '../../../models/movie.dart';

class CastListTile extends StatelessWidget {
  final Cast cast;
  const CastListTile({super.key, required this.cast});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
              width: CustomSize.getWidth(60),
              height: CustomSize.getHeight(60),
              margin: EdgeInsets.only(right: CustomSize.getWidth(16)),
              decoration: const BoxDecoration(),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: CachedNetworkImage(
                    imageUrl: cast.imageUrl,
                    fit: BoxFit.cover,
                    useOldImageOnUrlChange: true,
                    errorWidget: (context, url, error) {
                      Log.debug('cast image err$error');
                      return const SizedBox();
                    },
                    placeholder: (context, url) => Container(),
                  ))),
          SizedBox(height: CustomSize.getHeight(4)),
          Text(
            cast.name,
            style: CustomTextStyles.regularStyle(
                fontSize: 12, color: Colors.white),
          )
        ],
      ),
    );
  }
}
