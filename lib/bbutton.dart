import 'package:bmi_calculator_app/constant.dart';
import 'package:flutter/material.dart';

class bottombutton extends StatelessWidget {
  final String st;
  final VoidCallback ontap;
  bottombutton({required this.st, required this.ontap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        child: Center(
          child: Text(
            st,
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
        margin: EdgeInsets.only(top: 10.0),
        decoration:
            BoxDecoration(color: bc, borderRadius: BorderRadius.circular(10)),
        height: h,
        width: double.infinity,
      ),
    );
  }
}
