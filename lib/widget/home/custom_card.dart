import 'package:flutter/material.dart';
import 'package:pokemon_app/src/moduls/home/model/home_model.dart';

class CustomCard extends StatefulWidget {
  final String? id;
  final String? imagurl;
  final String? name;
  final String? type;
  final HomeModel? homeModel;
  const CustomCard(
      {Key? key, this.id, this.imagurl, this.name, this.type, this.homeModel})
      : super(key: key);

  @override
  State<CustomCard> createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 5),
      padding: const EdgeInsets.all(10),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color(0xff0E1F40),
      ),
      // child: Center(child: Text('$index')),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 50,
                ),
                Text(
                  '${widget.homeModel!.name}',
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w700),
                ),
                Container(
                    margin: const EdgeInsets.only(top: 10),
                    padding: const EdgeInsets.all(10),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white.withOpacity(0.4),
                    ),
                    child: Center(
                      child: Text(
                        '${widget.homeModel!.typeofpokemon}',
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 9,
                            fontWeight: FontWeight.w500),
                      ),
                    )),
              ],
            ),
          ),
          Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '${widget.homeModel!.id}',
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.5),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 27,
                  ),
                  Image.asset(
                    'assets/images/frog.png',
                    // '${widget.homeModel!.imageurl}',
                    cacheWidth: 120,
                    cacheHeight: 120,
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
