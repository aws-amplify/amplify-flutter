// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.test_type_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/third_party_type.dart'
    as _i3;

part 'test_type_input.g.dart';

abstract class TestTypeInput
    with _i1.HttpInput<TestTypeInput>, _i2.AWSEquatable<TestTypeInput>
    implements Built<TestTypeInput, TestTypeInputBuilder> {
  factory TestTypeInput({
    String? arn,
    _i3.ThirdPartyType? type,
    String? typeName,
    String? versionId,
    String? logDeliveryBucket,
  }) {
    return _$TestTypeInput._(
      arn: arn,
      type: type,
      typeName: typeName,
      versionId: versionId,
      logDeliveryBucket: logDeliveryBucket,
    );
  }

  factory TestTypeInput.build([void Function(TestTypeInputBuilder) updates]) =
      _$TestTypeInput;

  const TestTypeInput._();

  factory TestTypeInput.fromRequest(
    TestTypeInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<TestTypeInput>> serializers = [
    TestTypeInputAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TestTypeInputBuilder b) {}

  /// The Amazon Resource Name (ARN) of the extension.
  ///
  /// Conditional: You must specify `Arn`, or `TypeName` and `Type`.
  String? get arn;

  /// The type of the extension to test.
  ///
  /// Conditional: You must specify `Arn`, or `TypeName` and `Type`.
  _i3.ThirdPartyType? get type;

  /// The name of the extension to test.
  ///
  /// Conditional: You must specify `Arn`, or `TypeName` and `Type`.
  String? get typeName;

  /// The version of the extension to test.
  ///
  /// You can specify the version id with either `Arn`, or with `TypeName` and `Type`.
  ///
  /// If you don't specify a version, CloudFormation uses the default version of the extension in this account and Region for testing.
  String? get versionId;

  /// The S3 bucket to which CloudFormation delivers the contract test execution logs.
  ///
  /// CloudFormation delivers the logs by the time contract testing has completed and the extension has been assigned a test type status of `PASSED` or `FAILED`.
  ///
  /// The user calling `TestType` must be able to access items in the specified S3 bucket. Specifically, the user needs the following permissions:
  ///
  /// *   `GetObject`
  ///
  /// *   `PutObject`
  ///
  ///
  /// For more information, see [Actions, Resources, and Condition Keys for Amazon S3](https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazons3.html) in the _Amazon Web Services Identity and Access Management User Guide_.
  String? get logDeliveryBucket;
  @override
  TestTypeInput getPayload() => this;
  @override
  List<Object?> get props => [
        arn,
        type,
        typeName,
        versionId,
        logDeliveryBucket,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('TestTypeInput')
      ..add(
        'arn',
        arn,
      )
      ..add(
        'type',
        type,
      )
      ..add(
        'typeName',
        typeName,
      )
      ..add(
        'versionId',
        versionId,
      )
      ..add(
        'logDeliveryBucket',
        logDeliveryBucket,
      );
    return helper.toString();
  }
}

class TestTypeInputAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<TestTypeInput> {
  const TestTypeInputAwsQuerySerializer() : super('TestTypeInput');

  @override
  Iterable<Type> get types => const [
        TestTypeInput,
        _$TestTypeInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  TestTypeInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TestTypeInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Arn':
          result.arn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Type':
          result.type = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.ThirdPartyType),
          ) as _i3.ThirdPartyType);
        case 'TypeName':
          result.typeName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'VersionId':
          result.versionId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'LogDeliveryBucket':
          result.logDeliveryBucket = (serializers.deserialize(
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
    TestTypeInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'TestTypeInputResponse',
        _i1.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final TestTypeInput(
      :arn,
      :type,
      :typeName,
      :versionId,
      :logDeliveryBucket
    ) = object;
    if (arn != null) {
      result$
        ..add(const _i1.XmlElementName('Arn'))
        ..add(serializers.serialize(
          arn,
          specifiedType: const FullType(String),
        ));
    }
    if (type != null) {
      result$
        ..add(const _i1.XmlElementName('Type'))
        ..add(serializers.serialize(
          type,
          specifiedType: const FullType.nullable(_i3.ThirdPartyType),
        ));
    }
    if (typeName != null) {
      result$
        ..add(const _i1.XmlElementName('TypeName'))
        ..add(serializers.serialize(
          typeName,
          specifiedType: const FullType(String),
        ));
    }
    if (versionId != null) {
      result$
        ..add(const _i1.XmlElementName('VersionId'))
        ..add(serializers.serialize(
          versionId,
          specifiedType: const FullType(String),
        ));
    }
    if (logDeliveryBucket != null) {
      result$
        ..add(const _i1.XmlElementName('LogDeliveryBucket'))
        ..add(serializers.serialize(
          logDeliveryBucket,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
