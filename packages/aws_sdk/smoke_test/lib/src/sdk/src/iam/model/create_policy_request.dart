// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.create_policy_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/iam/model/tag.dart' as _i3;

part 'create_policy_request.g.dart';

abstract class CreatePolicyRequest
    with
        _i1.HttpInput<CreatePolicyRequest>,
        _i2.AWSEquatable<CreatePolicyRequest>
    implements Built<CreatePolicyRequest, CreatePolicyRequestBuilder> {
  factory CreatePolicyRequest({
    required String policyName,
    String? path,
    required String policyDocument,
    String? description,
    List<_i3.Tag>? tags,
  }) {
    return _$CreatePolicyRequest._(
      policyName: policyName,
      path: path,
      policyDocument: policyDocument,
      description: description,
      tags: tags == null ? null : _i4.BuiltList(tags),
    );
  }

  factory CreatePolicyRequest.build(
          [void Function(CreatePolicyRequestBuilder) updates]) =
      _$CreatePolicyRequest;

  const CreatePolicyRequest._();

  factory CreatePolicyRequest.fromRequest(
    CreatePolicyRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<CreatePolicyRequest>> serializers = [
    CreatePolicyRequestAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreatePolicyRequestBuilder b) {}

  /// The friendly name of the policy.
  ///
  /// IAM user, group, role, and policy names must be unique within the account. Names are not distinguished by case. For example, you cannot create resources named both "MyResource" and "myresource".
  String get policyName;

  /// The path for the policy.
  ///
  /// For more information about paths, see [IAM identifiers](https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html) in the _IAM User Guide_.
  ///
  /// This parameter is optional. If it is not included, it defaults to a slash (/).
  ///
  /// This parameter allows (through its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of either a forward slash (/) by itself or a string that must begin and end with forward slashes. In addition, it can contain any ASCII character from the ! (`\\u0021`) through the DEL character (`\\u007F`), including most punctuation characters, digits, and upper and lowercased letters.
  ///
  /// You cannot use an asterisk (*) in the path name.
  String? get path;

  /// The JSON policy document that you want to use as the content for the new policy.
  ///
  /// You must provide policies in JSON format in IAM. However, for CloudFormation templates formatted in YAML, you can provide the policy in JSON or YAML format. CloudFormation always converts a YAML policy to JSON format before submitting it to IAM.
  ///
  /// The maximum length of the policy document that you can pass in this operation, including whitespace, is listed below. To view the maximum character counts of a managed policy with no whitespaces, see [IAM and STS character quotas](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html#reference_iam-quotas-entity-length).
  ///
  /// To learn more about JSON policy grammar, see [Grammar of the IAM JSON policy language](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_grammar.html) in the _IAM User Guide_.
  ///
  /// The [regex pattern](http://wikipedia.org/wiki/regex) used to validate this parameter is a string of characters consisting of the following:
  ///
  /// *   Any printable ASCII character ranging from the space character (`\\u0020`) through the end of the ASCII character range
  ///
  /// *   The printable characters in the Basic Latin and Latin-1 Supplement character set (through `\\u00FF`)
  ///
  /// *   The special characters tab (`\\u0009`), line feed (`\\u000A`), and carriage return (`\\u000D`)
  String get policyDocument;

  /// A friendly description of the policy.
  ///
  /// Typically used to store information about the permissions defined in the policy. For example, "Grants access to production DynamoDB tables."
  ///
  /// The policy description is immutable. After a value is assigned, it cannot be changed.
  String? get description;

  /// A list of tags that you want to attach to the new IAM customer managed policy. Each tag consists of a key name and an associated value. For more information about tagging, see [Tagging IAM resources](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html) in the _IAM User Guide_.
  ///
  /// If any one of the tags is invalid or if you exceed the allowed maximum number of tags, then the entire request fails and the resource is not created.
  _i4.BuiltList<_i3.Tag>? get tags;
  @override
  CreatePolicyRequest getPayload() => this;
  @override
  List<Object?> get props => [
        policyName,
        path,
        policyDocument,
        description,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreatePolicyRequest')
      ..add(
        'policyName',
        policyName,
      )
      ..add(
        'path',
        path,
      )
      ..add(
        'policyDocument',
        policyDocument,
      )
      ..add(
        'description',
        description,
      )
      ..add(
        'tags',
        tags,
      );
    return helper.toString();
  }
}

class CreatePolicyRequestAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<CreatePolicyRequest> {
  const CreatePolicyRequestAwsQuerySerializer() : super('CreatePolicyRequest');

  @override
  Iterable<Type> get types => const [
        CreatePolicyRequest,
        _$CreatePolicyRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  CreatePolicyRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreatePolicyRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'PolicyName':
          result.policyName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Path':
          result.path = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'PolicyDocument':
          result.policyDocument = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Description':
          result.description = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Tags':
          result.tags.replace((const _i1.XmlBuiltListSerializer(
                  indexer: _i1.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(_i3.Tag)],
            ),
          ) as _i4.BuiltList<_i3.Tag>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    CreatePolicyRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'CreatePolicyRequestResponse',
        _i1.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final CreatePolicyRequest(
      :policyName,
      :path,
      :policyDocument,
      :description,
      :tags
    ) = object;
    result$
      ..add(const _i1.XmlElementName('PolicyName'))
      ..add(serializers.serialize(
        policyName,
        specifiedType: const FullType(String),
      ));
    if (path != null) {
      result$
        ..add(const _i1.XmlElementName('Path'))
        ..add(serializers.serialize(
          path,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('PolicyDocument'))
      ..add(serializers.serialize(
        policyDocument,
        specifiedType: const FullType(String),
      ));
    if (description != null) {
      result$
        ..add(const _i1.XmlElementName('Description'))
        ..add(serializers.serialize(
          description,
          specifiedType: const FullType(String),
        ));
    }
    if (tags != null) {
      result$
        ..add(const _i1.XmlElementName('Tags'))
        ..add(const _i1.XmlBuiltListSerializer(
                indexer: _i1.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          tags,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(_i3.Tag)],
          ),
        ));
    }
    return result$;
  }
}
