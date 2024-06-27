import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import 'shimmer_config.dart';

class ImageShimmer extends StatelessWidget {
  const ImageShimmer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
        direction: ShimmerConfig.shimmerDirection,
        baseColor: ShimmerConfig.baseColor,
        highlightColor: ShimmerConfig.highlightColor,
        period: ShimmerConfig.period,
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(color: Colors.grey),
        ));
  }
}
