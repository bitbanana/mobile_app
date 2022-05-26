// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sender_sig_content.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SenderSigContent _$$_SenderSigContentFromJson(Map<String, dynamic> json) =>
    _$_SenderSigContent(
      tx_id: json['tx_id'] as String,
      r_addr: json['r_addr'] as String,
      amount: json['amount'] as int,
      fee: json['fee'] as int,
    );

Map<String, dynamic> _$$_SenderSigContentToJson(_$_SenderSigContent instance) =>
    <String, dynamic>{
      'tx_id': instance.tx_id,
      'r_addr': instance.r_addr,
      'amount': instance.amount,
      'fee': instance.fee,
    };
