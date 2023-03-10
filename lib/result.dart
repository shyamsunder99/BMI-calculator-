import 'package:bmi_calculator_app/bbutton.dart';
import 'package:bmi_calculator_app/constant.dart';
import 'package:flutter/material.dart';

import 'reusable.dart';

class result extends StatelessWidget {
  final String p;
  final String q;
  final String r;
  result({required this.p, required this.q, required this.r});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI calulator'),
        centerTitle: true,
        backgroundColor: Color(0xFF0A0E21),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your result',
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: reuse(
              ac,
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    p,
                    style: rstyle,
                  ),
                  Text(
                    q,
                    style: rsty,
                  ),
                  Text(
                    r,
                    textAlign: TextAlign.center,
                    style: rstl,
                  )
                ],
              ),
            ),
          ),
          bottombutton(
              st: 'Re-Calculate',
              ontap: () {
                Navigator.pop(context);
              })
        ],
      ),
    );
  }
}
