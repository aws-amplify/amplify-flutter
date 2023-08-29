// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.delete_verified_access_instance_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/verified_access_instance.dart';

part 'delete_verified_access_instance_result.g.dart';

abstract class DeleteVerifiedAccessInstanceResult
    with
        _i1.AWSEquatable<DeleteVerifiedAccessInstanceResult>
    implements
        Built<DeleteVerifiedAccessInstanceResult,
            DeleteVerifiedAccessInstanceResultBuilder> {
  factory DeleteVerifiedAccessInstanceResult(
      {VerifiedAccessInstance? verifiedAccessInstance}) {
    return _$DeleteVerifiedAccessInstanceResult._(
        verifiedAccessInstance: verifiedAccessInstance);
  }

  factory DeleteVerifiedAccessInstanceResult.build(
          [void Function(DeleteVerifiedAccessInstanceResultBuilder) updates]) =
      _$DeleteVerifiedAccessInstanceResult;

  const DeleteVerifiedAccessInstanceResult._();

  /// Constructs a [DeleteVerifiedAccessInstanceResult] from a [payload] and [response].
  factory DeleteVerifiedAccessInstanceResult.fromResponse(
    DeleteVerifiedAccessInstanceResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<DeleteVerifiedAccessInstanceResult>>
      serializers = [DeleteVerifiedAccessInstanceResultEc2QuerySerializer()];

  /// The ID of the Verified Access instance.
  VerifiedAccessInstance? get verifiedAccessInstance;
  @override
  List<Object?> get props => [verifiedAccessInstance];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DeleteVerifiedAccessInstanceResult')
          ..add(
            'verifiedAccessInstance',
            verifiedAccessInstance,
          );
    return helper.toString();
  }
}

class DeleteVerifiedAccessInstanceResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<DeleteVerifiedAccessInstanceResult> {
  const DeleteVerifiedAccessInstanceResultEc2QuerySerializer()
      : super('DeleteVerifiedAccessInstanceResult');

  @override
  Iterable<Type> get types => const [
        DeleteVerifiedAccessInstanceResult,
        _$DeleteVerifiedAccessInstanceResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteVerifiedAccessInstanceResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteVerifiedAccessInstanceResultBuilder();
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
    DeleteVerifiedAccessInstanceResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'DeleteVerifiedAccessInstanceResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DeleteVerifiedAccessInstanceResult(:verifiedAccessInstance) = object;
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
