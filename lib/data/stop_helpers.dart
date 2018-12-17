import 'package:advent18_design_challenge_ii/model/stop.dart';
import 'package:advent18_design_challenge_ii/model/stop_icon.dart';
import 'package:flutter/material.dart';

IconData getStopIcon(Stop stop) {
  switch (stop.stopIcon) {
    case StopIcon.walk:
      return Icons.directions_walk;
    case StopIcon.bus:
      return Icons.directions_bus;
    case StopIcon.destination:
      return Icons.location_on;
    default:
      return Icons.directions_walk;
  }
}
