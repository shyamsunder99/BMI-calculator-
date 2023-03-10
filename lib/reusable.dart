import 'package:flutter/material.dart';

class reuse extends StatelessWidget {
  final Color c;
  final Widget childs;
  reuse(@required this.c, this.childs);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: childs,
      margin: EdgeInsets.all(15.0),
      decoration:
          BoxDecoration(color: c, borderRadius: BorderRadius.circular(10.0)),
    );
  }
}
