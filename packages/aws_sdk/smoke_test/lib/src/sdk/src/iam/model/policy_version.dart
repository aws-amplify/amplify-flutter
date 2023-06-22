// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.policy_version; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'policy_version.g.dart';

/// Contains information about a version of a managed policy.
///
/// This data type is used as a response element in the CreatePolicyVersion, GetPolicyVersion, ListPolicyVersions, and GetAccountAuthorizationDetails operations.
///
/// For more information about managed policies, refer to [Managed policies and inline policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html) in the _IAM User Guide_.
abstract class PolicyVersion
    with _i1.AWSEquatable<PolicyVersion>
    implements Built<PolicyVersion, PolicyVersionBuilder> {
  /// Contains information about a version of a managed policy.
  ///
  /// This data type is used as a response element in the CreatePolicyVersion, GetPolicyVersion, ListPolicyVersions, and GetAccountAuthorizationDetails operations.
  ///
  /// For more information about managed policies, refer to [Managed policies and inline policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html) in the _IAM User Guide_.
  factory PolicyVersion({
    String? document,
    String? versionId,
    bool? isDefaultVersion,
    DateTime? createDate,
  }) {
    isDefaultVersion ??= false;
    return _$PolicyVersion._(
      document: document,
      versionId: versionId,
      isDefaultVersion: isDefaultVersion,
      createDate: createDate,
    );
  }

  /// Contains information about a version of a managed policy.
  ///
  /// This data type is used as a response element in the CreatePolicyVersion, GetPolicyVersion, ListPolicyVersions, and GetAccountAuthorizationDetails operations.
  ///
  /// For more information about managed policies, refer to [Managed policies and inline policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html) in the _IAM User Guide_.
  factory PolicyVersion.build([void Function(PolicyVersionBuilder) updates]) =
      _$PolicyVersion;

  const PolicyVersion._();

  static const List<_i2.SmithySerializer<PolicyVersion>> serializers = [
    PolicyVersionAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PolicyVersionBuilder b) {
    b.isDefaultVersion = false;
  }

  /// The policy document.
  ///
  /// The policy document is returned in the response to the GetPolicyVersion and GetAccountAuthorizationDetails operations. It is not returned in the response to the CreatePolicyVersion or ListPolicyVersions operations.
  ///
  /// The policy document returned in this structure is URL-encoded compliant with [RFC 3986](https://tools.ietf.org/html/rfc3986). You can use a URL decoding method to convert the policy back to plain JSON text. For example, if you use Java, you can use the `decode` method of the `java.net.URLDecoder` utility class in the Java SDK. Other languages and SDKs provide similar functionality.
  String? get document;

  /// The identifier for the policy version.
  ///
  /// Policy version identifiers always begin with `v` (always lowercase). When a policy is created, the first policy version is `v1`.
  String? get versionId;

  /// Specifies whether the policy version is set as the policy's default version.
  bool get isDefaultVersion;

  /// The date and time, in [ISO 8601 date-time format](http://www.iso.org/iso/iso8601), when the policy version was created.
  DateTime? get createDate;
  @override
  List<Object?> get props => [
        document,
        versionId,
        isDefaultVersion,
        createDate,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PolicyVersion')
      ..add(
        'document',
        document,
      )
      ..add(
        'versionId',
        versionId,
      )
      ..add(
        'isDefaultVersion',
        isDefaultVersion,
      )
      ..add(
        'createDate',
        createDate,
      );
    return helper.toString();
  }
}

class PolicyVersionAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<PolicyVersion> {
  const PolicyVersionAwsQuerySerializer() : super('PolicyVersion');

  @override
  Iterable<Type> get types => const [
        PolicyVersion,
        _$PolicyVersion,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  PolicyVersion deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PolicyVersionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Document':
          result.document = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'VersionId':
          result.versionId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'IsDefaultVersion':
          result.isDefaultVersion = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'CreateDate':
          result.createDate = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    PolicyVersion object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'PolicyVersionResponse',
        _i2.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final PolicyVersion(:document, :versionId, :isDefaultVersion, :createDate) =
        object;
    if (document != null) {
      result$
        ..add(const _i2.XmlElementName('Document'))
        ..add(serializers.serialize(
          document,
          specifiedType: const FullType(String),
        ));
    }
    if (versionId != null) {
      result$
        ..add(const _i2.XmlElementName('VersionId'))
        ..add(serializers.serialize(
          versionId,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i2.XmlElementName('IsDefaultVersion'))
      ..add(serializers.serialize(
        isDefaultVersion,
        specifiedType: const FullType(bool),
      ));
    if (createDate != null) {
      result$
        ..add(const _i2.XmlElementName('CreateDate'))
        ..add(serializers.serialize(
          createDate,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    return result$;
  }
}
