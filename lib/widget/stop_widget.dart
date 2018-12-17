import 'package:advent18_design_challenge_ii/data/stop_helpers.dart';
import 'package:advent18_design_challenge_ii/model/stop.dart';
import 'package:advent18_design_challenge_ii/model/stop_icon.dart';
import 'package:advent18_design_challenge_ii/model/stop_number.dart';
import 'package:advent18_design_challenge_ii/widget/dashed_line_painter.dart';
import 'package:advent18_design_challenge_ii/widget/rounded_line_painter.dart';
import 'package:flutter/material.dart';

class StopWidget extends StatelessWidget {
  final Stop stop;

  const StopWidget({Key key, this.stop}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Widget line = stop.stopIcon == StopIcon.bus
        ? roundedLine(stop.color)
        : dashedLine(stop);

    final double offsetY =
        stop.number == StopNumber.first || stop.number == StopNumber.last
            ? 8.0
            : 0.0;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          margin: EdgeInsets.fromLTRB(0.0, 16.0, 16.0, 0.0),
          child: badge(context, stop: stop),
          width: 120.0,
        ),
        line,
        SizedBox(width: 24.0),
        Expanded(
          child: listTile(context, offsetY),
        ),
      ],
    );
  }

  Widget listTile(BuildContext context, double offsetY) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: offsetY),
          Text(
            stop.title,
            style: Theme.of(context).textTheme.title,
          ),
          stop.subtitle != null
              ? Container(
                  margin: EdgeInsets.only(top: 8.0),
                  child: Text(
                    stop.subtitle,
                    style: Theme.of(context)
                        .textTheme
                        .subtitle
                        .copyWith(color: Colors.black.withOpacity(0.5)),
                  ),
                )
              : Container(),
        ],
      );

  Widget badge(BuildContext context, {Stop stop}) {
    final IconData icon = getStopIcon(stop);
    final bool largeIcon = stop.stopIcon == StopIcon.bus ? true : false;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          color: stop.color,
          size: largeIcon ? 48.0 : 40.0,
        ),
        SizedBox(width: 8.0),
        stop.iconText != null
            ? Expanded(
                child: Text(
                  stop.iconText,
                  style: Theme.of(context).textTheme.subhead,
                ),
              )
            : Container(),
      ],
    );
  }

  Widget dashedLine(Stop stop) {
    final double height = stop.number == StopNumber.last ? 16.0 : 112.0;
    final bool strongPoints = stop.number == StopNumber.last ? true : false;

    return CustomPaint(
      painter: DashedLinePainter(strongPoints: strongPoints),
      child: Container(
        width: 16.0,
        height: height,
      ),
    );
  }

  Widget roundedLine(Color color) => CustomPaint(
        painter: RoundedLinePainter(color: color),
        child: Container(
          width: 16.0,
          height: 136.0,
        ),
      );
}
