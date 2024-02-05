import 'package:flutter/material.dart';
import 'app_data_image.dart';
import 'display_image.dart';
import 'indicator.dart';

class PageViewImageScreen extends StatefulWidget {
  const PageViewImageScreen({Key? key}) : super(key: key);

  @override
  State<PageViewImageScreen> createState() => _PageViewImageScreenState();
}

class _PageViewImageScreenState extends State<PageViewImageScreen> {
  @override
  var _selectedIndex = 0;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sudha Murty Quotes',
        style: TextStyle(
          color: Colors.white,
        ),
        ),
        backgroundColor: Colors.brown.shade300,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.symmetric(vertical: 20.0),
            height: 400,
            width: 600,
            child: PageView.builder(
              onPageChanged: (index){
                setState(() {
                  _selectedIndex =index;
                });
              },
              controller: PageController(viewportFraction: 0.7),
              itemCount: appDataImage.length,
              itemBuilder: (context, index) {
                return DisplayImage(
                  appData: appDataImage[index],
                );
              },
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ...List.generate(
                  appDataImage.length,
                      (index) => Indicator(isActive:_selectedIndex == index ? true : false)),
            ],
          ),
        ],
      ),
    );
  }
}
