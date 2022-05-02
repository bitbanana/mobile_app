// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tx_page.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TxPage _$$_TxPageFromJson(Map<String, dynamic> json) => _$_TxPage(
      cont: SenderSigContent.fromJson(json['cont'] as Map<String, dynamic>),
      s_sig: json['s_sig'] as String,
    );

Map<String, dynamic> _$$_TxPageToJson(_$_TxPage instance) => <String, dynamic>{
      'cont': instance.cont,
      's_sig': instance.s_sig,
    };
