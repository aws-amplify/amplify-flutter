// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.model.put_retention_configuration_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'put_retention_configuration_request.g.dart';

abstract class PutRetentionConfigurationRequest
    with
        _i1.HttpInput<PutRetentionConfigurationRequest>,
        _i2.AWSEquatable<PutRetentionConfigurationRequest>
    implements
        Built<PutRetentionConfigurationRequest,
            PutRetentionConfigurationRequestBuilder> {
  factory PutRetentionConfigurationRequest({int? retentionPeriodInDays}) {
    retentionPeriodInDays ??= 0;
    return _$PutRetentionConfigurationRequest._(
        retentionPeriodInDays: retentionPeriodInDays);
  }

  factory PutRetentionConfigurationRequest.build(
          [void Function(PutRetentionConfigurationRequestBuilder) updates]) =
      _$PutRetentionConfigurationRequest;

  const PutRetentionConfigurationRequest._();

  factory PutRetentionConfigurationRequest.fromRequest(
    PutRetentionConfigurationRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<PutRetentionConfigurationRequest>>
      serializers = [PutRetentionConfigurationRequestAwsJson11Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PutRetentionConfigurationRequestBuilder b) {
    b.retentionPeriodInDays = 0;
  }

  /// Number of days Config stores your historical information.
  ///
  /// Currently, only applicable to the configuration item history.
  int get retentionPeriodInDays;
  @override
  PutRetentionConfigurationRequest getPayload() => this;
  @override
  List<Object?> get props => [retentionPeriodInDays];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('PutRetentionConfigurationRequest')
          ..add(
            'retentionPeriodInDays',
            retentionPeriodInDays,
          );
    return helper.toString();
  }
}

class PutRetentionConfigurationRequestAwsJson11Serializer
    extends _i1.StructuredSmithySerializer<PutRetentionConfigurationRequest> {
  const PutRetentionConfigurationRequestAwsJson11Serializer()
      : super('PutRetentionConfigurationRequest');

  @override
  Iterable<Type> get types => const [
        PutRetentionConfigurationRequest,
        _$PutRetentionConfigurationRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  PutRetentionConfigurationRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PutRetentionConfigurationRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
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
    PutRetentionConfigurationRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final PutRetentionConfigurationRequest(:retentionPeriodInDays) = object;
    result$.addAll([
      'RetentionPeriodInDays',
      serializers.serialize(
        retentionPeriodInDays,
        specifiedType: const FullType(int),
      ),
    ]);
    return result$;
  }
}
