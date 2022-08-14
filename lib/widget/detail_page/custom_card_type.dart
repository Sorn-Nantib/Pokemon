import 'package:flutter/material.dart';

class CustomCardType extends StatelessWidget {
  final String? title;
  const CustomCardType({Key? key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 5, left: 20, right: 20),
        width: MediaQuery.of(context).size.width / 3,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color(0xff0E1F40).withOpacity(0.5),
        ),
        child: Center(
          child: Text(
            '$title',
            style: const TextStyle(
                color: Color(0xff0E1F40),
                fontSize: 14,
                fontWeight: FontWeight.w500),
          ),
        ));
  }
}
