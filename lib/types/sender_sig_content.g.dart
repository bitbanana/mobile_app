// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sender_sig_content.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SenderSigContent _$$_SenderSigContentFromJson(Map<String, dynamic> json) =>
    _$_SenderSigContent(
      addr: json['addr'] as String,
      tx_id: json['tx_id'] as String,
      tx_page: json['tx_page'] as int,
      tx_all_pages: json['tx_all_pages'] as int,
      r_addr: json['r_addr'] as String,
      amount: json['amount'] as int,
      fee: json['fee'] as int,
    );

Map<String, dynamic> _$$_SenderSigContentToJson(_$_SenderSigContent instance) =>
    <String, dynamic>{
      'addr': instance.addr,
      'tx_id': instance.tx_id,
      'tx_page': instance.tx_page,
      'tx_all_pages': instance.tx_all_pages,
      'r_addr': instance.r_addr,
      'amount': instance.amount,
      'fee': instance.fee,
    };
