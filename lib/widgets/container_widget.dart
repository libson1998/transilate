import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget(
      {super.key,
      required this.strLanguage,
      required this.height,
      required this.onPress});

  final String strLanguage;
  final double height;
  final Function() onPress;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        height: height,
        decoration: BoxDecoration(
          color: Colors.white10, // Set the background color of the container
          borderRadius: BorderRadius.circular(12.0), // Set
        ),
        child: Center(
            child: Text(
          strLanguage,
          style: const TextStyle(fontSize: 19, color: Color(0xffACDEEC)),
        )),
      ),
    );
  }
}
