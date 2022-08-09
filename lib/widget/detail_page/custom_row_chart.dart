import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class CustomRow extends StatelessWidget {
  final String? title;
  final int? value;
  final int? wiht;
  const CustomRow({Key? key, this.title, this.value, this.wiht = 0})
      : super(key: key);

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
                Padding(
                  padding: const EdgeInsets.only(right: 20, left: 20, top: 20),
                  child: StepProgressIndicator(
                    totalSteps: 100,
                    currentStep: wiht!,
                    size: 8,
                    padding: 0,
                    selectedColor: Colors.yellow,
                    unselectedColor: Colors.cyan,
                    roundedEdges: const Radius.circular(10),
                    selectedGradientColor: const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [Colors.yellowAccent, Colors.deepOrange],
                    ),
                    unselectedGradientColor: const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [Colors.black, Colors.blue],
                    ),
                  ),
                ),
                // Container(
                //   margin: const EdgeInsets.only(right: 20, left: 20, top: 20),
                //   width: double.infinity,
                //   height: 10,
                //   decoration: BoxDecoration(
                //     borderRadius: BorderRadius.circular(20),
                //     color: const Color(0xff0E1F40),
                //   ),
                // ),
                // Container(
                //   margin: const EdgeInsets.only(right: 20, left: 20, top: 20),
                //   width: double.parse(wiht.toString()),
                //   height: 10,
                //   decoration: BoxDecoration(
                //     borderRadius: BorderRadius.circular(20),
                //     color: Colors.yellow,
                //   ),
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
