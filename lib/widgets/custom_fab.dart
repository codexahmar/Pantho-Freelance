import 'package:flutter/material.dart';

class CustomFloatingActionButton extends FloatingActionButtonLocation {
  @override
  Offset getOffset(ScaffoldPrelayoutGeometry scaffoldGeometry) {
    // Calculate the X position (centered)
    final double xPosition = scaffoldGeometry.scaffoldSize.width / 2 - 28;

    // Calculate the Y position (100 logical pixels from the bottom)
    final double yPosition = scaffoldGeometry.scaffoldSize.height - 100;

    return Offset(xPosition, yPosition);
  }
}
