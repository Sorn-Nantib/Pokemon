import 'package:flutter/material.dart';

class CustomRow extends StatelessWidget {
  final String? title;
  final int? value;
  const CustomRow({Key? key, this.title, this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Text(
              '$title : ',
              style: const TextStyle(
                  color: Color(0xff0E1F40),
                  fontSize: 14,
                  fontWeight: FontWeight.w700),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Text(
              '$value',
              style: const TextStyle(
                  color: Color(0xff0E1F40),
                  fontSize: 14,
                  fontWeight: FontWeight.w700),
            ),
          ),
          Expanded(
            child: Stack(
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 20, left: 20, top: 20),
                  width: double.infinity,
                  height: 10,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xff0E1F40),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
