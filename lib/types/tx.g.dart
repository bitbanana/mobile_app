// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tx.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Tx _$$_TxFromJson(Map<String, dynamic> json) => _$_Tx(
      s_addr: json['s_addr'] as String,
      pages: (json['pages'] as List<dynamic>)
          .map((e) => TxPage.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_TxToJson(_$_Tx instance) => <String, dynamic>{
      's_addr': instance.s_addr,
      'pages': instance.pages,
    };
