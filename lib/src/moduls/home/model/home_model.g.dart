// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HomeModel _$$_HomeModelFromJson(Map<String, dynamic> json) => _$_HomeModel(
      name: json['name'] as String?,
      id: json['id'] as String?,
      imageurl: json['imageurl'] as String?,
      xdescription: json['xdescription'] as String?,
      ydescription: json['ydescription'] as String?,
      height: json['height'] as String?,
      category: json['category'] as String?,
      weight: json['weight'] as String?,
      typeofpokemon: (json['typeofpokemon'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      weaknesses: (json['weaknesses'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      evolutions: (json['evolutions'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      abilities: (json['abilities'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      hp: json['hp'] as int?,
      attack: json['attack'] as int?,
      defense: json['defense'] as int?,
      specialAttack: json['special_attack'] as int?,
      specialDefense: json['special_defense'] as int?,
      speed: json['speed'] as int?,
      total: json['total'] as int?,
      malePercentage: json['male_percentage'] as String?,
      femalePercentage: json['female_percentage'] as String?,
      genderless: json['genderless'] as int?,
      cycles: json['cycles'] as String?,
      eggGroups: json['egg_groups'] as String?,
      evolvedfrom: json['evolvedfrom'] as String?,
      reason: json['reason'] as String?,
      baseExp: json['base_exp'] as String?,
    );

Map<String, dynamic> _$$_HomeModelToJson(_$_HomeModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      'imageurl': instance.imageurl,
      'xdescription': instance.xdescription,
      'ydescription': instance.ydescription,
      'height': instance.height,
      'category': instance.category,
      'weight': instance.weight,
      'typeofpokemon': instance.typeofpokemon,
      'weaknesses': instance.weaknesses,
      'evolutions': instance.evolutions,
      'abilities': instance.abilities,
      'hp': instance.hp,
      'attack': instance.attack,
      'defense': instance.defense,
      'special_attack': instance.specialAttack,
      'special_defense': instance.specialDefense,
      'speed': instance.speed,
      'total': instance.total,
      'male_percentage': instance.malePercentage,
      'female_percentage': instance.femalePercentage,
      'genderless': instance.genderless,
      'cycles': instance.cycles,
      'egg_groups': instance.eggGroups,
      'evolvedfrom': instance.evolvedfrom,
      'reason': instance.reason,
      'base_exp': instance.baseExp,
    };
