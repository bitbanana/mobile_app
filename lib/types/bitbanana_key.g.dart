// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bitbanana_key.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BitbananaKey _$$_BitbananaKeyFromJson(Map<String, dynamic> json) =>
    _$_BitbananaKey(
      addr: json['addr'] as String,
      jwk: json['jwk'] as String,
      balance_memo: json['balance_memo'] as int,
      nickname: json['nickname'] as String,
      created_at: json['created_at'] as String,
      version: json['version'] as String,
    );

Map<String, dynamic> _$$_BitbananaKeyToJson(_$_BitbananaKey instance) =>
    <String, dynamic>{
      'addr': instance.addr,
      'jwk': instance.jwk,
      'balance_memo': instance.balance_memo,
      'nickname': instance.nickname,
      'created_at': instance.created_at,
      'version': instance.version,
    };
