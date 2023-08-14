// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.delete_instance_connect_endpoint_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/ec2_instance_connect_endpoint.dart';

part 'delete_instance_connect_endpoint_result.g.dart';

abstract class DeleteInstanceConnectEndpointResult
    with
        _i1.AWSEquatable<DeleteInstanceConnectEndpointResult>
    implements
        Built<DeleteInstanceConnectEndpointResult,
            DeleteInstanceConnectEndpointResultBuilder> {
  factory DeleteInstanceConnectEndpointResult(
      {Ec2InstanceConnectEndpoint? instanceConnectEndpoint}) {
    return _$DeleteInstanceConnectEndpointResult._(
        instanceConnectEndpoint: instanceConnectEndpoint);
  }

  factory DeleteInstanceConnectEndpointResult.build(
          [void Function(DeleteInstanceConnectEndpointResultBuilder) updates]) =
      _$DeleteInstanceConnectEndpointResult;

  const DeleteInstanceConnectEndpointResult._();

  /// Constructs a [DeleteInstanceConnectEndpointResult] from a [payload] and [response].
  factory DeleteInstanceConnectEndpointResult.fromResponse(
    DeleteInstanceConnectEndpointResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<DeleteInstanceConnectEndpointResult>>
      serializers = [DeleteInstanceConnectEndpointResultEc2QuerySerializer()];

  /// Information about the EC2 Instance Connect Endpoint.
  Ec2InstanceConnectEndpoint? get instanceConnectEndpoint;
  @override
  List<Object?> get props => [instanceConnectEndpoint];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DeleteInstanceConnectEndpointResult')
          ..add(
            'instanceConnectEndpoint',
            instanceConnectEndpoint,
          );
    return helper.toString();
  }
}

class DeleteInstanceConnectEndpointResultEc2QuerySerializer extends _i2
    .StructuredSmithySerializer<DeleteInstanceConnectEndpointResult> {
  const DeleteInstanceConnectEndpointResultEc2QuerySerializer()
      : super('DeleteInstanceConnectEndpointResult');

  @override
  Iterable<Type> get types => const [
        DeleteInstanceConnectEndpointResult,
        _$DeleteInstanceConnectEndpointResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteInstanceConnectEndpointResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteInstanceConnectEndpointResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'instanceConnectEndpoint':
          result.instanceConnectEndpoint.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(Ec2InstanceConnectEndpoint),
          ) as Ec2InstanceConnectEndpoint));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DeleteInstanceConnectEndpointResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'DeleteInstanceConnectEndpointResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DeleteInstanceConnectEndpointResult(:instanceConnectEndpoint) =
        object;
    if (instanceConnectEndpoint != null) {
      result$
        ..add(const _i2.XmlElementName('InstanceConnectEndpoint'))
        ..add(serializers.serialize(
          instanceConnectEndpoint,
          specifiedType: const FullType(Ec2InstanceConnectEndpoint),
        ));
    }
    return result$;
  }
}
