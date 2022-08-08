import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pokemon_app/src/moduls/detail_page/screen/detail_screen.dart';
import 'package:pokemon_app/src/moduls/home/controller/home_controller.dart';
import 'package:pokemon_app/src/moduls/home/model/home_model.dart';
import 'package:pokemon_app/widget/home/custom_card.dart';

class HomeScreen extends StatefulWidget {
  final List<HomeModel>? homeModel;
  const HomeScreen({Key? key, this.homeModel}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // final homeModel = HomeModel();
  final homeController = Get.put(HomeController());
  @override
  void initState() {
    homeController.getData();
    debugPrint(
        '===================== get data home screen${homeController.listhomescreen} ');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff0E1F40),
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {},
        ),
        title: const Text(
          'Pokemon App',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Pokemons',
              style: TextStyle(
                  color: Color(0xff081733),
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            Expanded(
              child: GridView.builder(
                  padding: const EdgeInsets.only(top: 20),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10),
                  itemCount: homeController.listhomescreen.length,
                  itemBuilder: (BuildContext context, int index) {
                    return CustomCard(
                      onTapCard: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailScreen(
                                    homeModel:
                                        homeController.listhomescreen[index],
                                  )),
                        );
                      },
                      homeModel: homeController.listhomescreen[index],
                    );
                  }),
            ),
          ],
        ),
      ),
      //  )
    );
  }
}
