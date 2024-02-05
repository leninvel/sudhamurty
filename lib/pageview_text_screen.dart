import 'package:flutter/material.dart';
import 'package:page_view/app_data_text.dart';
import 'package:page_view/display_text.dart';

class PageViewTextScreen extends StatefulWidget {
  const PageViewTextScreen({super.key});

  @override
  State<PageViewTextScreen> createState() => _PageViewTextScreenState();
}

class _PageViewTextScreenState extends State<PageViewTextScreen> {
  var _selectedIndex =0;
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black38,
      title: Text('Sudha Murty Quotes',
      style: TextStyle(
          color: Colors.white,
      ),
      ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 20.0),
            height: 400,
            width: 600,
            child: PageView.builder(
              onPageChanged: (index){
                setState(() {
                  _selectedIndex=index;
                });
              },
                controller: PageController(
                    viewportFraction: 0.7),
              itemCount: quotesTextList.length,
                itemBuilder: (context, index){
                var quotes = quotesTextList[index];
                var _scale = _selectedIndex==index ?1.0:0.8;


                return TweenAnimationBuilder(
                    tween:Tween(begin: _scale,end: _scale
                    ) ,
                    duration: Duration(milliseconds: 350),
                    child: DisPlayText(appDataText: quotes,
                    ),
                  builder: (context, value, child){
                      return Transform.scale(
                        scale: value,
                        child: child,
                      );
                  }
                );
                }
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                    (_selectedIndex +1).toString() +
                         '/' +
                           quotesTextList.length.toString(),
                         style: TextStyle(
                             fontSize:20,
                             color: Colors.black38,
                     ),
                    ),
              ),

            ],
          )

        ],
      ),
    );
  }
}
