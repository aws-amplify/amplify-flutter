// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.start_vpc_endpoint_service_private_dns_verification_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'start_vpc_endpoint_service_private_dns_verification_result.g.dart';

abstract class StartVpcEndpointServicePrivateDnsVerificationResult
    with
        _i1.AWSEquatable<StartVpcEndpointServicePrivateDnsVerificationResult>
    implements
        Built<StartVpcEndpointServicePrivateDnsVerificationResult,
            StartVpcEndpointServicePrivateDnsVerificationResultBuilder> {
  factory StartVpcEndpointServicePrivateDnsVerificationResult(
      {bool? returnValue}) {
    returnValue ??= false;
    return _$StartVpcEndpointServicePrivateDnsVerificationResult._(
        returnValue: returnValue);
  }

  factory StartVpcEndpointServicePrivateDnsVerificationResult.build(
      [void Function(StartVpcEndpointServicePrivateDnsVerificationResultBuilder)
          updates]) = _$StartVpcEndpointServicePrivateDnsVerificationResult;

  const StartVpcEndpointServicePrivateDnsVerificationResult._();

  /// Constructs a [StartVpcEndpointServicePrivateDnsVerificationResult] from a [payload] and [response].
  factory StartVpcEndpointServicePrivateDnsVerificationResult.fromResponse(
    StartVpcEndpointServicePrivateDnsVerificationResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<
      _i2.SmithySerializer<
          StartVpcEndpointServicePrivateDnsVerificationResult>> serializers = [
    StartVpcEndpointServicePrivateDnsVerificationResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(
      StartVpcEndpointServicePrivateDnsVerificationResultBuilder b) {
    b.returnValue = false;
  }

  /// Returns `true` if the request succeeds; otherwise, it returns an error.
  bool get returnValue;
  @override
  List<Object?> get props => [returnValue];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'StartVpcEndpointServicePrivateDnsVerificationResult')
      ..add(
        'returnValue',
        returnValue,
      );
    return helper.toString();
  }
}

class StartVpcEndpointServicePrivateDnsVerificationResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<
        StartVpcEndpointServicePrivateDnsVerificationResult> {
  const StartVpcEndpointServicePrivateDnsVerificationResultEc2QuerySerializer()
      : super('StartVpcEndpointServicePrivateDnsVerificationResult');

  @override
  Iterable<Type> get types => const [
        StartVpcEndpointServicePrivateDnsVerificationResult,
        _$StartVpcEndpointServicePrivateDnsVerificationResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  StartVpcEndpointServicePrivateDnsVerificationResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StartVpcEndpointServicePrivateDnsVerificationResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'return':
          result.returnValue = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    StartVpcEndpointServicePrivateDnsVerificationResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'StartVpcEndpointServicePrivateDnsVerificationResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final StartVpcEndpointServicePrivateDnsVerificationResult(:returnValue) =
        object;
    result$
      ..add(const _i2.XmlElementName('Return'))
      ..add(serializers.serialize(
        returnValue,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}
