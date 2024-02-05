import 'package:flutter/material.dart';
import 'app_data_image.dart';

class DisplayImage extends StatelessWidget {
  final AppDataImage appData;

  const DisplayImage({Key? key, required this.appData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        image: DecorationImage(
          image: AssetImage(appData.image),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
