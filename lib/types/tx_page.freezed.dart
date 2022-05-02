// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'tx_page.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TxPage _$TxPageFromJson(Map<String, dynamic> json) {
  return _TxPage.fromJson(json);
}

/// @nodoc
mixin _$TxPage {
  SenderSigContent get cont => throw _privateConstructorUsedError;
  String get s_sig => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TxPageCopyWith<TxPage> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TxPageCopyWith<$Res> {
  factory $TxPageCopyWith(TxPage value, $Res Function(TxPage) then) =
      _$TxPageCopyWithImpl<$Res>;
  $Res call({SenderSigContent cont, String s_sig});

  $SenderSigContentCopyWith<$Res> get cont;
}

/// @nodoc
class _$TxPageCopyWithImpl<$Res> implements $TxPageCopyWith<$Res> {
  _$TxPageCopyWithImpl(this._value, this._then);

  final TxPage _value;
  // ignore: unused_field
  final $Res Function(TxPage) _then;

  @override
  $Res call({
    Object? cont = freezed,
    Object? s_sig = freezed,
  }) {
    return _then(_value.copyWith(
      cont: cont == freezed
          ? _value.cont
          : cont // ignore: cast_nullable_to_non_nullable
              as SenderSigContent,
      s_sig: s_sig == freezed
          ? _value.s_sig
          : s_sig // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $SenderSigContentCopyWith<$Res> get cont {
    return $SenderSigContentCopyWith<$Res>(_value.cont, (value) {
      return _then(_value.copyWith(cont: value));
    });
  }
}

/// @nodoc
abstract class _$TxPageCopyWith<$Res> implements $TxPageCopyWith<$Res> {
  factory _$TxPageCopyWith(_TxPage value, $Res Function(_TxPage) then) =
      __$TxPageCopyWithImpl<$Res>;
  @override
  $Res call({SenderSigContent cont, String s_sig});

  @override
  $SenderSigContentCopyWith<$Res> get cont;
}

/// @nodoc
class __$TxPageCopyWithImpl<$Res> extends _$TxPageCopyWithImpl<$Res>
    implements _$TxPageCopyWith<$Res> {
  __$TxPageCopyWithImpl(_TxPage _value, $Res Function(_TxPage) _then)
      : super(_value, (v) => _then(v as _TxPage));

  @override
  _TxPage get _value => super._value as _TxPage;

  @override
  $Res call({
    Object? cont = freezed,
    Object? s_sig = freezed,
  }) {
    return _then(_TxPage(
      cont: cont == freezed
          ? _value.cont
          : cont // ignore: cast_nullable_to_non_nullable
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
class _$_TxPage implements _TxPage {
  const _$_TxPage({required this.cont, required this.s_sig});

  factory _$_TxPage.fromJson(Map<String, dynamic> json) =>
      _$$_TxPageFromJson(json);

  @override
  final SenderSigContent cont;
  @override
  final String s_sig;

  @override
  String toString() {
    return 'TxPage(cont: $cont, s_sig: $s_sig)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TxPage &&
            const DeepCollectionEquality().equals(other.cont, cont) &&
            const DeepCollectionEquality().equals(other.s_sig, s_sig));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(cont),
      const DeepCollectionEquality().hash(s_sig));

  @JsonKey(ignore: true)
  @override
  _$TxPageCopyWith<_TxPage> get copyWith =>
      __$TxPageCopyWithImpl<_TxPage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TxPageToJson(this);
  }
}

abstract class _TxPage implements TxPage {
  const factory _TxPage(
      {required final SenderSigContent cont,
      required final String s_sig}) = _$_TxPage;

  factory _TxPage.fromJson(Map<String, dynamic> json) = _$_TxPage.fromJson;

  @override
  SenderSigContent get cont => throw _privateConstructorUsedError;
  @override
  String get s_sig => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TxPageCopyWith<_TxPage> get copyWith => throw _privateConstructorUsedError;
}
