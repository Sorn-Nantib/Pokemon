import 'package:flutter/material.dart';
import 'package:pokemon_app/src/moduls/home/model/home_model.dart';
import 'package:pokemon_app/widget/detail_page/custom_card_type.dart';
import 'package:pokemon_app/widget/detail_page/custom_row_chart.dart';

class DetailScreen extends StatefulWidget {
  final HomeModel homeModel;
  const DetailScreen({Key? key, required this.homeModel}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  late int index;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0E1F40),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xff0E1F40),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Stack(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 160),
            padding: const EdgeInsets.only(top: 30),
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              color: Color(0xffF3F3F3),
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Text(
                    '${widget.homeModel.name}',
                    style: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff0E1F40)),
                  ),
                  Text(
                    '${widget.homeModel.category} Pokemon',
                    style: const TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff0E1F40)),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: widget.homeModel.typeofpokemon!
                        .asMap()
                        .entries
                        .map((e) {
                      return CustomCardType(
                        title: e.value,
                      );
                    }).toList(),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Divider(
                    height: 2,
                    color: Color(0xff0E1F40),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Text(
                      '${widget.homeModel.xdescription}',
                      style: const TextStyle(
                          color: Color(0xff0E1F40),
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 20, left: 20),
                    padding:
                        const EdgeInsets.only(right: 30, left: 30, top: 15),
                    width: double.infinity,
                    height: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color(0xffF3F3F3),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.grey,
                              blurRadius: 2,
                              offset: Offset(0.9, 0.7))
                        ]),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(top: 5),
                                child: Icon(
                                  Icons.width_full_rounded,
                                  color: Color(0xff0E1F40),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Column(
                                children: [
                                  Text('${widget.homeModel.weight}'),
                                  const Text('Width')
                                ],
                              )
                            ],
                          ),
                          const Spacer(),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(top: 5),
                                child: Icon(
                                  Icons.height_sharp,
                                  color: Color(0xff0E1F40),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Column(
                                children: [
                                  Text('${widget.homeModel.height}'),
                                  const Text(
                                    'height',
                                  )
                                ],
                              )
                            ],
                          )
                        ]),
                  ),
                  CustomRow(
                    title: 'Hp',
                    value: widget.homeModel.hp,
                  ),
                  CustomRow(
                    title: 'Attack',
                    value: widget.homeModel.attack,
                  ),
                  CustomRow(
                    title: 'Speed',
                    value: widget.homeModel.speed,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
              top: 0,
              right: 50,
              left: 30,
              child: Center(
                child: Image.network(
                  '${widget.homeModel.imageurl}',
                  scale: 2.5,
                ),
              ))
        ],
      ),
    );
  }
}
