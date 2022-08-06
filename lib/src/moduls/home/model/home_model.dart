import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_model.freezed.dart';
part 'home_model.g.dart';

@freezed
class HomeModel with _$HomeModel {
  factory HomeModel({
    String? name,
    String? id,
    String? imageurl,
    String? xdescription,
    String? ydescription,
    String? height,
    String? category,
    String? weight,
    List<String>? typeofpokemon,
    List<String>? weaknesses,
    List<String>? evolutions,
    List<String>? abilities,
    int? hp,
    int? attack,
    int? defense,
    @JsonKey(name: "special_attack") int? specialAttack,
    @JsonKey(name: "special_defense") int? specialDefense,
    int? speed,
    int? total,
    @JsonKey(name: "male_percentage") String? malePercentage,
    @JsonKey(name: "female_percentage") String? femalePercentage,
    int? genderless,
    String? cycles,
    @JsonKey(name: "egg_groups") String? eggGroups,
    String? evolvedfrom,
    String? reason,
    @JsonKey(name: "base_exp") String? baseExp,
  }) = _HomeModel;

  factory HomeModel.fromJson(Map<String, dynamic> json) =>
      _$HomeModelFromJson(json);
}
