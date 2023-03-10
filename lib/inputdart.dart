import 'dart:core';

import 'package:bmi_calculator_app/bbutton.dart';
import 'package:bmi_calculator_app/constant.dart';
import 'package:bmi_calculator_app/icon.dart';
import 'package:bmi_calculator_app/result.dart';
import 'package:bmi_calculator_app/reusable.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'calculate.dart';

enum Gender { female, male, nul }

class inputpage extends StatefulWidget {
  const inputpage({Key? key}) : super(key: key);

  @override
  State<inputpage> createState() => _inputpageState();
}

class _inputpageState extends State<inputpage> {
  Gender select = Gender.nul;
  int height = 180;
  int weight = 60;
  int age = 19;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI calculator'),
          backgroundColor: Color(0xFF0A0E21),
          centerTitle: true,
        ),
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                  child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          select = Gender.male;
                        });
                      },
                      child: reuse(
                        select == Gender.male ? iac : ac,
                        clmn(m, tm),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          select = Gender.female;
                        });
                      },
                      child: reuse(
                        select == Gender.female ? iac : ac,
                        clmn(f, tf),
                      ),
                    ),
                  )
                ],
              )),
              Expanded(
                  child: Row(
                children: [
                  Expanded(
                    child: reuse(
                      ac,
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Height',
                            style: stylee,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: [
                              Text(
                                height.toString(),
                                style: sty,
                              ),
                              Text(
                                'cm',
                                style: sty,
                              )
                            ],
                          ),
                          SliderTheme(
                            data: SliderTheme.of(context).copyWith(
                              activeTrackColor: Colors.white,
                              inactiveTrackColor: Colors.grey,
                              thumbColor: Color(0xFFEB1555),
                              overlayColor: Color(0x29EB1555),
                              thumbShape:
                                  RoundSliderThumbShape(enabledThumbRadius: 15),
                              overlayShape:
                                  RoundSliderOverlayShape(overlayRadius: 30),
                            ),
                            child: Slider(
                              value: height.toDouble(),
                              min: 120.0,
                              max: 220.0,
                              onChanged: (double newvalue) {
                                setState(() {
                                  height = newvalue.round();
                                });
                              },
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              )),
              Expanded(
                  child: Row(
                children: [
                  Expanded(
                    child: reuse(
                      ac,
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Weight',
                            style: stylee,
                          ),
                          Text(
                            weight.toString(),
                            style: sty,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              roundicon(
                                iconn: FontAwesomeIcons.minus,
                                onpress: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              roundicon(
                                iconn: FontAwesomeIcons.plus,
                                onpress: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: reuse(
                      ac,
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Age',
                            style: stylee,
                          ),
                          Text(
                            age.toString(),
                            style: sty,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              roundicon(
                                iconn: FontAwesomeIcons.minus,
                                onpress: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              roundicon(
                                iconn: FontAwesomeIcons.plus,
                                onpress: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              )),
              bottombutton(
                st: 'Calculate',
                ontap: () {
                  calculate cal = calculate(height: height, weight: weight);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => result(
                        p: cal.getres(),
                        q: cal.cbmi(),
                        r: cal.geti(),
                      ),
                    ),
                  );
                },
              )
            ],
          ),
        ));
  }
}

class roundicon extends StatelessWidget {
  final IconData iconn;
  final VoidCallback onpress;

  roundicon({required this.iconn, required this.onpress});
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(iconn),
      onPressed: onpress,
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(height: 56, width: 56),
      shape: CircleBorder(),
      fillColor: Color(0XFF4C4F5E),
    );
  }
}
