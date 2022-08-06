import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pokemon_app/src/moduls/home/controller/home_controller.dart';
import 'package:pokemon_app/src/moduls/home/screen/home.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final homeController = Get.put(HomeController());
  @override
  void initState() {
    homeController.getData();

    debugPrint('===================== get data home screen ');
    Future.delayed(const Duration(seconds: 4), () {
      homeController.getData().then((value) {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => const HomeScreen()));
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0E1F40),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Image.asset('assets/images/picPokemon.png'),
        ),
      ),
    );
  }
}
