// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.model.put_remediation_configurations_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/config_service/model/remediation_configuration.dart'
    as _i3;

part 'put_remediation_configurations_request.g.dart';

abstract class PutRemediationConfigurationsRequest
    with
        _i1.HttpInput<PutRemediationConfigurationsRequest>,
        _i2.AWSEquatable<PutRemediationConfigurationsRequest>
    implements
        Built<PutRemediationConfigurationsRequest,
            PutRemediationConfigurationsRequestBuilder> {
  factory PutRemediationConfigurationsRequest(
      {required List<_i3.RemediationConfiguration> remediationConfigurations}) {
    return _$PutRemediationConfigurationsRequest._(
        remediationConfigurations: _i4.BuiltList(remediationConfigurations));
  }

  factory PutRemediationConfigurationsRequest.build(
          [void Function(PutRemediationConfigurationsRequestBuilder) updates]) =
      _$PutRemediationConfigurationsRequest;

  const PutRemediationConfigurationsRequest._();

  factory PutRemediationConfigurationsRequest.fromRequest(
    PutRemediationConfigurationsRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<PutRemediationConfigurationsRequest>>
      serializers = [PutRemediationConfigurationsRequestAwsJson11Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PutRemediationConfigurationsRequestBuilder b) {}

  /// A list of remediation configuration objects.
  _i4.BuiltList<_i3.RemediationConfiguration> get remediationConfigurations;
  @override
  PutRemediationConfigurationsRequest getPayload() => this;
  @override
  List<Object?> get props => [remediationConfigurations];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('PutRemediationConfigurationsRequest')
          ..add(
            'remediationConfigurations',
            remediationConfigurations,
          );
    return helper.toString();
  }
}

class PutRemediationConfigurationsRequestAwsJson11Serializer extends _i1
    .StructuredSmithySerializer<PutRemediationConfigurationsRequest> {
  const PutRemediationConfigurationsRequestAwsJson11Serializer()
      : super('PutRemediationConfigurationsRequest');

  @override
  Iterable<Type> get types => const [
        PutRemediationConfigurationsRequest,
        _$PutRemediationConfigurationsRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  PutRemediationConfigurationsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PutRemediationConfigurationsRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'RemediationConfigurations':
          result.remediationConfigurations.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(_i3.RemediationConfiguration)],
            ),
          ) as _i4.BuiltList<_i3.RemediationConfiguration>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    PutRemediationConfigurationsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final PutRemediationConfigurationsRequest(:remediationConfigurations) =
        object;
    result$.addAll([
      'RemediationConfigurations',
      serializers.serialize(
        remediationConfigurations,
        specifiedType: const FullType(
          _i4.BuiltList,
          [FullType(_i3.RemediationConfiguration)],
        ),
      ),
    ]);
    return result$;
  }
}
