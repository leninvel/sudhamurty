import 'package:flutter/material.dart';
import 'package:page_view/app_data_text.dart';


class DisPlayText extends StatelessWidget {
  final AppDataText appDataText;
  const DisPlayText({super.key, required this.appDataText});

  @override
  Widget build(BuildContext context) {
    return Container(
child: DefaultTextStyle(
  style: TextStyle(
    color: Colors.white,
    fontSize: 20.0,
  ),
child: Stack(
  children: [
    Container(
      decoration: BoxDecoration(
        color: Colors.black38,
        borderRadius: BorderRadius.circular(20.0),
      ),
    ),  Center(
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Text(
          appDataText.text,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize:20,
            letterSpacing: 1.2,
          ),
        ),
      ),
    ),
  ],
),
),
    );


  }
}
