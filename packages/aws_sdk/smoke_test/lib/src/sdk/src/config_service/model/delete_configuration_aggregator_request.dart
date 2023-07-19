// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.config_service.model.delete_configuration_aggregator_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'delete_configuration_aggregator_request.g.dart';

abstract class DeleteConfigurationAggregatorRequest
    with
        _i1.HttpInput<DeleteConfigurationAggregatorRequest>,
        _i2.AWSEquatable<DeleteConfigurationAggregatorRequest>
    implements
        Built<DeleteConfigurationAggregatorRequest,
            DeleteConfigurationAggregatorRequestBuilder> {
  factory DeleteConfigurationAggregatorRequest(
      {required String configurationAggregatorName}) {
    return _$DeleteConfigurationAggregatorRequest._(
        configurationAggregatorName: configurationAggregatorName);
  }

  factory DeleteConfigurationAggregatorRequest.build(
      [void Function(DeleteConfigurationAggregatorRequestBuilder)
          updates]) = _$DeleteConfigurationAggregatorRequest;

  const DeleteConfigurationAggregatorRequest._();

  factory DeleteConfigurationAggregatorRequest.fromRequest(
    DeleteConfigurationAggregatorRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DeleteConfigurationAggregatorRequest>>
      serializers = [DeleteConfigurationAggregatorRequestAwsJson11Serializer()];

  /// The name of the configuration aggregator.
  String get configurationAggregatorName;
  @override
  DeleteConfigurationAggregatorRequest getPayload() => this;
  @override
  List<Object?> get props => [configurationAggregatorName];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DeleteConfigurationAggregatorRequest')
          ..add(
            'configurationAggregatorName',
            configurationAggregatorName,
          );
    return helper.toString();
  }
}

class DeleteConfigurationAggregatorRequestAwsJson11Serializer extends _i1
    .StructuredSmithySerializer<DeleteConfigurationAggregatorRequest> {
  const DeleteConfigurationAggregatorRequestAwsJson11Serializer()
      : super('DeleteConfigurationAggregatorRequest');

  @override
  Iterable<Type> get types => const [
        DeleteConfigurationAggregatorRequest,
        _$DeleteConfigurationAggregatorRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  DeleteConfigurationAggregatorRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteConfigurationAggregatorRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ConfigurationAggregatorName':
          result.configurationAggregatorName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DeleteConfigurationAggregatorRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final DeleteConfigurationAggregatorRequest(:configurationAggregatorName) =
        object;
    result$.addAll([
      'ConfigurationAggregatorName',
      serializers.serialize(
        configurationAggregatorName,
        specifiedType: const FullType(String),
      ),
    ]);
    return result$;
  }
}
