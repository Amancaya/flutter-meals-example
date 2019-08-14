import 'package:flutter/material.dart';

class IconDetailWidget extends StatelessWidget {

  final IconData icon;
  final String detail;

  IconDetailWidget(this.icon, this.detail);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Icon(
          icon,
        ),
        SizedBox(width: 6,),
        Text('$detail')
      ],
    );
  }
}
