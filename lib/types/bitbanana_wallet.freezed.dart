// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'bitbanana_wallet.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BitbananaWallet _$BitbananaWalletFromJson(Map<String, dynamic> json) {
  return _BitbananaWallet.fromJson(json);
}

/// @nodoc
mixin _$BitbananaWallet {
  String get addr => throw _privateConstructorUsedError;
  String get jwk => throw _privateConstructorUsedError;
  int get balance_memo => throw _privateConstructorUsedError;
  String get nickname => throw _privateConstructorUsedError;
  String get created_at => throw _privateConstructorUsedError;
  String get version => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BitbananaWalletCopyWith<BitbananaWallet> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BitbananaWalletCopyWith<$Res> {
  factory $BitbananaWalletCopyWith(
          BitbananaWallet value, $Res Function(BitbananaWallet) then) =
      _$BitbananaWalletCopyWithImpl<$Res>;
  $Res call(
      {String addr,
      String jwk,
      int balance_memo,
      String nickname,
      String created_at,
      String version});
}

/// @nodoc
class _$BitbananaWalletCopyWithImpl<$Res>
    implements $BitbananaWalletCopyWith<$Res> {
  _$BitbananaWalletCopyWithImpl(this._value, this._then);

  final BitbananaWallet _value;
  // ignore: unused_field
  final $Res Function(BitbananaWallet) _then;

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
abstract class _$BitbananaWalletCopyWith<$Res>
    implements $BitbananaWalletCopyWith<$Res> {
  factory _$BitbananaWalletCopyWith(
          _BitbananaWallet value, $Res Function(_BitbananaWallet) then) =
      __$BitbananaWalletCopyWithImpl<$Res>;
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
class __$BitbananaWalletCopyWithImpl<$Res>
    extends _$BitbananaWalletCopyWithImpl<$Res>
    implements _$BitbananaWalletCopyWith<$Res> {
  __$BitbananaWalletCopyWithImpl(
      _BitbananaWallet _value, $Res Function(_BitbananaWallet) _then)
      : super(_value, (v) => _then(v as _BitbananaWallet));

  @override
  _BitbananaWallet get _value => super._value as _BitbananaWallet;

  @override
  $Res call({
    Object? addr = freezed,
    Object? jwk = freezed,
    Object? balance_memo = freezed,
    Object? nickname = freezed,
    Object? created_at = freezed,
    Object? version = freezed,
  }) {
    return _then(_BitbananaWallet(
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
class _$_BitbananaWallet implements _BitbananaWallet {
  const _$_BitbananaWallet(
      {required this.addr,
      required this.jwk,
      required this.balance_memo,
      required this.nickname,
      required this.created_at,
      required this.version});

  factory _$_BitbananaWallet.fromJson(Map<String, dynamic> json) =>
      _$$_BitbananaWalletFromJson(json);

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
    return 'BitbananaWallet(addr: $addr, jwk: $jwk, balance_memo: $balance_memo, nickname: $nickname, created_at: $created_at, version: $version)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BitbananaWallet &&
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
  _$BitbananaWalletCopyWith<_BitbananaWallet> get copyWith =>
      __$BitbananaWalletCopyWithImpl<_BitbananaWallet>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BitbananaWalletToJson(this);
  }
}

abstract class _BitbananaWallet implements BitbananaWallet {
  const factory _BitbananaWallet(
      {required final String addr,
      required final String jwk,
      required final int balance_memo,
      required final String nickname,
      required final String created_at,
      required final String version}) = _$_BitbananaWallet;

  factory _BitbananaWallet.fromJson(Map<String, dynamic> json) =
      _$_BitbananaWallet.fromJson;

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
  _$BitbananaWalletCopyWith<_BitbananaWallet> get copyWith =>
      throw _privateConstructorUsedError;
}
