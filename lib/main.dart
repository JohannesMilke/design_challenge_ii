import 'package:advent18_design_challenge_ii/data/data.dart';
import 'package:advent18_design_challenge_ii/model/stop_icon.dart';
import 'package:advent18_design_challenge_ii/widget/bus_info_widget.dart';
import 'package:advent18_design_challenge_ii/widget/bus_schedule_widget.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final String appTitle = 'DesignChallenge II';
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: appTitle,
        theme: ThemeData(
          primaryColor: Colors.red,
        ),
        home: MainPage(appTitle: appTitle),
      );
}

class MainPage extends StatelessWidget {
  final String appTitle;

  const MainPage({this.appTitle});

  @override
  Widget build(BuildContext context) {
    final List allStops = stops2;

    final busStops =
        allStops.where((stop) => stop.stopIcon == StopIcon.bus).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(appTitle),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            BusInfoWidget(
              start: busStops.first,
              end: busStops.last,
              duration: Duration(minutes: 55),
            ),
            Expanded(
              child: ListView(
                children: <Widget>[
                  BusScheduleWidget(stops: allStops),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
