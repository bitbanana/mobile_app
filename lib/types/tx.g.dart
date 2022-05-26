// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tx.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Tx _$$_TxFromJson(Map<String, dynamic> json) => _$_Tx(
      s_addr: json['s_addr'] as String,
      s_sig_cont:
          SenderSigContent.fromJson(json['s_sig_cont'] as Map<String, dynamic>),
      s_sig: json['s_sig'] as String,
    );

Map<String, dynamic> _$$_TxToJson(_$_Tx instance) => <String, dynamic>{
      's_addr': instance.s_addr,
      's_sig_cont': instance.s_sig_cont,
      's_sig': instance.s_sig,
    };
