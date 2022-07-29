// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'acceptor_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AcceptorDefinition _$AcceptorDefinitionFromJson(Map<String, dynamic> json) =>
    AcceptorDefinition(
      state: $enumDecode(_$AcceptorStateEnumMap, json['state']),
      matcher: Matcher.fromJson(json['matcher'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AcceptorDefinitionToJson(AcceptorDefinition instance) =>
    <String, dynamic>{
      'state': _$AcceptorStateEnumMap[instance.state]!,
      'matcher': instance.matcher,
    };

const _$AcceptorStateEnumMap = {
  AcceptorState.success: 'success',
  AcceptorState.failure: 'failure',
  AcceptorState.retry: 'retry',
};
