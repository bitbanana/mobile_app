// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'tx.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Tx _$TxFromJson(Map<String, dynamic> json) {
  return _Tx.fromJson(json);
}

/// @nodoc
mixin _$Tx {
  String get s_addr => throw _privateConstructorUsedError;
  SenderSigContent get s_sig_cont => throw _privateConstructorUsedError;
  String get s_sig => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TxCopyWith<Tx> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TxCopyWith<$Res> {
  factory $TxCopyWith(Tx value, $Res Function(Tx) then) =
      _$TxCopyWithImpl<$Res>;
  $Res call({String s_addr, SenderSigContent s_sig_cont, String s_sig});

  $SenderSigContentCopyWith<$Res> get s_sig_cont;
}

/// @nodoc
class _$TxCopyWithImpl<$Res> implements $TxCopyWith<$Res> {
  _$TxCopyWithImpl(this._value, this._then);

  final Tx _value;
  // ignore: unused_field
  final $Res Function(Tx) _then;

  @override
  $Res call({
    Object? s_addr = freezed,
    Object? s_sig_cont = freezed,
    Object? s_sig = freezed,
  }) {
    return _then(_value.copyWith(
      s_addr: s_addr == freezed
          ? _value.s_addr
          : s_addr // ignore: cast_nullable_to_non_nullable
              as String,
      s_sig_cont: s_sig_cont == freezed
          ? _value.s_sig_cont
          : s_sig_cont // ignore: cast_nullable_to_non_nullable
              as SenderSigContent,
      s_sig: s_sig == freezed
          ? _value.s_sig
          : s_sig // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $SenderSigContentCopyWith<$Res> get s_sig_cont {
    return $SenderSigContentCopyWith<$Res>(_value.s_sig_cont, (value) {
      return _then(_value.copyWith(s_sig_cont: value));
    });
  }
}

/// @nodoc
abstract class _$TxCopyWith<$Res> implements $TxCopyWith<$Res> {
  factory _$TxCopyWith(_Tx value, $Res Function(_Tx) then) =
      __$TxCopyWithImpl<$Res>;
  @override
  $Res call({String s_addr, SenderSigContent s_sig_cont, String s_sig});

  @override
  $SenderSigContentCopyWith<$Res> get s_sig_cont;
}

/// @nodoc
class __$TxCopyWithImpl<$Res> extends _$TxCopyWithImpl<$Res>
    implements _$TxCopyWith<$Res> {
  __$TxCopyWithImpl(_Tx _value, $Res Function(_Tx) _then)
      : super(_value, (v) => _then(v as _Tx));

  @override
  _Tx get _value => super._value as _Tx;

  @override
  $Res call({
    Object? s_addr = freezed,
    Object? s_sig_cont = freezed,
    Object? s_sig = freezed,
  }) {
    return _then(_Tx(
      s_addr: s_addr == freezed
          ? _value.s_addr
          : s_addr // ignore: cast_nullable_to_non_nullable
              as String,
      s_sig_cont: s_sig_cont == freezed
          ? _value.s_sig_cont
          : s_sig_cont // ignore: cast_nullable_to_non_nullable
              as SenderSigContent,
      s_sig: s_sig == freezed
          ? _value.s_sig
          : s_sig // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Tx implements _Tx {
  const _$_Tx(
      {required this.s_addr, required this.s_sig_cont, required this.s_sig});

  factory _$_Tx.fromJson(Map<String, dynamic> json) => _$$_TxFromJson(json);

  @override
  final String s_addr;
  @override
  final SenderSigContent s_sig_cont;
  @override
  final String s_sig;

  @override
  String toString() {
    return 'Tx(s_addr: $s_addr, s_sig_cont: $s_sig_cont, s_sig: $s_sig)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Tx &&
            const DeepCollectionEquality().equals(other.s_addr, s_addr) &&
            const DeepCollectionEquality()
                .equals(other.s_sig_cont, s_sig_cont) &&
            const DeepCollectionEquality().equals(other.s_sig, s_sig));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(s_addr),
      const DeepCollectionEquality().hash(s_sig_cont),
      const DeepCollectionEquality().hash(s_sig));

  @JsonKey(ignore: true)
  @override
  _$TxCopyWith<_Tx> get copyWith => __$TxCopyWithImpl<_Tx>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TxToJson(this);
  }
}

abstract class _Tx implements Tx {
  const factory _Tx(
      {required final String s_addr,
      required final SenderSigContent s_sig_cont,
      required final String s_sig}) = _$_Tx;

  factory _Tx.fromJson(Map<String, dynamic> json) = _$_Tx.fromJson;

  @override
  String get s_addr => throw _privateConstructorUsedError;
  @override
  SenderSigContent get s_sig_cont => throw _privateConstructorUsedError;
  @override
  String get s_sig => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TxCopyWith<_Tx> get copyWith => throw _privateConstructorUsedError;
}
