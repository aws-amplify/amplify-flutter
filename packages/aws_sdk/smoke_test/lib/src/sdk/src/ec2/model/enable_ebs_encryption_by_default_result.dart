// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.enable_ebs_encryption_by_default_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'enable_ebs_encryption_by_default_result.g.dart';

abstract class EnableEbsEncryptionByDefaultResult
    with
        _i1.AWSEquatable<EnableEbsEncryptionByDefaultResult>
    implements
        Built<EnableEbsEncryptionByDefaultResult,
            EnableEbsEncryptionByDefaultResultBuilder> {
  factory EnableEbsEncryptionByDefaultResult({bool? ebsEncryptionByDefault}) {
    ebsEncryptionByDefault ??= false;
    return _$EnableEbsEncryptionByDefaultResult._(
        ebsEncryptionByDefault: ebsEncryptionByDefault);
  }

  factory EnableEbsEncryptionByDefaultResult.build(
          [void Function(EnableEbsEncryptionByDefaultResultBuilder) updates]) =
      _$EnableEbsEncryptionByDefaultResult;

  const EnableEbsEncryptionByDefaultResult._();

  /// Constructs a [EnableEbsEncryptionByDefaultResult] from a [payload] and [response].
  factory EnableEbsEncryptionByDefaultResult.fromResponse(
    EnableEbsEncryptionByDefaultResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<EnableEbsEncryptionByDefaultResult>>
      serializers = [EnableEbsEncryptionByDefaultResultEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(EnableEbsEncryptionByDefaultResultBuilder b) {
    b.ebsEncryptionByDefault = false;
  }

  /// The updated status of encryption by default.
  bool get ebsEncryptionByDefault;
  @override
  List<Object?> get props => [ebsEncryptionByDefault];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('EnableEbsEncryptionByDefaultResult')
          ..add(
            'ebsEncryptionByDefault',
            ebsEncryptionByDefault,
          );
    return helper.toString();
  }
}

class EnableEbsEncryptionByDefaultResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<EnableEbsEncryptionByDefaultResult> {
  const EnableEbsEncryptionByDefaultResultEc2QuerySerializer()
      : super('EnableEbsEncryptionByDefaultResult');

  @override
  Iterable<Type> get types => const [
        EnableEbsEncryptionByDefaultResult,
        _$EnableEbsEncryptionByDefaultResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  EnableEbsEncryptionByDefaultResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EnableEbsEncryptionByDefaultResultBuilder();
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
    EnableEbsEncryptionByDefaultResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'EnableEbsEncryptionByDefaultResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final EnableEbsEncryptionByDefaultResult(:ebsEncryptionByDefault) = object;
    result$
      ..add(const _i2.XmlElementName('EbsEncryptionByDefault'))
      ..add(serializers.serialize(
        ebsEncryptionByDefault,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}
