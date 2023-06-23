import 'dart:ui';

import 'package:flutter_charts/flutter_charts.dart' as charts;

class BarChartModel {
  String chartName;
  String day;
  int amount;

  BarChartModel({
    required this.chartName,
    required this.day,
    required this.amount, required Color color,
  });
}
