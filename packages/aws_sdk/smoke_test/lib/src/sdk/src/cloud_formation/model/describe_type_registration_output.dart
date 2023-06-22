// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.describe_type_registration_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/registration_status.dart'
    as _i2;

part 'describe_type_registration_output.g.dart';

abstract class DescribeTypeRegistrationOutput
    with
        _i1.AWSEquatable<DescribeTypeRegistrationOutput>
    implements
        Built<DescribeTypeRegistrationOutput,
            DescribeTypeRegistrationOutputBuilder> {
  factory DescribeTypeRegistrationOutput({
    _i2.RegistrationStatus? progressStatus,
    String? description,
    String? typeArn,
    String? typeVersionArn,
  }) {
    return _$DescribeTypeRegistrationOutput._(
      progressStatus: progressStatus,
      description: description,
      typeArn: typeArn,
      typeVersionArn: typeVersionArn,
    );
  }

  factory DescribeTypeRegistrationOutput.build(
          [void Function(DescribeTypeRegistrationOutputBuilder) updates]) =
      _$DescribeTypeRegistrationOutput;

  const DescribeTypeRegistrationOutput._();

  /// Constructs a [DescribeTypeRegistrationOutput] from a [payload] and [response].
  factory DescribeTypeRegistrationOutput.fromResponse(
    DescribeTypeRegistrationOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<DescribeTypeRegistrationOutput>>
      serializers = [DescribeTypeRegistrationOutputAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeTypeRegistrationOutputBuilder b) {}

  /// The current status of the extension registration request.
  _i2.RegistrationStatus? get progressStatus;

  /// The description of the extension registration request.
  String? get description;

  /// The Amazon Resource Name (ARN) of the extension being registered.
  ///
  /// For registration requests with a `ProgressStatus` of other than `COMPLETE`, this will be `null`.
  String? get typeArn;

  /// The Amazon Resource Name (ARN) of this specific version of the extension being registered.
  ///
  /// For registration requests with a `ProgressStatus` of other than `COMPLETE`, this will be `null`.
  String? get typeVersionArn;
  @override
  List<Object?> get props => [
        progressStatus,
        description,
        typeArn,
        typeVersionArn,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeTypeRegistrationOutput')
      ..add(
        'progressStatus',
        progressStatus,
      )
      ..add(
        'description',
        description,
      )
      ..add(
        'typeArn',
        typeArn,
      )
      ..add(
        'typeVersionArn',
        typeVersionArn,
      );
    return helper.toString();
  }
}

class DescribeTypeRegistrationOutputAwsQuerySerializer
    extends _i3.StructuredSmithySerializer<DescribeTypeRegistrationOutput> {
  const DescribeTypeRegistrationOutputAwsQuerySerializer()
      : super('DescribeTypeRegistrationOutput');

  @override
  Iterable<Type> get types => const [
        DescribeTypeRegistrationOutput,
        _$DescribeTypeRegistrationOutput,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  DescribeTypeRegistrationOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeTypeRegistrationOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ProgressStatus':
          result.progressStatus = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.RegistrationStatus),
          ) as _i2.RegistrationStatus);
        case 'Description':
          result.description = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'TypeArn':
          result.typeArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'TypeVersionArn':
          result.typeVersionArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DescribeTypeRegistrationOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DescribeTypeRegistrationOutputResponse',
        _i3.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final DescribeTypeRegistrationOutput(
      :progressStatus,
      :description,
      :typeArn,
      :typeVersionArn
    ) = object;
    if (progressStatus != null) {
      result$
        ..add(const _i3.XmlElementName('ProgressStatus'))
        ..add(serializers.serialize(
          progressStatus,
          specifiedType: const FullType.nullable(_i2.RegistrationStatus),
        ));
    }
    if (description != null) {
      result$
        ..add(const _i3.XmlElementName('Description'))
        ..add(serializers.serialize(
          description,
          specifiedType: const FullType(String),
        ));
    }
    if (typeArn != null) {
      result$
        ..add(const _i3.XmlElementName('TypeArn'))
        ..add(serializers.serialize(
          typeArn,
          specifiedType: const FullType(String),
        ));
    }
    if (typeVersionArn != null) {
      result$
        ..add(const _i3.XmlElementName('TypeVersionArn'))
        ..add(serializers.serialize(
          typeVersionArn,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
