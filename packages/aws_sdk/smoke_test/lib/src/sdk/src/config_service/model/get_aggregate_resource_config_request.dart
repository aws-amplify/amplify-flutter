// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.model.get_aggregate_resource_config_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/config_service/model/aggregate_resource_identifier.dart'
    as _i3;

part 'get_aggregate_resource_config_request.g.dart';

abstract class GetAggregateResourceConfigRequest
    with
        _i1.HttpInput<GetAggregateResourceConfigRequest>,
        _i2.AWSEquatable<GetAggregateResourceConfigRequest>
    implements
        Built<GetAggregateResourceConfigRequest,
            GetAggregateResourceConfigRequestBuilder> {
  factory GetAggregateResourceConfigRequest({
    required String configurationAggregatorName,
    required _i3.AggregateResourceIdentifier resourceIdentifier,
  }) {
    return _$GetAggregateResourceConfigRequest._(
      configurationAggregatorName: configurationAggregatorName,
      resourceIdentifier: resourceIdentifier,
    );
  }

  factory GetAggregateResourceConfigRequest.build(
          [void Function(GetAggregateResourceConfigRequestBuilder) updates]) =
      _$GetAggregateResourceConfigRequest;

  const GetAggregateResourceConfigRequest._();

  factory GetAggregateResourceConfigRequest.fromRequest(
    GetAggregateResourceConfigRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<GetAggregateResourceConfigRequest>>
      serializers = [GetAggregateResourceConfigRequestAwsJson11Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetAggregateResourceConfigRequestBuilder b) {}

  /// The name of the configuration aggregator.
  String get configurationAggregatorName;

  /// An object that identifies aggregate resource.
  _i3.AggregateResourceIdentifier get resourceIdentifier;
  @override
  GetAggregateResourceConfigRequest getPayload() => this;
  @override
  List<Object?> get props => [
        configurationAggregatorName,
        resourceIdentifier,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GetAggregateResourceConfigRequest')
          ..add(
            'configurationAggregatorName',
            configurationAggregatorName,
          )
          ..add(
            'resourceIdentifier',
            resourceIdentifier,
          );
    return helper.toString();
  }
}

class GetAggregateResourceConfigRequestAwsJson11Serializer
    extends _i1.StructuredSmithySerializer<GetAggregateResourceConfigRequest> {
  const GetAggregateResourceConfigRequestAwsJson11Serializer()
      : super('GetAggregateResourceConfigRequest');

  @override
  Iterable<Type> get types => const [
        GetAggregateResourceConfigRequest,
        _$GetAggregateResourceConfigRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  GetAggregateResourceConfigRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetAggregateResourceConfigRequestBuilder();
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
        case 'ResourceIdentifier':
          result.resourceIdentifier.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.AggregateResourceIdentifier),
          ) as _i3.AggregateResourceIdentifier));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GetAggregateResourceConfigRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final GetAggregateResourceConfigRequest(
      :configurationAggregatorName,
      :resourceIdentifier
    ) = object;
    result$.addAll([
      'ConfigurationAggregatorName',
      serializers.serialize(
        configurationAggregatorName,
        specifiedType: const FullType(String),
      ),
      'ResourceIdentifier',
      serializers.serialize(
        resourceIdentifier,
        specifiedType: const FullType(_i3.AggregateResourceIdentifier),
      ),
    ]);
    return result$;
  }
}
