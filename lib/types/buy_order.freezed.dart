// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'buy_order.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BuyOrder _$BuyOrderFromJson(Map<String, dynamic> json) {
  return _BuyOrder.fromJson(json);
}

/// @nodoc
mixin _$BuyOrder {
// 購入者のアドレス
  String get addr => throw _privateConstructorUsedError; // 購入するビットフルーツのID
  int get fruit_id => throw _privateConstructorUsedError; // 個数
  int get count => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BuyOrderCopyWith<BuyOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BuyOrderCopyWith<$Res> {
  factory $BuyOrderCopyWith(BuyOrder value, $Res Function(BuyOrder) then) =
      _$BuyOrderCopyWithImpl<$Res>;
  $Res call({String addr, int fruit_id, int count});
}

/// @nodoc
class _$BuyOrderCopyWithImpl<$Res> implements $BuyOrderCopyWith<$Res> {
  _$BuyOrderCopyWithImpl(this._value, this._then);

  final BuyOrder _value;
  // ignore: unused_field
  final $Res Function(BuyOrder) _then;

  @override
  $Res call({
    Object? addr = freezed,
    Object? fruit_id = freezed,
    Object? count = freezed,
  }) {
    return _then(_value.copyWith(
      addr: addr == freezed
          ? _value.addr
          : addr // ignore: cast_nullable_to_non_nullable
              as String,
      fruit_id: fruit_id == freezed
          ? _value.fruit_id
          : fruit_id // ignore: cast_nullable_to_non_nullable
              as int,
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$BuyOrderCopyWith<$Res> implements $BuyOrderCopyWith<$Res> {
  factory _$BuyOrderCopyWith(_BuyOrder value, $Res Function(_BuyOrder) then) =
      __$BuyOrderCopyWithImpl<$Res>;
  @override
  $Res call({String addr, int fruit_id, int count});
}

/// @nodoc
class __$BuyOrderCopyWithImpl<$Res> extends _$BuyOrderCopyWithImpl<$Res>
    implements _$BuyOrderCopyWith<$Res> {
  __$BuyOrderCopyWithImpl(_BuyOrder _value, $Res Function(_BuyOrder) _then)
      : super(_value, (v) => _then(v as _BuyOrder));

  @override
  _BuyOrder get _value => super._value as _BuyOrder;

  @override
  $Res call({
    Object? addr = freezed,
    Object? fruit_id = freezed,
    Object? count = freezed,
  }) {
    return _then(_BuyOrder(
      addr: addr == freezed
          ? _value.addr
          : addr // ignore: cast_nullable_to_non_nullable
              as String,
      fruit_id: fruit_id == freezed
          ? _value.fruit_id
          : fruit_id // ignore: cast_nullable_to_non_nullable
              as int,
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BuyOrder implements _BuyOrder {
  const _$_BuyOrder(
      {required this.addr, required this.fruit_id, required this.count});

  factory _$_BuyOrder.fromJson(Map<String, dynamic> json) =>
      _$$_BuyOrderFromJson(json);

// 購入者のアドレス
  @override
  final String addr;
// 購入するビットフルーツのID
  @override
  final int fruit_id;
// 個数
  @override
  final int count;

  @override
  String toString() {
    return 'BuyOrder(addr: $addr, fruit_id: $fruit_id, count: $count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BuyOrder &&
            const DeepCollectionEquality().equals(other.addr, addr) &&
            const DeepCollectionEquality().equals(other.fruit_id, fruit_id) &&
            const DeepCollectionEquality().equals(other.count, count));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(addr),
      const DeepCollectionEquality().hash(fruit_id),
      const DeepCollectionEquality().hash(count));

  @JsonKey(ignore: true)
  @override
  _$BuyOrderCopyWith<_BuyOrder> get copyWith =>
      __$BuyOrderCopyWithImpl<_BuyOrder>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BuyOrderToJson(this);
  }
}

abstract class _BuyOrder implements BuyOrder {
  const factory _BuyOrder(
      {required final String addr,
      required final int fruit_id,
      required final int count}) = _$_BuyOrder;

  factory _BuyOrder.fromJson(Map<String, dynamic> json) = _$_BuyOrder.fromJson;

  @override // 購入者のアドレス
  String get addr => throw _privateConstructorUsedError;
  @override // 購入するビットフルーツのID
  int get fruit_id => throw _privateConstructorUsedError;
  @override // 個数
  int get count => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BuyOrderCopyWith<_BuyOrder> get copyWith =>
      throw _privateConstructorUsedError;
}
