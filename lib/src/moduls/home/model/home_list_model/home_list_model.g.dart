// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HomeListModel _$$_HomeListModelFromJson(Map<String, dynamic> json) =>
    _$_HomeListModel(
      homelistmodel: (json['homelistmodel'] as List<dynamic>?)
          ?.map((e) => HomeModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_HomeListModelToJson(_$_HomeListModel instance) =>
    <String, dynamic>{
      'homelistmodel': instance.homelistmodel,
    };
