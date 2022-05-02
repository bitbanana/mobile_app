// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sender_sig_content.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SenderSigContent _$SenderSigContentFromJson(Map<String, dynamic> json) {
  return _SenderSigContent.fromJson(json);
}

/// @nodoc
mixin _$SenderSigContent {
  String get addr => throw _privateConstructorUsedError;
  String get tx_id => throw _privateConstructorUsedError;
  int get tx_page => throw _privateConstructorUsedError;
  int get tx_all_pages => throw _privateConstructorUsedError;
  String get r_addr => throw _privateConstructorUsedError;
  int get amount => throw _privateConstructorUsedError;
  int get fee => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SenderSigContentCopyWith<SenderSigContent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SenderSigContentCopyWith<$Res> {
  factory $SenderSigContentCopyWith(
          SenderSigContent value, $Res Function(SenderSigContent) then) =
      _$SenderSigContentCopyWithImpl<$Res>;
  $Res call(
      {String addr,
      String tx_id,
      int tx_page,
      int tx_all_pages,
      String r_addr,
      int amount,
      int fee});
}

/// @nodoc
class _$SenderSigContentCopyWithImpl<$Res>
    implements $SenderSigContentCopyWith<$Res> {
  _$SenderSigContentCopyWithImpl(this._value, this._then);

  final SenderSigContent _value;
  // ignore: unused_field
  final $Res Function(SenderSigContent) _then;

  @override
  $Res call({
    Object? addr = freezed,
    Object? tx_id = freezed,
    Object? tx_page = freezed,
    Object? tx_all_pages = freezed,
    Object? r_addr = freezed,
    Object? amount = freezed,
    Object? fee = freezed,
  }) {
    return _then(_value.copyWith(
      addr: addr == freezed
          ? _value.addr
          : addr // ignore: cast_nullable_to_non_nullable
              as String,
      tx_id: tx_id == freezed
          ? _value.tx_id
          : tx_id // ignore: cast_nullable_to_non_nullable
              as String,
      tx_page: tx_page == freezed
          ? _value.tx_page
          : tx_page // ignore: cast_nullable_to_non_nullable
              as int,
      tx_all_pages: tx_all_pages == freezed
          ? _value.tx_all_pages
          : tx_all_pages // ignore: cast_nullable_to_non_nullable
              as int,
      r_addr: r_addr == freezed
          ? _value.r_addr
          : r_addr // ignore: cast_nullable_to_non_nullable
              as String,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      fee: fee == freezed
          ? _value.fee
          : fee // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$SenderSigContentCopyWith<$Res>
    implements $SenderSigContentCopyWith<$Res> {
  factory _$SenderSigContentCopyWith(
          _SenderSigContent value, $Res Function(_SenderSigContent) then) =
      __$SenderSigContentCopyWithImpl<$Res>;
  @override
  $Res call(
      {String addr,
      String tx_id,
      int tx_page,
      int tx_all_pages,
      String r_addr,
      int amount,
      int fee});
}

/// @nodoc
class __$SenderSigContentCopyWithImpl<$Res>
    extends _$SenderSigContentCopyWithImpl<$Res>
    implements _$SenderSigContentCopyWith<$Res> {
  __$SenderSigContentCopyWithImpl(
      _SenderSigContent _value, $Res Function(_SenderSigContent) _then)
      : super(_value, (v) => _then(v as _SenderSigContent));

  @override
  _SenderSigContent get _value => super._value as _SenderSigContent;

  @override
  $Res call({
    Object? addr = freezed,
    Object? tx_id = freezed,
    Object? tx_page = freezed,
    Object? tx_all_pages = freezed,
    Object? r_addr = freezed,
    Object? amount = freezed,
    Object? fee = freezed,
  }) {
    return _then(_SenderSigContent(
      addr: addr == freezed
          ? _value.addr
          : addr // ignore: cast_nullable_to_non_nullable
              as String,
      tx_id: tx_id == freezed
          ? _value.tx_id
          : tx_id // ignore: cast_nullable_to_non_nullable
              as String,
      tx_page: tx_page == freezed
          ? _value.tx_page
          : tx_page // ignore: cast_nullable_to_non_nullable
              as int,
      tx_all_pages: tx_all_pages == freezed
          ? _value.tx_all_pages
          : tx_all_pages // ignore: cast_nullable_to_non_nullable
              as int,
      r_addr: r_addr == freezed
          ? _value.r_addr
          : r_addr // ignore: cast_nullable_to_non_nullable
              as String,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      fee: fee == freezed
          ? _value.fee
          : fee // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SenderSigContent implements _SenderSigContent {
  const _$_SenderSigContent(
      {required this.addr,
      required this.tx_id,
      required this.tx_page,
      required this.tx_all_pages,
      required this.r_addr,
      required this.amount,
      required this.fee});

  factory _$_SenderSigContent.fromJson(Map<String, dynamic> json) =>
      _$$_SenderSigContentFromJson(json);

  @override
  final String addr;
  @override
  final String tx_id;
  @override
  final int tx_page;
  @override
  final int tx_all_pages;
  @override
  final String r_addr;
  @override
  final int amount;
  @override
  final int fee;

  @override
  String toString() {
    return 'SenderSigContent(addr: $addr, tx_id: $tx_id, tx_page: $tx_page, tx_all_pages: $tx_all_pages, r_addr: $r_addr, amount: $amount, fee: $fee)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SenderSigContent &&
            const DeepCollectionEquality().equals(other.addr, addr) &&
            const DeepCollectionEquality().equals(other.tx_id, tx_id) &&
            const DeepCollectionEquality().equals(other.tx_page, tx_page) &&
            const DeepCollectionEquality()
                .equals(other.tx_all_pages, tx_all_pages) &&
            const DeepCollectionEquality().equals(other.r_addr, r_addr) &&
            const DeepCollectionEquality().equals(other.amount, amount) &&
            const DeepCollectionEquality().equals(other.fee, fee));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(addr),
      const DeepCollectionEquality().hash(tx_id),
      const DeepCollectionEquality().hash(tx_page),
      const DeepCollectionEquality().hash(tx_all_pages),
      const DeepCollectionEquality().hash(r_addr),
      const DeepCollectionEquality().hash(amount),
      const DeepCollectionEquality().hash(fee));

  @JsonKey(ignore: true)
  @override
  _$SenderSigContentCopyWith<_SenderSigContent> get copyWith =>
      __$SenderSigContentCopyWithImpl<_SenderSigContent>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SenderSigContentToJson(this);
  }
}

abstract class _SenderSigContent implements SenderSigContent {
  const factory _SenderSigContent(
      {required final String addr,
      required final String tx_id,
      required final int tx_page,
      required final int tx_all_pages,
      required final String r_addr,
      required final int amount,
      required final int fee}) = _$_SenderSigContent;

  factory _SenderSigContent.fromJson(Map<String, dynamic> json) =
      _$_SenderSigContent.fromJson;

  @override
  String get addr => throw _privateConstructorUsedError;
  @override
  String get tx_id => throw _privateConstructorUsedError;
  @override
  int get tx_page => throw _privateConstructorUsedError;
  @override
  int get tx_all_pages => throw _privateConstructorUsedError;
  @override
  String get r_addr => throw _privateConstructorUsedError;
  @override
  int get amount => throw _privateConstructorUsedError;
  @override
  int get fee => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SenderSigContentCopyWith<_SenderSigContent> get copyWith =>
      throw _privateConstructorUsedError;
}
