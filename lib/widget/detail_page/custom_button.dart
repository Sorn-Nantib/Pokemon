import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Function onTap;
  final GestureTapCallback onTap2;
  final String? title;
  const CustomButton(
      {Key? key, required this.onTap, this.title, required this.onTap2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: TextButton(
          onPressed: () {
            onTap();
          },
          child: const Text('Hello')),
    );
  }
}
