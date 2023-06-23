import 'package:flutter_charts/flutter_charts.dart';
import 'package:gezabeautyexpertapp/model/bar_chart_model.dart';
import 'package:gezabeautyexpertapp/utils/strings.dart';
import 'package:gezabeautyexpertapp/utils/dimensions.dart';
import 'package:flutter/material.dart';

class BarChartGraph extends StatefulWidget {
  final List<BarChartModel> data;

  const BarChartGraph({super.key, required this.data});

  @override
  _BarChartGraphState createState() => _BarChartGraphState();
}

class _BarChartGraphState extends State<BarChartGraph> {
  late List<BarChartModel> _barChartList;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _barChartList = [
      BarChartModel(
          chartName: Strings.weeklyEarn,
          amount: 200,
          color: Colors.white,
          day: ''),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return _buildFinancialList();
  }

  Widget _buildFinancialList() {
    return _barChartList != null
        ? ListView.separated(
            physics: const NeverScrollableScrollPhysics(),
            separatorBuilder: (context, index) => const Divider(
              color: Colors.white,
              height: 5,
            ),
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: _barChartList.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.only(
                    left: Dimensions.marginSize, right: Dimensions.marginSize),
                child: Container(
                  height: 300,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(Dimensions.radius),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 7,
                        offset:
                            const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(Strings.weeklyEarn.toUpperCase(),
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: Dimensions.largeTextSize,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                      // Expanded(child: BarChart()),
                    ],
                  ),
                ),
              );
            },
          )
        : const SizedBox();
  }

  Series(
      {required String id,
      required List<BarChartModel> data,
      required String Function(BarChartModel series, dynamic _) domainFn,
      required int Function(BarChartModel series, dynamic _) measureFn,
      required Function(BarChartModel series, dynamic _) colorFn}) {}
}
