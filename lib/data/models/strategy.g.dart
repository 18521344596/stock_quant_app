// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'strategy.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StrategyImpl _$$StrategyImplFromJson(Map<String, dynamic> json) =>
    _$StrategyImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      isActive: json['isActive'] as bool? ?? false,
      parameters: json['parameters'] as Map<String, dynamic>,
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$StrategyImplToJson(_$StrategyImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'isActive': instance.isActive,
      'parameters': instance.parameters,
      'createdAt': instance.createdAt.toIso8601String(),
    };
