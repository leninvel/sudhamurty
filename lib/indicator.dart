import 'package:flutter/material.dart';

class Indicator extends StatelessWidget {
final bool isActive;
  const Indicator({Key? key,required this.isActive});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
        duration: const Duration(milliseconds: 350),
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      width: isActive ? 20.0 :10.0,
      height: 10.0,
      decoration: BoxDecoration(
        color: isActive ? Colors.black38 : Colors.black,
        borderRadius:BorderRadius.circular(8.0)
      ),
    );
  }
}
