import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:pokemon_app/src/moduls/home/model/home_model.dart';
import 'package:pokemon_app/utill/splash_screen/api_base_helper.dart';

class HomeController extends GetxController {
  final apiBaseHelper = ApiBaseHelper();
  var homeModel = HomeModel().obs;
  var isloading = false.obs;
  var listhomescreen = <HomeModel>[].obs;

  Future<HomeModel> getData() async {
    isloading(true);
    apiBaseHelper
        .onNetworkRequesting(
      url: '0bfdd96d3ab9ee20c2e572e47c6834c7/raw',
      methode: METHODE.get,
    )
        .then((responseData) {
      // var responseJson = responseData[" "];
      // listhomescreen.clear();
      debugPrint('==========>hello  $responseData');
      // responseJson.map((e) {
      //   listhomescreen.add(HomeModel.fromJson(e));
      // }).toList();
      homeModel.value = HomeModel.fromJson(responseData);
      debugPrint(
          '======================= get data  sorn nantib :$listhomescreen');
      isloading(false);
    }).onError((ErrorModel error, stackTrace) {
      debugPrint(
          "********************${error.statusCode!} error.bodyString ${error.bodyString}");
    });
    isloading(false);
    return homeModel.value;
  }
}
