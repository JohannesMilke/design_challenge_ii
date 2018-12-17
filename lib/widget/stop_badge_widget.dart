import 'package:flutter/material.dart';

class StopBadgeWidget extends StatelessWidget {
  final IconData icon;
  final String iconText;
  final Color iconColor;
  final Color backgroundColor;

  const StopBadgeWidget({
    @required this.icon,
    @required this.iconText,
    @required this.iconColor,
    @required this.backgroundColor,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Widget text = Text(
      iconText,
      style: Theme.of(context).textTheme.body1.copyWith(color: Colors.white),
    );

    Widget textWidget = backgroundColor == null
        ? text
        : Container(
            padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4.0),
              color: backgroundColor,
            ),
            child: text,
          );

    return Row(
      children: <Widget>[
        Icon(icon, color: iconColor),
        SizedBox(width: 8.0),
        textWidget,
      ],
    );
  }
}
