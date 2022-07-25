// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'waitable_trait.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WaitableTrait _$WaitableTraitFromJson(Map<String, dynamic> json) =>
    WaitableTrait(
      (json['waiters'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, Waiter.fromJson(e as Object)),
      ),
    );

Map<String, dynamic> _$WaitableTraitToJson(WaitableTrait instance) =>
    <String, dynamic>{
      'waiters': instance.waiters,
    };
