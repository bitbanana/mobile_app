// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bitfruit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BitFruit _$$_BitFruitFromJson(Map<String, dynamic> json) => _$_BitFruit(
      fruit_id: json['fruit_id'] as int,
      yyyymmdd: json['yyyymmdd'] as String,
      buy_count: json['buy_count'] as int,
      sell_count: json['sell_count'] as int,
      price_ytd: json['price_ytd'] as int,
      price: json['price'] as int,
    );

Map<String, dynamic> _$$_BitFruitToJson(_$_BitFruit instance) =>
    <String, dynamic>{
      'fruit_id': instance.fruit_id,
      'yyyymmdd': instance.yyyymmdd,
      'buy_count': instance.buy_count,
      'sell_count': instance.sell_count,
      'price_ytd': instance.price_ytd,
      'price': instance.price,
    };
