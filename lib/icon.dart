import 'package:flutter/material.dart';

import 'constant.dart';

class clmn extends StatelessWidget {
  final IconData i;
  final String t;
  clmn(this.i, this.t);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          i,
          size: 80,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          t,
          style: stylee,
        ),
      ],
    );
  }
}
