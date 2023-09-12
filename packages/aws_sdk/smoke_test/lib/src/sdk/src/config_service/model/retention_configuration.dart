// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.config_service.model.retention_configuration; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'retention_configuration.g.dart';

/// An object with the name of the retention configuration and the retention period in days. The object stores the configuration for data retention in Config.
abstract class RetentionConfiguration
    with _i1.AWSEquatable<RetentionConfiguration>
    implements Built<RetentionConfiguration, RetentionConfigurationBuilder> {
  /// An object with the name of the retention configuration and the retention period in days. The object stores the configuration for data retention in Config.
  factory RetentionConfiguration({
    required String name,
    int? retentionPeriodInDays,
  }) {
    retentionPeriodInDays ??= 0;
    return _$RetentionConfiguration._(
      name: name,
      retentionPeriodInDays: retentionPeriodInDays,
    );
  }

  /// An object with the name of the retention configuration and the retention period in days. The object stores the configuration for data retention in Config.
  factory RetentionConfiguration.build(
          [void Function(RetentionConfigurationBuilder) updates]) =
      _$RetentionConfiguration;

  const RetentionConfiguration._();

  static const List<_i2.SmithySerializer<RetentionConfiguration>> serializers =
      [RetentionConfigurationAwsJson11Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(RetentionConfigurationBuilder b) {
    b.retentionPeriodInDays = 0;
  }

  /// The name of the retention configuration object.
  String get name;

  /// Number of days Config stores your historical information.
  ///
  /// Currently, only applicable to the configuration item history.
  int get retentionPeriodInDays;
  @override
  List<Object?> get props => [
        name,
        retentionPeriodInDays,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('RetentionConfiguration')
      ..add(
        'name',
        name,
      )
      ..add(
        'retentionPeriodInDays',
        retentionPeriodInDays,
      );
    return helper.toString();
  }
}

class RetentionConfigurationAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<RetentionConfiguration> {
  const RetentionConfigurationAwsJson11Serializer()
      : super('RetentionConfiguration');

  @override
  Iterable<Type> get types => const [
        RetentionConfiguration,
        _$RetentionConfiguration,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  RetentionConfiguration deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RetentionConfigurationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Name':
          result.name = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'RetentionPeriodInDays':
          result.retentionPeriodInDays = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    RetentionConfiguration object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final RetentionConfiguration(:name, :retentionPeriodInDays) = object;
    result$.addAll([
      'Name',
      serializers.serialize(
        name,
        specifiedType: const FullType(String),
      ),
      'RetentionPeriodInDays',
      serializers.serialize(
        retentionPeriodInDays,
        specifiedType: const FullType(int),
      ),
    ]);
    return result$;
  }
}