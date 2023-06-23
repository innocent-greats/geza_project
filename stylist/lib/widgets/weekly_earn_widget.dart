import 'package:flutter/material.dart';
// import 'package:flutter_charts/flutter_charts.dart' as charts;
import 'package:gezabeautyexpertapp/model/bar_chart_model.dart';
import 'package:gezabeautyexpertapp/model/bar_chart_graph.dart';

class WeeklyEarnWidget extends StatefulWidget {
  const WeeklyEarnWidget({super.key});

  @override
  _WeeklyEarnWidgetState createState() => _WeeklyEarnWidgetState();
}

class _WeeklyEarnWidgetState extends State<WeeklyEarnWidget> {
  final List<BarChartModel> data = [
    BarChartModel(
        day: "SAT", amount: 2050, color: const Color(0xFF4750F), chartName: ''),
    BarChartModel(
      day: "SUN",
      amount: 1300,
      color: Colors.red,
      chartName: '',
    ),
    BarChartModel(
      day: "MON",
      amount: 2100,
      color: Colors.green,
      chartName: '',
    ),
    BarChartModel(
      day: "TUE",
      amount: 1250,
      color: Colors.yellow,
      chartName: '',
    ),
    BarChartModel(
      day: "WED",
      amount: 1630,
      color: Colors.lightBlueAccent,
      chartName: '',
    ),
    BarChartModel(
      day: "THU",
      amount: 1500,
      color: Colors.pink,
      chartName: '',
    ),
    BarChartModel(
      day: "FRI",
      amount: 2500,
      color: Colors.purple,
      chartName: '',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          BarChartGraph(
            data: data,
          ),
        ],
      ),
    );
  }
}
