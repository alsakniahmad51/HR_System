import 'package:flutter/material.dart';

extension ResponsiveSize on num {
  double responsive(BuildContext context) {
    const double designWidth = 412.0;
    final double screenWidth = MediaQuery.of(context).size.width;
    final double scaleFactor = screenWidth / designWidth;
    return this * scaleFactor;
  }
}
