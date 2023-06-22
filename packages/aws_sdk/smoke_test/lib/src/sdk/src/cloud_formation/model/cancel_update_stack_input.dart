// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.cancel_update_stack_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'cancel_update_stack_input.g.dart';

/// The input for the CancelUpdateStack action.
abstract class CancelUpdateStackInput
    with
        _i1.HttpInput<CancelUpdateStackInput>,
        _i2.AWSEquatable<CancelUpdateStackInput>
    implements Built<CancelUpdateStackInput, CancelUpdateStackInputBuilder> {
  /// The input for the CancelUpdateStack action.
  factory CancelUpdateStackInput({
    required String stackName,
    String? clientRequestToken,
  }) {
    return _$CancelUpdateStackInput._(
      stackName: stackName,
      clientRequestToken: clientRequestToken,
    );
  }

  /// The input for the CancelUpdateStack action.
  factory CancelUpdateStackInput.build(
          [void Function(CancelUpdateStackInputBuilder) updates]) =
      _$CancelUpdateStackInput;

  const CancelUpdateStackInput._();

  factory CancelUpdateStackInput.fromRequest(
    CancelUpdateStackInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<CancelUpdateStackInput>> serializers =
      [CancelUpdateStackInputAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CancelUpdateStackInputBuilder b) {}

  /// If you don't pass a parameter to `StackName`, the API returns a response that describes all resources in the account.
  ///
  /// The IAM policy below can be added to IAM policies when you want to limit resource-level permissions and avoid returning a response when no parameter is sent in the request:
  ///
  /// `{ "Version": "2012-10-17", "Statement": \[{ "Effect": "Deny", "Action": "cloudformation:DescribeStacks", "NotResource": "arn:aws:cloudformation:*:*:stack/*/*" }\] }`
  ///
  /// The name or the unique stack ID that's associated with the stack.
  String get stackName;

  /// A unique identifier for this `CancelUpdateStack` request. Specify this token if you plan to retry requests so that CloudFormation knows that you're not attempting to cancel an update on a stack with the same name. You might retry `CancelUpdateStack` requests to ensure that CloudFormation successfully received them.
  String? get clientRequestToken;
  @override
  CancelUpdateStackInput getPayload() => this;
  @override
  List<Object?> get props => [
        stackName,
        clientRequestToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CancelUpdateStackInput')
      ..add(
        'stackName',
        stackName,
      )
      ..add(
        'clientRequestToken',
        clientRequestToken,
      );
    return helper.toString();
  }
}

class CancelUpdateStackInputAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<CancelUpdateStackInput> {
  const CancelUpdateStackInputAwsQuerySerializer()
      : super('CancelUpdateStackInput');

  @override
  Iterable<Type> get types => const [
        CancelUpdateStackInput,
        _$CancelUpdateStackInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  CancelUpdateStackInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CancelUpdateStackInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'StackName':
          result.stackName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ClientRequestToken':
          result.clientRequestToken = (serializers.deserialize(
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
    CancelUpdateStackInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'CancelUpdateStackInputResponse',
        _i1.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final CancelUpdateStackInput(:stackName, :clientRequestToken) = object;
    result$
      ..add(const _i1.XmlElementName('StackName'))
      ..add(serializers.serialize(
        stackName,
        specifiedType: const FullType(String),
      ));
    if (clientRequestToken != null) {
      result$
        ..add(const _i1.XmlElementName('ClientRequestToken'))
        ..add(serializers.serialize(
          clientRequestToken,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
