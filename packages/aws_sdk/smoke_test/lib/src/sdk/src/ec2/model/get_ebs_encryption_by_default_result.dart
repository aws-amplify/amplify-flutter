// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.get_ebs_encryption_by_default_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/sse_type.dart';

part 'get_ebs_encryption_by_default_result.g.dart';

abstract class GetEbsEncryptionByDefaultResult
    with
        _i1.AWSEquatable<GetEbsEncryptionByDefaultResult>
    implements
        Built<GetEbsEncryptionByDefaultResult,
            GetEbsEncryptionByDefaultResultBuilder> {
  factory GetEbsEncryptionByDefaultResult({
    bool? ebsEncryptionByDefault,
    SseType? sseType,
  }) {
    ebsEncryptionByDefault ??= false;
    return _$GetEbsEncryptionByDefaultResult._(
      ebsEncryptionByDefault: ebsEncryptionByDefault,
      sseType: sseType,
    );
  }

  factory GetEbsEncryptionByDefaultResult.build(
          [void Function(GetEbsEncryptionByDefaultResultBuilder) updates]) =
      _$GetEbsEncryptionByDefaultResult;

  const GetEbsEncryptionByDefaultResult._();

  /// Constructs a [GetEbsEncryptionByDefaultResult] from a [payload] and [response].
  factory GetEbsEncryptionByDefaultResult.fromResponse(
    GetEbsEncryptionByDefaultResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<GetEbsEncryptionByDefaultResult>>
      serializers = [GetEbsEncryptionByDefaultResultEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetEbsEncryptionByDefaultResultBuilder b) {
    b.ebsEncryptionByDefault = false;
  }

  /// Indicates whether encryption by default is enabled.
  bool get ebsEncryptionByDefault;

  /// Reserved for future use.
  SseType? get sseType;
  @override
  List<Object?> get props => [
        ebsEncryptionByDefault,
        sseType,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GetEbsEncryptionByDefaultResult')
          ..add(
            'ebsEncryptionByDefault',
            ebsEncryptionByDefault,
          )
          ..add(
            'sseType',
            sseType,
          );
    return helper.toString();
  }
}

class GetEbsEncryptionByDefaultResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<GetEbsEncryptionByDefaultResult> {
  const GetEbsEncryptionByDefaultResultEc2QuerySerializer()
      : super('GetEbsEncryptionByDefaultResult');

  @override
  Iterable<Type> get types => const [
        GetEbsEncryptionByDefaultResult,
        _$GetEbsEncryptionByDefaultResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  GetEbsEncryptionByDefaultResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetEbsEncryptionByDefaultResultBuilder();
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
        case 'sseType':
          result.sseType = (serializers.deserialize(
            value,
            specifiedType: const FullType(SseType),
          ) as SseType);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GetEbsEncryptionByDefaultResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'GetEbsEncryptionByDefaultResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final GetEbsEncryptionByDefaultResult(:ebsEncryptionByDefault, :sseType) =
        object;
    result$
      ..add(const _i2.XmlElementName('EbsEncryptionByDefault'))
      ..add(serializers.serialize(
        ebsEncryptionByDefault,
        specifiedType: const FullType(bool),
      ));
    if (sseType != null) {
      result$
        ..add(const _i2.XmlElementName('SseType'))
        ..add(serializers.serialize(
          sseType,
          specifiedType: const FullType.nullable(SseType),
        ));
    }
    return result$;
  }
}
