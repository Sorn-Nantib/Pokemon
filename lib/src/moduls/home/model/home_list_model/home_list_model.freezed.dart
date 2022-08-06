// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HomeListModel _$HomeListModelFromJson(Map<String, dynamic> json) {
  return _HomeListModel.fromJson(json);
}

/// @nodoc
mixin _$HomeListModel {
  List<HomeModel>? get homelistmodel => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomeListModelCopyWith<HomeListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeListModelCopyWith<$Res> {
  factory $HomeListModelCopyWith(
          HomeListModel value, $Res Function(HomeListModel) then) =
      _$HomeListModelCopyWithImpl<$Res>;
  $Res call({List<HomeModel>? homelistmodel});
}

/// @nodoc
class _$HomeListModelCopyWithImpl<$Res>
    implements $HomeListModelCopyWith<$Res> {
  _$HomeListModelCopyWithImpl(this._value, this._then);

  final HomeListModel _value;
  // ignore: unused_field
  final $Res Function(HomeListModel) _then;

  @override
  $Res call({
    Object? homelistmodel = freezed,
  }) {
    return _then(_value.copyWith(
      homelistmodel: homelistmodel == freezed
          ? _value.homelistmodel
          : homelistmodel // ignore: cast_nullable_to_non_nullable
              as List<HomeModel>?,
    ));
  }
}

/// @nodoc
abstract class _$$_HomeListModelCopyWith<$Res>
    implements $HomeListModelCopyWith<$Res> {
  factory _$$_HomeListModelCopyWith(
          _$_HomeListModel value, $Res Function(_$_HomeListModel) then) =
      __$$_HomeListModelCopyWithImpl<$Res>;
  @override
  $Res call({List<HomeModel>? homelistmodel});
}

/// @nodoc
class __$$_HomeListModelCopyWithImpl<$Res>
    extends _$HomeListModelCopyWithImpl<$Res>
    implements _$$_HomeListModelCopyWith<$Res> {
  __$$_HomeListModelCopyWithImpl(
      _$_HomeListModel _value, $Res Function(_$_HomeListModel) _then)
      : super(_value, (v) => _then(v as _$_HomeListModel));

  @override
  _$_HomeListModel get _value => super._value as _$_HomeListModel;

  @override
  $Res call({
    Object? homelistmodel = freezed,
  }) {
    return _then(_$_HomeListModel(
      homelistmodel: homelistmodel == freezed
          ? _value._homelistmodel
          : homelistmodel // ignore: cast_nullable_to_non_nullable
              as List<HomeModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HomeListModel implements _HomeListModel {
  _$_HomeListModel({final List<HomeModel>? homelistmodel})
      : _homelistmodel = homelistmodel;

  factory _$_HomeListModel.fromJson(Map<String, dynamic> json) =>
      _$$_HomeListModelFromJson(json);

  final List<HomeModel>? _homelistmodel;
  @override
  List<HomeModel>? get homelistmodel {
    final value = _homelistmodel;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'HomeListModel(homelistmodel: $homelistmodel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeListModel &&
            const DeepCollectionEquality()
                .equals(other._homelistmodel, _homelistmodel));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_homelistmodel));

  @JsonKey(ignore: true)
  @override
  _$$_HomeListModelCopyWith<_$_HomeListModel> get copyWith =>
      __$$_HomeListModelCopyWithImpl<_$_HomeListModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HomeListModelToJson(
      this,
    );
  }
}

abstract class _HomeListModel implements HomeListModel {
  factory _HomeListModel({final List<HomeModel>? homelistmodel}) =
      _$_HomeListModel;

  factory _HomeListModel.fromJson(Map<String, dynamic> json) =
      _$_HomeListModel.fromJson;

  @override
  List<HomeModel>? get homelistmodel;
  @override
  @JsonKey(ignore: true)
  _$$_HomeListModelCopyWith<_$_HomeListModel> get copyWith =>
      throw _privateConstructorUsedError;
}
