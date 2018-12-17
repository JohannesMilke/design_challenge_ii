import 'package:advent18_design_challenge_ii/model/stop.dart';
import 'package:advent18_design_challenge_ii/widget/stop_widget.dart';
import 'package:flutter/material.dart';

class BusScheduleWidget extends StatelessWidget {
  final List<Stop> stops;

  const BusScheduleWidget({Key key, this.stops}) : super(key: key);

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: stops.map((stop) => StopWidget(stop: stop)).toList(),
        ),
      );
}
