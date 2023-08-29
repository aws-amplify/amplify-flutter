// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.create_verified_access_endpoint_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/verified_access_endpoint.dart';

part 'create_verified_access_endpoint_result.g.dart';

abstract class CreateVerifiedAccessEndpointResult
    with
        _i1.AWSEquatable<CreateVerifiedAccessEndpointResult>
    implements
        Built<CreateVerifiedAccessEndpointResult,
            CreateVerifiedAccessEndpointResultBuilder> {
  factory CreateVerifiedAccessEndpointResult(
      {VerifiedAccessEndpoint? verifiedAccessEndpoint}) {
    return _$CreateVerifiedAccessEndpointResult._(
        verifiedAccessEndpoint: verifiedAccessEndpoint);
  }

  factory CreateVerifiedAccessEndpointResult.build(
          [void Function(CreateVerifiedAccessEndpointResultBuilder) updates]) =
      _$CreateVerifiedAccessEndpointResult;

  const CreateVerifiedAccessEndpointResult._();

  /// Constructs a [CreateVerifiedAccessEndpointResult] from a [payload] and [response].
  factory CreateVerifiedAccessEndpointResult.fromResponse(
    CreateVerifiedAccessEndpointResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<CreateVerifiedAccessEndpointResult>>
      serializers = [CreateVerifiedAccessEndpointResultEc2QuerySerializer()];

  /// The ID of the Verified Access endpoint.
  VerifiedAccessEndpoint? get verifiedAccessEndpoint;
  @override
  List<Object?> get props => [verifiedAccessEndpoint];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('CreateVerifiedAccessEndpointResult')
          ..add(
            'verifiedAccessEndpoint',
            verifiedAccessEndpoint,
          );
    return helper.toString();
  }
}

class CreateVerifiedAccessEndpointResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<CreateVerifiedAccessEndpointResult> {
  const CreateVerifiedAccessEndpointResultEc2QuerySerializer()
      : super('CreateVerifiedAccessEndpointResult');

  @override
  Iterable<Type> get types => const [
        CreateVerifiedAccessEndpointResult,
        _$CreateVerifiedAccessEndpointResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateVerifiedAccessEndpointResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateVerifiedAccessEndpointResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'verifiedAccessEndpoint':
          result.verifiedAccessEndpoint.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(VerifiedAccessEndpoint),
          ) as VerifiedAccessEndpoint));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    CreateVerifiedAccessEndpointResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'CreateVerifiedAccessEndpointResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CreateVerifiedAccessEndpointResult(:verifiedAccessEndpoint) = object;
    if (verifiedAccessEndpoint != null) {
      result$
        ..add(const _i2.XmlElementName('VerifiedAccessEndpoint'))
        ..add(serializers.serialize(
          verifiedAccessEndpoint,
          specifiedType: const FullType(VerifiedAccessEndpoint),
        ));
    }
    return result$;
  }
}
