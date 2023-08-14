// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.modify_verified_access_endpoint_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/verified_access_endpoint.dart';

part 'modify_verified_access_endpoint_result.g.dart';

abstract class ModifyVerifiedAccessEndpointResult
    with
        _i1.AWSEquatable<ModifyVerifiedAccessEndpointResult>
    implements
        Built<ModifyVerifiedAccessEndpointResult,
            ModifyVerifiedAccessEndpointResultBuilder> {
  factory ModifyVerifiedAccessEndpointResult(
      {VerifiedAccessEndpoint? verifiedAccessEndpoint}) {
    return _$ModifyVerifiedAccessEndpointResult._(
        verifiedAccessEndpoint: verifiedAccessEndpoint);
  }

  factory ModifyVerifiedAccessEndpointResult.build(
          [void Function(ModifyVerifiedAccessEndpointResultBuilder) updates]) =
      _$ModifyVerifiedAccessEndpointResult;

  const ModifyVerifiedAccessEndpointResult._();

  /// Constructs a [ModifyVerifiedAccessEndpointResult] from a [payload] and [response].
  factory ModifyVerifiedAccessEndpointResult.fromResponse(
    ModifyVerifiedAccessEndpointResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<ModifyVerifiedAccessEndpointResult>>
      serializers = [ModifyVerifiedAccessEndpointResultEc2QuerySerializer()];

  /// The Verified Access endpoint details.
  VerifiedAccessEndpoint? get verifiedAccessEndpoint;
  @override
  List<Object?> get props => [verifiedAccessEndpoint];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ModifyVerifiedAccessEndpointResult')
          ..add(
            'verifiedAccessEndpoint',
            verifiedAccessEndpoint,
          );
    return helper.toString();
  }
}

class ModifyVerifiedAccessEndpointResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<ModifyVerifiedAccessEndpointResult> {
  const ModifyVerifiedAccessEndpointResultEc2QuerySerializer()
      : super('ModifyVerifiedAccessEndpointResult');

  @override
  Iterable<Type> get types => const [
        ModifyVerifiedAccessEndpointResult,
        _$ModifyVerifiedAccessEndpointResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifyVerifiedAccessEndpointResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifyVerifiedAccessEndpointResultBuilder();
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
    ModifyVerifiedAccessEndpointResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'ModifyVerifiedAccessEndpointResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ModifyVerifiedAccessEndpointResult(:verifiedAccessEndpoint) = object;
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
