import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'icon_content.dart';

const bottomContainerHeight = 80.0;
const cardColor = Colors.blueGrey;
const bottomContainerColor = Colors.blueGrey;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
              children: <Widget>[
                Expanded(
                    child: Row(
                  children: <Widget>[
                    Expanded(
                      child: ReusableCard(
                        color: cardColor,
                        cardChild: IconContent(
                          icon: FontAwesomeIcons.mars,
                          label: 'MALE',
                        ),
                      ),
                    ),
                    Expanded(
                      child: ReusableCard(
                        color: cardColor,
                        cardChild: IconContent(
                          icon: FontAwesomeIcons.venus,
                          label: 'FEMALE',
                        ),
                      ),
                    ),
                  ],
                )),
                Expanded(
                  child: ReusableCard(
                    color: cardColor,
                  ),
                ),
                Expanded(
                    child: Row(
                  children: <Widget>[
                    Expanded(
                      child: ReusableCard(
                        color: cardColor,
                      ),
                    ),
                    Expanded(
                      child: ReusableCard(
                        color: cardColor,
                      ),
                    ),
                  ],
                )),
                Container(
                  color: Colors.blueGrey[800],
                  margin: EdgeInsets.only(top: 10.0),
                  width: double.infinity,
                  height: bottomContainerHeight,
                ),
              ],
            )),
      ),
    );
  }
}
