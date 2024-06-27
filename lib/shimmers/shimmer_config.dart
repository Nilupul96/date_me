import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerConfig {
  static ShimmerDirection shimmerDirection = ShimmerDirection.ltr;
  static Color baseColor = Colors.grey[800]!; // Dark grey
  static Color highlightColor = Colors.grey[900]!;
  static Duration period = const Duration(milliseconds: 1500);
}
