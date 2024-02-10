import 'package:flutter/widgets.dart';

class AdvancedPageController extends PageController {
  AdvancedPageController({
    super.initialPage,
    double initialViewportFraction = 1.0,
  }) : _viewportFraction = initialViewportFraction;

  double? _viewportFraction;
  @override
  double get viewportFraction => _viewportFraction ?? super.viewportFraction;
  set viewportFraction(double value) => _viewportFraction = value;
}
