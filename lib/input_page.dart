import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const bottomContainerHeight = 80.0;
const cardColor = Colors.blueGrey;

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
                      ),
                    ),
                    Expanded(
                      child: ReusableCard(
                        color: cardColor,
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

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.color});
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.blueGrey[400],
      ),
    );
  }
}
