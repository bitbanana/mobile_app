// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'bitbanana_key.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BitbananaKey _$BitbananaKeyFromJson(Map<String, dynamic> json) {
  return _BitbananaKey.fromJson(json);
}

/// @nodoc
mixin _$BitbananaKey {
  String get addr => throw _privateConstructorUsedError;
  String get jwk => throw _privateConstructorUsedError;
  int get balance_memo => throw _privateConstructorUsedError;
  String get nickname => throw _privateConstructorUsedError;
  String get created_at => throw _privateConstructorUsedError;
  String get version => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BitbananaKeyCopyWith<BitbananaKey> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BitbananaKeyCopyWith<$Res> {
  factory $BitbananaKeyCopyWith(
          BitbananaKey value, $Res Function(BitbananaKey) then) =
      _$BitbananaKeyCopyWithImpl<$Res>;
  $Res call(
      {String addr,
      String jwk,
      int balance_memo,
      String nickname,
      String created_at,
      String version});
}

/// @nodoc
class _$BitbananaKeyCopyWithImpl<$Res> implements $BitbananaKeyCopyWith<$Res> {
  _$BitbananaKeyCopyWithImpl(this._value, this._then);

  final BitbananaKey _value;
  // ignore: unused_field
  final $Res Function(BitbananaKey) _then;

  @override
  $Res call({
    Object? addr = freezed,
    Object? jwk = freezed,
    Object? balance_memo = freezed,
    Object? nickname = freezed,
    Object? created_at = freezed,
    Object? version = freezed,
  }) {
    return _then(_value.copyWith(
      addr: addr == freezed
          ? _value.addr
          : addr // ignore: cast_nullable_to_non_nullable
              as String,
      jwk: jwk == freezed
          ? _value.jwk
          : jwk // ignore: cast_nullable_to_non_nullable
              as String,
      balance_memo: balance_memo == freezed
          ? _value.balance_memo
          : balance_memo // ignore: cast_nullable_to_non_nullable
              as int,
      nickname: nickname == freezed
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      created_at: created_at == freezed
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String,
      version: version == freezed
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$BitbananaKeyCopyWith<$Res>
    implements $BitbananaKeyCopyWith<$Res> {
  factory _$BitbananaKeyCopyWith(
          _BitbananaKey value, $Res Function(_BitbananaKey) then) =
      __$BitbananaKeyCopyWithImpl<$Res>;
  @override
  $Res call(
      {String addr,
      String jwk,
      int balance_memo,
      String nickname,
      String created_at,
      String version});
}

/// @nodoc
class __$BitbananaKeyCopyWithImpl<$Res> extends _$BitbananaKeyCopyWithImpl<$Res>
    implements _$BitbananaKeyCopyWith<$Res> {
  __$BitbananaKeyCopyWithImpl(
      _BitbananaKey _value, $Res Function(_BitbananaKey) _then)
      : super(_value, (v) => _then(v as _BitbananaKey));

  @override
  _BitbananaKey get _value => super._value as _BitbananaKey;

  @override
  $Res call({
    Object? addr = freezed,
    Object? jwk = freezed,
    Object? balance_memo = freezed,
    Object? nickname = freezed,
    Object? created_at = freezed,
    Object? version = freezed,
  }) {
    return _then(_BitbananaKey(
      addr: addr == freezed
          ? _value.addr
          : addr // ignore: cast_nullable_to_non_nullable
              as String,
      jwk: jwk == freezed
          ? _value.jwk
          : jwk // ignore: cast_nullable_to_non_nullable
              as String,
      balance_memo: balance_memo == freezed
          ? _value.balance_memo
          : balance_memo // ignore: cast_nullable_to_non_nullable
              as int,
      nickname: nickname == freezed
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      created_at: created_at == freezed
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String,
      version: version == freezed
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BitbananaKey implements _BitbananaKey {
  const _$_BitbananaKey(
      {required this.addr,
      required this.jwk,
      required this.balance_memo,
      required this.nickname,
      required this.created_at,
      required this.version});

  factory _$_BitbananaKey.fromJson(Map<String, dynamic> json) =>
      _$$_BitbananaKeyFromJson(json);

  @override
  final String addr;
  @override
  final String jwk;
  @override
  final int balance_memo;
  @override
  final String nickname;
  @override
  final String created_at;
  @override
  final String version;

  @override
  String toString() {
    return 'BitbananaKey(addr: $addr, jwk: $jwk, balance_memo: $balance_memo, nickname: $nickname, created_at: $created_at, version: $version)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BitbananaKey &&
            const DeepCollectionEquality().equals(other.addr, addr) &&
            const DeepCollectionEquality().equals(other.jwk, jwk) &&
            const DeepCollectionEquality()
                .equals(other.balance_memo, balance_memo) &&
            const DeepCollectionEquality().equals(other.nickname, nickname) &&
            const DeepCollectionEquality()
                .equals(other.created_at, created_at) &&
            const DeepCollectionEquality().equals(other.version, version));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(addr),
      const DeepCollectionEquality().hash(jwk),
      const DeepCollectionEquality().hash(balance_memo),
      const DeepCollectionEquality().hash(nickname),
      const DeepCollectionEquality().hash(created_at),
      const DeepCollectionEquality().hash(version));

  @JsonKey(ignore: true)
  @override
  _$BitbananaKeyCopyWith<_BitbananaKey> get copyWith =>
      __$BitbananaKeyCopyWithImpl<_BitbananaKey>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BitbananaKeyToJson(this);
  }
}

abstract class _BitbananaKey implements BitbananaKey {
  const factory _BitbananaKey(
      {required final String addr,
      required final String jwk,
      required final int balance_memo,
      required final String nickname,
      required final String created_at,
      required final String version}) = _$_BitbananaKey;

  factory _BitbananaKey.fromJson(Map<String, dynamic> json) =
      _$_BitbananaKey.fromJson;

  @override
  String get addr => throw _privateConstructorUsedError;
  @override
  String get jwk => throw _privateConstructorUsedError;
  @override
  int get balance_memo => throw _privateConstructorUsedError;
  @override
  String get nickname => throw _privateConstructorUsedError;
  @override
  String get created_at => throw _privateConstructorUsedError;
  @override
  String get version => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BitbananaKeyCopyWith<_BitbananaKey> get copyWith =>
      throw _privateConstructorUsedError;
}
