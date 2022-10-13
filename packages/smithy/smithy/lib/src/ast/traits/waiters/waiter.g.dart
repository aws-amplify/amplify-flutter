// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'waiter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Waiter _$WaiterFromJson(Map<String, dynamic> json) => Waiter(
      documentation: json['documentation'] as String?,
      acceptors: (json['acceptors'] as List<dynamic>)
          .map((e) => AcceptorDefinition.fromJson(e as Object))
          .toList(),
      minDelay: json['minDelay'] as int? ?? Waiter.defaultMinDelay,
      maxDelay: json['maxDelay'] as int? ?? Waiter.defaultMaxDelay,
      tags:
          (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [],
    );

Map<String, dynamic> _$WaiterToJson(Waiter instance) => <String, dynamic>{
      'documentation': instance.documentation,
      'acceptors': instance.acceptors,
      'minDelay': instance.minDelay,
      'maxDelay': instance.maxDelay,
      'tags': instance.tags,
    };
