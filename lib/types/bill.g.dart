// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bill.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Bill _$$_BillFromJson(Map<String, dynamic> json) => _$_Bill(
      id: json['id'] as String,
      tx_id: json['tx_id'] as String,
      s_addr: json['s_addr'] as String,
      r_addr: json['r_addr'] as String,
      created_at: json['created_at'] as String,
      amount: json['amount'] as int,
      buy_order: BuyOrder.fromJson(json['buy_order'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_BillToJson(_$_Bill instance) => <String, dynamic>{
      'id': instance.id,
      'tx_id': instance.tx_id,
      's_addr': instance.s_addr,
      'r_addr': instance.r_addr,
      'created_at': instance.created_at,
      'amount': instance.amount,
      'buy_order': instance.buy_order,
    };
