import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:pokemon_app/src/moduls/home/model/home_list_model/home_list_model.dart';
import 'package:pokemon_app/src/moduls/home/model/home_model.dart';
import 'package:pokemon_app/utill/helper/api_base_helper.dart';

class HomeController extends GetxController {
  final apiBaseHelper = ApiBaseHelper();
  var homeModel = HomeModel().obs;
  var homeListModel = HomeListModel().obs;
  var isloading = false.obs;
  var listhomescreen = <HomeModel>[].obs;

  Future<HomeModel> getData() async {
    isloading(true);
    await apiBaseHelper
        .onNetworkRequesting(
      url: '0bfdd96d3ab9ee20c2e572e47c6834c7/raw',
      methode: METHODE.get,
    )
        .then((responseData) {
      listhomescreen.clear();
      debugPrint('==========>hello  $responseData');
      responseData.map((e) {
        listhomescreen.add(HomeModel.fromJson(e));
      }).toList();

      debugPrint(
          '======================= get data  sorn nantib :$responseData');
      isloading(false);
    }).onError((ErrorModel error, stackTrace) {
      debugPrint(
          "********************${error.statusCode!} error.bodyString ${error.bodyString}");
    });
    isloading(false);
    return homeModel.value;
  }
}
