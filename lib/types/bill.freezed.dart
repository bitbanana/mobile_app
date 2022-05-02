// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'bill.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Bill _$BillFromJson(Map<String, dynamic> json) {
  return _Bill.fromJson(json);
}

/// @nodoc
mixin _$Bill {
// ID
  String get id => throw _privateConstructorUsedError; // 支払い用の Tx ID
  String get tx_id => throw _privateConstructorUsedError; // 送金者のアドレス
  String get s_addr => throw _privateConstructorUsedError; // 振込先のアドレス
  String get r_addr => throw _privateConstructorUsedError; // 作成日時
  String get created_at => throw _privateConstructorUsedError; // 金額
  int get amount => throw _privateConstructorUsedError; // 購入注文
  BuyOrder get buy_order => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BillCopyWith<Bill> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BillCopyWith<$Res> {
  factory $BillCopyWith(Bill value, $Res Function(Bill) then) =
      _$BillCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String tx_id,
      String s_addr,
      String r_addr,
      String created_at,
      int amount,
      BuyOrder buy_order});

  $BuyOrderCopyWith<$Res> get buy_order;
}

/// @nodoc
class _$BillCopyWithImpl<$Res> implements $BillCopyWith<$Res> {
  _$BillCopyWithImpl(this._value, this._then);

  final Bill _value;
  // ignore: unused_field
  final $Res Function(Bill) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? tx_id = freezed,
    Object? s_addr = freezed,
    Object? r_addr = freezed,
    Object? created_at = freezed,
    Object? amount = freezed,
    Object? buy_order = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      tx_id: tx_id == freezed
          ? _value.tx_id
          : tx_id // ignore: cast_nullable_to_non_nullable
              as String,
      s_addr: s_addr == freezed
          ? _value.s_addr
          : s_addr // ignore: cast_nullable_to_non_nullable
              as String,
      r_addr: r_addr == freezed
          ? _value.r_addr
          : r_addr // ignore: cast_nullable_to_non_nullable
              as String,
      created_at: created_at == freezed
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      buy_order: buy_order == freezed
          ? _value.buy_order
          : buy_order // ignore: cast_nullable_to_non_nullable
              as BuyOrder,
    ));
  }

  @override
  $BuyOrderCopyWith<$Res> get buy_order {
    return $BuyOrderCopyWith<$Res>(_value.buy_order, (value) {
      return _then(_value.copyWith(buy_order: value));
    });
  }
}

/// @nodoc
abstract class _$BillCopyWith<$Res> implements $BillCopyWith<$Res> {
  factory _$BillCopyWith(_Bill value, $Res Function(_Bill) then) =
      __$BillCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String tx_id,
      String s_addr,
      String r_addr,
      String created_at,
      int amount,
      BuyOrder buy_order});

  @override
  $BuyOrderCopyWith<$Res> get buy_order;
}

/// @nodoc
class __$BillCopyWithImpl<$Res> extends _$BillCopyWithImpl<$Res>
    implements _$BillCopyWith<$Res> {
  __$BillCopyWithImpl(_Bill _value, $Res Function(_Bill) _then)
      : super(_value, (v) => _then(v as _Bill));

  @override
  _Bill get _value => super._value as _Bill;

  @override
  $Res call({
    Object? id = freezed,
    Object? tx_id = freezed,
    Object? s_addr = freezed,
    Object? r_addr = freezed,
    Object? created_at = freezed,
    Object? amount = freezed,
    Object? buy_order = freezed,
  }) {
    return _then(_Bill(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      tx_id: tx_id == freezed
          ? _value.tx_id
          : tx_id // ignore: cast_nullable_to_non_nullable
              as String,
      s_addr: s_addr == freezed
          ? _value.s_addr
          : s_addr // ignore: cast_nullable_to_non_nullable
              as String,
      r_addr: r_addr == freezed
          ? _value.r_addr
          : r_addr // ignore: cast_nullable_to_non_nullable
              as String,
      created_at: created_at == freezed
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      buy_order: buy_order == freezed
          ? _value.buy_order
          : buy_order // ignore: cast_nullable_to_non_nullable
              as BuyOrder,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Bill implements _Bill {
  const _$_Bill(
      {required this.id,
      required this.tx_id,
      required this.s_addr,
      required this.r_addr,
      required this.created_at,
      required this.amount,
      required this.buy_order});

  factory _$_Bill.fromJson(Map<String, dynamic> json) => _$$_BillFromJson(json);

// ID
  @override
  final String id;
// 支払い用の Tx ID
  @override
  final String tx_id;
// 送金者のアドレス
  @override
  final String s_addr;
// 振込先のアドレス
  @override
  final String r_addr;
// 作成日時
  @override
  final String created_at;
// 金額
  @override
  final int amount;
// 購入注文
  @override
  final BuyOrder buy_order;

  @override
  String toString() {
    return 'Bill(id: $id, tx_id: $tx_id, s_addr: $s_addr, r_addr: $r_addr, created_at: $created_at, amount: $amount, buy_order: $buy_order)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Bill &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.tx_id, tx_id) &&
            const DeepCollectionEquality().equals(other.s_addr, s_addr) &&
            const DeepCollectionEquality().equals(other.r_addr, r_addr) &&
            const DeepCollectionEquality()
                .equals(other.created_at, created_at) &&
            const DeepCollectionEquality().equals(other.amount, amount) &&
            const DeepCollectionEquality().equals(other.buy_order, buy_order));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(tx_id),
      const DeepCollectionEquality().hash(s_addr),
      const DeepCollectionEquality().hash(r_addr),
      const DeepCollectionEquality().hash(created_at),
      const DeepCollectionEquality().hash(amount),
      const DeepCollectionEquality().hash(buy_order));

  @JsonKey(ignore: true)
  @override
  _$BillCopyWith<_Bill> get copyWith =>
      __$BillCopyWithImpl<_Bill>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BillToJson(this);
  }
}

abstract class _Bill implements Bill {
  const factory _Bill(
      {required final String id,
      required final String tx_id,
      required final String s_addr,
      required final String r_addr,
      required final String created_at,
      required final int amount,
      required final BuyOrder buy_order}) = _$_Bill;

  factory _Bill.fromJson(Map<String, dynamic> json) = _$_Bill.fromJson;

  @override // ID
  String get id => throw _privateConstructorUsedError;
  @override // 支払い用の Tx ID
  String get tx_id => throw _privateConstructorUsedError;
  @override // 送金者のアドレス
  String get s_addr => throw _privateConstructorUsedError;
  @override // 振込先のアドレス
  String get r_addr => throw _privateConstructorUsedError;
  @override // 作成日時
  String get created_at => throw _privateConstructorUsedError;
  @override // 金額
  int get amount => throw _privateConstructorUsedError;
  @override // 購入注文
  BuyOrder get buy_order => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BillCopyWith<_Bill> get copyWith => throw _privateConstructorUsedError;
}
