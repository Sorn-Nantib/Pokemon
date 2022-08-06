import 'package:flutter/material.dart';
import 'package:pokemon_app/src/moduls/home/model/home_model.dart';

class DetailScreen extends StatefulWidget {
  final HomeModel homeModel;
  const DetailScreen({Key? key, required this.homeModel}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff0E1F40),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'Detail Screen',
          // '${widget.homeModel.name}',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),

        // actions: [
        //   IconButton(
        //     icon: const Icon(Icons.more_vert),
        //     onPressed: () {},
        //   ),
        // ],
      ),
      body: Stack(
        children: [
          Positioned(
            left: 15,
            top: 20,
            child: Text(
              '${widget.homeModel.name}',
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
