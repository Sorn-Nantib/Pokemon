import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokemon_app/src/moduls/home/model/home_model.dart';

part 'home_list_model.freezed.dart';
part 'home_list_model.g.dart';

@freezed
class HomeListModel with _$HomeListModel {
  factory HomeListModel({
    List<HomeModel>? homelistmodel,
  }) = _HomeListModel;

  factory HomeListModel.fromJson(Map<String, dynamic> json) =>
      _$HomeListModelFromJson(json);
}
