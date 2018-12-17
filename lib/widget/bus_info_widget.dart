import 'package:advent18_design_challenge_ii/data/stop_helpers.dart';
import 'package:advent18_design_challenge_ii/model/stop.dart';
import 'package:advent18_design_challenge_ii/widget/stop_badge_widget.dart';
import 'package:flutter/material.dart';

class BusInfoWidget extends StatelessWidget {
  final Stop start;
  final Stop end;
  final Duration duration;

  static const Color background = Color.fromRGBO(16, 18, 26, 1.0);

  const BusInfoWidget({
    @required this.start,
    @required this.end,
    @required this.duration,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => coloredCard(
        child: Row(
          children: <Widget>[
            Expanded(child: badges(context)),
            Text(
              '${duration.inMinutes} min',
              style: Theme.of(context)
                  .textTheme
                  .subhead
                  .copyWith(color: Colors.white),
            ),
          ],
        ),
      );

  Widget badges(BuildContext context) => Row(
        children: <Widget>[
          stopBadge(start),
          SizedBox(width: 8.0),
          Icon(Icons.chevron_right, color: Colors.white),
          SizedBox(width: 8.0),
          stopBadge(end),
        ],
      );

  Widget coloredCard({Widget child}) => Container(
        child: child,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color: background,
        ),
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
      );

  Widget stopBadge(Stop stop) => StopBadgeWidget(
        iconText: stop.iconText,
        iconColor: Colors.white,
        backgroundColor: stop.color,
        icon: getStopIcon(stop),
      );
}
