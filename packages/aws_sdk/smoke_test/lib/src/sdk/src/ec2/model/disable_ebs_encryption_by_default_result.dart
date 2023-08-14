// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.disable_ebs_encryption_by_default_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'disable_ebs_encryption_by_default_result.g.dart';

abstract class DisableEbsEncryptionByDefaultResult
    with
        _i1.AWSEquatable<DisableEbsEncryptionByDefaultResult>
    implements
        Built<DisableEbsEncryptionByDefaultResult,
            DisableEbsEncryptionByDefaultResultBuilder> {
  factory DisableEbsEncryptionByDefaultResult({bool? ebsEncryptionByDefault}) {
    ebsEncryptionByDefault ??= false;
    return _$DisableEbsEncryptionByDefaultResult._(
        ebsEncryptionByDefault: ebsEncryptionByDefault);
  }

  factory DisableEbsEncryptionByDefaultResult.build(
          [void Function(DisableEbsEncryptionByDefaultResultBuilder) updates]) =
      _$DisableEbsEncryptionByDefaultResult;

  const DisableEbsEncryptionByDefaultResult._();

  /// Constructs a [DisableEbsEncryptionByDefaultResult] from a [payload] and [response].
  factory DisableEbsEncryptionByDefaultResult.fromResponse(
    DisableEbsEncryptionByDefaultResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<DisableEbsEncryptionByDefaultResult>>
      serializers = [DisableEbsEncryptionByDefaultResultEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DisableEbsEncryptionByDefaultResultBuilder b) {
    b.ebsEncryptionByDefault = false;
  }

  /// The updated status of encryption by default.
  bool get ebsEncryptionByDefault;
  @override
  List<Object?> get props => [ebsEncryptionByDefault];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DisableEbsEncryptionByDefaultResult')
          ..add(
            'ebsEncryptionByDefault',
            ebsEncryptionByDefault,
          );
    return helper.toString();
  }
}

class DisableEbsEncryptionByDefaultResultEc2QuerySerializer extends _i2
    .StructuredSmithySerializer<DisableEbsEncryptionByDefaultResult> {
  const DisableEbsEncryptionByDefaultResultEc2QuerySerializer()
      : super('DisableEbsEncryptionByDefaultResult');

  @override
  Iterable<Type> get types => const [
        DisableEbsEncryptionByDefaultResult,
        _$DisableEbsEncryptionByDefaultResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DisableEbsEncryptionByDefaultResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DisableEbsEncryptionByDefaultResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ebsEncryptionByDefault':
          result.ebsEncryptionByDefault = (serializers.deserialize(
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
    DisableEbsEncryptionByDefaultResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'DisableEbsEncryptionByDefaultResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DisableEbsEncryptionByDefaultResult(:ebsEncryptionByDefault) = object;
    result$
      ..add(const _i2.XmlElementName('EbsEncryptionByDefault'))
      ..add(serializers.serialize(
        ebsEncryptionByDefault,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}
