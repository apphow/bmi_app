import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'icon_content.dart';
import 'constants.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;
  int weight = 100;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Center(
        child: Scaffold(
            backgroundColor: Colors.blueGrey,
            appBar: AppBar(
              centerTitle: true,
              title: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(child: Text('BMI CALCULATOR')),
                ),
              ),
            ),
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: ReusableCard(
                          onPress: () {
                            setState(() {
                              selectedGender = Gender.male;
                            });
                          },
                          color: selectedGender == Gender.male
                              ? kActiveCardColor
                              : kInactiveCardColor,
                          cardChild: IconContent(
                            icon: FontAwesomeIcons.mars,
                            label: 'MALE',
                          ),
                        ),
                      ),
                      Expanded(
                        child: ReusableCard(
                          onPress: () {
                            setState(() {
                              selectedGender = Gender.female;
                            });
                          },
                          color: selectedGender == Gender.female
                              ? kActiveCardColor
                              : kInactiveCardColor,
                          cardChild: IconContent(
                            icon: FontAwesomeIcons.venus,
                            label: 'FEMALE',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                      color: kActiveCardColor,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'WEIGHT',
                            style: kLabelTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: <Widget>[
                              Text(
                                weight.toString(),
                                style: kNumberTextStyle,
                              ),
                              Text(
                                'lbs',
                                style: kLabelTextStyle,
                              ),
                            ],
                          ),
                          SliderTheme(
                            data: SliderTheme.of(context).copyWith(
                                activeTrackColor: Colors.blueGrey[600],
                                thumbColor: Colors.blueGrey[500],
                                overlayColor:
                                    Color.fromRGBO(250, 250, 250, .40),
                                thumbShape: RoundSliderThumbShape(
                                    enabledThumbRadius: 14.0),
                                overlayShape: RoundSliderOverlayShape(
                                    overlayRadius: 15.0)),
                            child: Slider(
                              value: weight.toDouble(),
                              min: 100.0,
                              max: 284.0,
                              inactiveColor: Colors.blueGrey[200],
                              onChanged: (double newValue) {
                                setState(() {
                                  weight = newValue.round();
                                });
                              },
                            ),
                          )
                        ],
                      )),
                ),
                Expanded(
                    child: Row(
                  children: <Widget>[
                    Expanded(
                      child: ReusableCard(
                        color: kActiveCardColor,
                      ),
                    ),
                    Expanded(
                      child: ReusableCard(
                        color: kActiveCardColor,
                      ),
                    ),
                  ],
                )),
                Container(
                  color: Colors.blueGrey[800],
                  margin: EdgeInsets.only(top: 10.0),
                  width: double.infinity,
                  height: kBottomContainerHeight,
                ),
              ],
            )),
      ),
    );
  }
}
