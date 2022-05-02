// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'day_fruit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DayFruit _$DayFruitFromJson(Map<String, dynamic> json) {
  return _DayFruit.fromJson(json);
}

/// @nodoc
mixin _$DayFruit {
// ビットフルーツ ID
  int get fruit_id => throw _privateConstructorUsedError; // 日付
  String get yyyymmdd => throw _privateConstructorUsedError; // 買われた数
  int get buy_count => throw _privateConstructorUsedError; // 売られた数
  int get sell_count => throw _privateConstructorUsedError; // 昨日の価格
  int get price_ytd => throw _privateConstructorUsedError; // 現在の価格
  int get price => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DayFruitCopyWith<DayFruit> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DayFruitCopyWith<$Res> {
  factory $DayFruitCopyWith(DayFruit value, $Res Function(DayFruit) then) =
      _$DayFruitCopyWithImpl<$Res>;
  $Res call(
      {int fruit_id,
      String yyyymmdd,
      int buy_count,
      int sell_count,
      int price_ytd,
      int price});
}

/// @nodoc
class _$DayFruitCopyWithImpl<$Res> implements $DayFruitCopyWith<$Res> {
  _$DayFruitCopyWithImpl(this._value, this._then);

  final DayFruit _value;
  // ignore: unused_field
  final $Res Function(DayFruit) _then;

  @override
  $Res call({
    Object? fruit_id = freezed,
    Object? yyyymmdd = freezed,
    Object? buy_count = freezed,
    Object? sell_count = freezed,
    Object? price_ytd = freezed,
    Object? price = freezed,
  }) {
    return _then(_value.copyWith(
      fruit_id: fruit_id == freezed
          ? _value.fruit_id
          : fruit_id // ignore: cast_nullable_to_non_nullable
              as int,
      yyyymmdd: yyyymmdd == freezed
          ? _value.yyyymmdd
          : yyyymmdd // ignore: cast_nullable_to_non_nullable
              as String,
      buy_count: buy_count == freezed
          ? _value.buy_count
          : buy_count // ignore: cast_nullable_to_non_nullable
              as int,
      sell_count: sell_count == freezed
          ? _value.sell_count
          : sell_count // ignore: cast_nullable_to_non_nullable
              as int,
      price_ytd: price_ytd == freezed
          ? _value.price_ytd
          : price_ytd // ignore: cast_nullable_to_non_nullable
              as int,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$DayFruitCopyWith<$Res> implements $DayFruitCopyWith<$Res> {
  factory _$DayFruitCopyWith(_DayFruit value, $Res Function(_DayFruit) then) =
      __$DayFruitCopyWithImpl<$Res>;
  @override
  $Res call(
      {int fruit_id,
      String yyyymmdd,
      int buy_count,
      int sell_count,
      int price_ytd,
      int price});
}

/// @nodoc
class __$DayFruitCopyWithImpl<$Res> extends _$DayFruitCopyWithImpl<$Res>
    implements _$DayFruitCopyWith<$Res> {
  __$DayFruitCopyWithImpl(_DayFruit _value, $Res Function(_DayFruit) _then)
      : super(_value, (v) => _then(v as _DayFruit));

  @override
  _DayFruit get _value => super._value as _DayFruit;

  @override
  $Res call({
    Object? fruit_id = freezed,
    Object? yyyymmdd = freezed,
    Object? buy_count = freezed,
    Object? sell_count = freezed,
    Object? price_ytd = freezed,
    Object? price = freezed,
  }) {
    return _then(_DayFruit(
      fruit_id: fruit_id == freezed
          ? _value.fruit_id
          : fruit_id // ignore: cast_nullable_to_non_nullable
              as int,
      yyyymmdd: yyyymmdd == freezed
          ? _value.yyyymmdd
          : yyyymmdd // ignore: cast_nullable_to_non_nullable
              as String,
      buy_count: buy_count == freezed
          ? _value.buy_count
          : buy_count // ignore: cast_nullable_to_non_nullable
              as int,
      sell_count: sell_count == freezed
          ? _value.sell_count
          : sell_count // ignore: cast_nullable_to_non_nullable
              as int,
      price_ytd: price_ytd == freezed
          ? _value.price_ytd
          : price_ytd // ignore: cast_nullable_to_non_nullable
              as int,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DayFruit implements _DayFruit {
  const _$_DayFruit(
      {required this.fruit_id,
      required this.yyyymmdd,
      required this.buy_count,
      required this.sell_count,
      required this.price_ytd,
      required this.price});

  factory _$_DayFruit.fromJson(Map<String, dynamic> json) =>
      _$$_DayFruitFromJson(json);

// ビットフルーツ ID
  @override
  final int fruit_id;
// 日付
  @override
  final String yyyymmdd;
// 買われた数
  @override
  final int buy_count;
// 売られた数
  @override
  final int sell_count;
// 昨日の価格
  @override
  final int price_ytd;
// 現在の価格
  @override
  final int price;

  @override
  String toString() {
    return 'DayFruit(fruit_id: $fruit_id, yyyymmdd: $yyyymmdd, buy_count: $buy_count, sell_count: $sell_count, price_ytd: $price_ytd, price: $price)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DayFruit &&
            const DeepCollectionEquality().equals(other.fruit_id, fruit_id) &&
            const DeepCollectionEquality().equals(other.yyyymmdd, yyyymmdd) &&
            const DeepCollectionEquality().equals(other.buy_count, buy_count) &&
            const DeepCollectionEquality()
                .equals(other.sell_count, sell_count) &&
            const DeepCollectionEquality().equals(other.price_ytd, price_ytd) &&
            const DeepCollectionEquality().equals(other.price, price));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(fruit_id),
      const DeepCollectionEquality().hash(yyyymmdd),
      const DeepCollectionEquality().hash(buy_count),
      const DeepCollectionEquality().hash(sell_count),
      const DeepCollectionEquality().hash(price_ytd),
      const DeepCollectionEquality().hash(price));

  @JsonKey(ignore: true)
  @override
  _$DayFruitCopyWith<_DayFruit> get copyWith =>
      __$DayFruitCopyWithImpl<_DayFruit>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DayFruitToJson(this);
  }
}

abstract class _DayFruit implements DayFruit {
  const factory _DayFruit(
      {required final int fruit_id,
      required final String yyyymmdd,
      required final int buy_count,
      required final int sell_count,
      required final int price_ytd,
      required final int price}) = _$_DayFruit;

  factory _DayFruit.fromJson(Map<String, dynamic> json) = _$_DayFruit.fromJson;

  @override // ビットフルーツ ID
  int get fruit_id => throw _privateConstructorUsedError;
  @override // 日付
  String get yyyymmdd => throw _privateConstructorUsedError;
  @override // 買われた数
  int get buy_count => throw _privateConstructorUsedError;
  @override // 売られた数
  int get sell_count => throw _privateConstructorUsedError;
  @override // 昨日の価格
  int get price_ytd => throw _privateConstructorUsedError;
  @override // 現在の価格
  int get price => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DayFruitCopyWith<_DayFruit> get copyWith =>
      throw _privateConstructorUsedError;
}
