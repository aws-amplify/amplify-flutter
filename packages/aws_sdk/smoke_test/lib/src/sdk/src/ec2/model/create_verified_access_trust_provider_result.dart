// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.create_verified_access_trust_provider_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/verified_access_trust_provider.dart';

part 'create_verified_access_trust_provider_result.g.dart';

abstract class CreateVerifiedAccessTrustProviderResult
    with
        _i1.AWSEquatable<CreateVerifiedAccessTrustProviderResult>
    implements
        Built<CreateVerifiedAccessTrustProviderResult,
            CreateVerifiedAccessTrustProviderResultBuilder> {
  factory CreateVerifiedAccessTrustProviderResult(
      {VerifiedAccessTrustProvider? verifiedAccessTrustProvider}) {
    return _$CreateVerifiedAccessTrustProviderResult._(
        verifiedAccessTrustProvider: verifiedAccessTrustProvider);
  }

  factory CreateVerifiedAccessTrustProviderResult.build(
      [void Function(CreateVerifiedAccessTrustProviderResultBuilder)
          updates]) = _$CreateVerifiedAccessTrustProviderResult;

  const CreateVerifiedAccessTrustProviderResult._();

  /// Constructs a [CreateVerifiedAccessTrustProviderResult] from a [payload] and [response].
  factory CreateVerifiedAccessTrustProviderResult.fromResponse(
    CreateVerifiedAccessTrustProviderResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<
          _i2.SmithySerializer<CreateVerifiedAccessTrustProviderResult>>
      serializers = [
    CreateVerifiedAccessTrustProviderResultEc2QuerySerializer()
  ];

  /// The ID of the Verified Access trust provider.
  VerifiedAccessTrustProvider? get verifiedAccessTrustProvider;
  @override
  List<Object?> get props => [verifiedAccessTrustProvider];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('CreateVerifiedAccessTrustProviderResult')
          ..add(
            'verifiedAccessTrustProvider',
            verifiedAccessTrustProvider,
          );
    return helper.toString();
  }
}

class CreateVerifiedAccessTrustProviderResultEc2QuerySerializer extends _i2
    .StructuredSmithySerializer<CreateVerifiedAccessTrustProviderResult> {
  const CreateVerifiedAccessTrustProviderResultEc2QuerySerializer()
      : super('CreateVerifiedAccessTrustProviderResult');

  @override
  Iterable<Type> get types => const [
        CreateVerifiedAccessTrustProviderResult,
        _$CreateVerifiedAccessTrustProviderResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateVerifiedAccessTrustProviderResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateVerifiedAccessTrustProviderResultBuilder();
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
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    CreateVerifiedAccessTrustProviderResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'CreateVerifiedAccessTrustProviderResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CreateVerifiedAccessTrustProviderResult(
      :verifiedAccessTrustProvider
    ) = object;
    if (verifiedAccessTrustProvider != null) {
      result$
        ..add(const _i2.XmlElementName('VerifiedAccessTrustProvider'))
        ..add(serializers.serialize(
          verifiedAccessTrustProvider,
          specifiedType: const FullType(VerifiedAccessTrustProvider),
        ));
    }
    return result$;
  }
}
