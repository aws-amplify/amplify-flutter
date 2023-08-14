// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.create_verified_access_instance_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/verified_access_instance.dart';

part 'create_verified_access_instance_result.g.dart';

abstract class CreateVerifiedAccessInstanceResult
    with
        _i1.AWSEquatable<CreateVerifiedAccessInstanceResult>
    implements
        Built<CreateVerifiedAccessInstanceResult,
            CreateVerifiedAccessInstanceResultBuilder> {
  factory CreateVerifiedAccessInstanceResult(
      {VerifiedAccessInstance? verifiedAccessInstance}) {
    return _$CreateVerifiedAccessInstanceResult._(
        verifiedAccessInstance: verifiedAccessInstance);
  }

  factory CreateVerifiedAccessInstanceResult.build(
          [void Function(CreateVerifiedAccessInstanceResultBuilder) updates]) =
      _$CreateVerifiedAccessInstanceResult;

  const CreateVerifiedAccessInstanceResult._();

  /// Constructs a [CreateVerifiedAccessInstanceResult] from a [payload] and [response].
  factory CreateVerifiedAccessInstanceResult.fromResponse(
    CreateVerifiedAccessInstanceResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<CreateVerifiedAccessInstanceResult>>
      serializers = [CreateVerifiedAccessInstanceResultEc2QuerySerializer()];

  /// The ID of the Verified Access instance.
  VerifiedAccessInstance? get verifiedAccessInstance;
  @override
  List<Object?> get props => [verifiedAccessInstance];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('CreateVerifiedAccessInstanceResult')
          ..add(
            'verifiedAccessInstance',
            verifiedAccessInstance,
          );
    return helper.toString();
  }
}

class CreateVerifiedAccessInstanceResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<CreateVerifiedAccessInstanceResult> {
  const CreateVerifiedAccessInstanceResultEc2QuerySerializer()
      : super('CreateVerifiedAccessInstanceResult');

  @override
  Iterable<Type> get types => const [
        CreateVerifiedAccessInstanceResult,
        _$CreateVerifiedAccessInstanceResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateVerifiedAccessInstanceResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateVerifiedAccessInstanceResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
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
    CreateVerifiedAccessInstanceResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'CreateVerifiedAccessInstanceResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CreateVerifiedAccessInstanceResult(:verifiedAccessInstance) = object;
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
