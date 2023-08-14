// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.detach_verified_access_trust_provider_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/verified_access_instance.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/verified_access_trust_provider.dart';

part 'detach_verified_access_trust_provider_result.g.dart';

abstract class DetachVerifiedAccessTrustProviderResult
    with
        _i1.AWSEquatable<DetachVerifiedAccessTrustProviderResult>
    implements
        Built<DetachVerifiedAccessTrustProviderResult,
            DetachVerifiedAccessTrustProviderResultBuilder> {
  factory DetachVerifiedAccessTrustProviderResult({
    VerifiedAccessTrustProvider? verifiedAccessTrustProvider,
    VerifiedAccessInstance? verifiedAccessInstance,
  }) {
    return _$DetachVerifiedAccessTrustProviderResult._(
      verifiedAccessTrustProvider: verifiedAccessTrustProvider,
      verifiedAccessInstance: verifiedAccessInstance,
    );
  }

  factory DetachVerifiedAccessTrustProviderResult.build(
      [void Function(DetachVerifiedAccessTrustProviderResultBuilder)
          updates]) = _$DetachVerifiedAccessTrustProviderResult;

  const DetachVerifiedAccessTrustProviderResult._();

  /// Constructs a [DetachVerifiedAccessTrustProviderResult] from a [payload] and [response].
  factory DetachVerifiedAccessTrustProviderResult.fromResponse(
    DetachVerifiedAccessTrustProviderResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<
          _i2.SmithySerializer<DetachVerifiedAccessTrustProviderResult>>
      serializers = [
    DetachVerifiedAccessTrustProviderResultEc2QuerySerializer()
  ];

  /// The ID of the Verified Access trust provider.
  VerifiedAccessTrustProvider? get verifiedAccessTrustProvider;

  /// The ID of the Verified Access instance.
  VerifiedAccessInstance? get verifiedAccessInstance;
  @override
  List<Object?> get props => [
        verifiedAccessTrustProvider,
        verifiedAccessInstance,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DetachVerifiedAccessTrustProviderResult')
          ..add(
            'verifiedAccessTrustProvider',
            verifiedAccessTrustProvider,
          )
          ..add(
            'verifiedAccessInstance',
            verifiedAccessInstance,
          );
    return helper.toString();
  }
}

class DetachVerifiedAccessTrustProviderResultEc2QuerySerializer extends _i2
    .StructuredSmithySerializer<DetachVerifiedAccessTrustProviderResult> {
  const DetachVerifiedAccessTrustProviderResultEc2QuerySerializer()
      : super('DetachVerifiedAccessTrustProviderResult');

  @override
  Iterable<Type> get types => const [
        DetachVerifiedAccessTrustProviderResult,
        _$DetachVerifiedAccessTrustProviderResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DetachVerifiedAccessTrustProviderResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DetachVerifiedAccessTrustProviderResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'verifiedAccessTrustProvider':
          result.verifiedAccessTrustProvider.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(VerifiedAccessTrustProvider),
          ) as VerifiedAccessTrustProvider));
        case 'verifiedAccessInstance':
          result.verifiedAccessInstance.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(VerifiedAccessInstance),
          ) as VerifiedAccessInstance));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DetachVerifiedAccessTrustProviderResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'DetachVerifiedAccessTrustProviderResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DetachVerifiedAccessTrustProviderResult(
      :verifiedAccessTrustProvider,
      :verifiedAccessInstance
    ) = object;
    if (verifiedAccessTrustProvider != null) {
      result$
        ..add(const _i2.XmlElementName('VerifiedAccessTrustProvider'))
        ..add(serializers.serialize(
          verifiedAccessTrustProvider,
          specifiedType: const FullType(VerifiedAccessTrustProvider),
        ));
    }
    if (verifiedAccessInstance != null) {
      result$
        ..add(const _i2.XmlElementName('VerifiedAccessInstance'))
        ..add(serializers.serialize(
          verifiedAccessInstance,
          specifiedType: const FullType(VerifiedAccessInstance),
        ));
    }
    return result$;
  }
}
