import 'package:advent18_design_challenge_ii/model/stop.dart';
import 'package:advent18_design_challenge_ii/model/stop_icon.dart';
import 'package:advent18_design_challenge_ii/model/stop_number.dart';
import 'package:flutter/material.dart';

final Color green = Color.fromRGBO(8, 75, 37, 1.0);
final Color purple = Color.fromRGBO(61, 5, 51, 1.0);

List<Stop> stops = [
  Stop(
    number: StopNumber.first,
    stopIcon: StopIcon.bus,
    title: 'Madina Station',
    iconText: 'Accra',
    color: green,
  ),
  Stop(
    stopIcon: StopIcon.bus,
    title: 'Accra Tema Station',
    iconText: 'Chorkor',
    color: purple,
  ),
  Stop(
    stopIcon: StopIcon.walk,
    title: 'Police station roundabout',
    subtitle: 'Walk 4mins towards the south via Nii Ayikai st',
    color: Colors.black.withOpacity(0.75),
  ),
  Stop(
    number: StopNumber.last,
    stopIcon: StopIcon.destination,
    title: 'James Town Lighthouse',
    subtitle: 'Destination',
    color: Colors.black.withOpacity(0.75),
  ),
];

List<Stop> stops2 = [
  Stop(
    number: StopNumber.first,
    stopIcon: StopIcon.bus,
    title: 'Schöneberg',
    iconText: 'Berlin',
    color: green,
  ),
  Stop(
    stopIcon: StopIcon.bus,
    title: 'Potsdamer Platz',
    iconText: 'Berlin',
    color: purple,
  ),
  Stop(
    stopIcon: StopIcon.bus,
    title: 'Checkpoint Charlie',
    iconText: 'Berlin',
    color: purple,
  ),
  Stop(
    stopIcon: StopIcon.walk,
    title: 'Checkpoint Charlie sight',
    subtitle:
        'Crossing point between East Berlin and West Berlin during the Cold War',
    color: Colors.black.withOpacity(0.75),
  ),
  Stop(
    number: StopNumber.last,
    stopIcon: StopIcon.destination,
    title: 'KFC Checkpoint Charlie',
    subtitle: 'Destination',
    color: Colors.black.withOpacity(0.75),
  ),
];
