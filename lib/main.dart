import 'package:flutter/material.dart';
import 'input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        sliderTheme: SliderTheme.of(context).copyWith(
          activeTrackColor: Colors.blueGrey[600],
          thumbColor: Colors.blueGrey[500],
          overlayColor: Color.fromRGBO(250, 250, 250, .40),
          thumbShape: RoundSliderThumbShape(enabledThumbRadius: 13.0),
          overlayShape: RoundSliderOverlayShape(overlayRadius: 16.0),
        ),
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Colors.blueGrey,
        accentColor: Color(0xFF0A0E21),
      ),
      home: InputPage(),
    );
  }
}
