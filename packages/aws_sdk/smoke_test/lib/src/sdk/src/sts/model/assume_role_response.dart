// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.sts.model.assume_role_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/sts/model/assumed_role_user.dart';
import 'package:smoke_test/src/sdk/src/sts/model/credentials.dart';

part 'assume_role_response.g.dart';

/// Contains the response to a successful AssumeRole request, including temporary Amazon Web Services credentials that can be used to make Amazon Web Services requests.
abstract class AssumeRoleResponse
    with _i1.AWSEquatable<AssumeRoleResponse>
    implements Built<AssumeRoleResponse, AssumeRoleResponseBuilder> {
  /// Contains the response to a successful AssumeRole request, including temporary Amazon Web Services credentials that can be used to make Amazon Web Services requests.
  factory AssumeRoleResponse({
    Credentials? credentials,
    AssumedRoleUser? assumedRoleUser,
    int? packedPolicySize,
    String? sourceIdentity,
  }) {
    return _$AssumeRoleResponse._(
      credentials: credentials,
      assumedRoleUser: assumedRoleUser,
      packedPolicySize: packedPolicySize,
      sourceIdentity: sourceIdentity,
    );
  }

  /// Contains the response to a successful AssumeRole request, including temporary Amazon Web Services credentials that can be used to make Amazon Web Services requests.
  factory AssumeRoleResponse.build(
          [void Function(AssumeRoleResponseBuilder) updates]) =
      _$AssumeRoleResponse;

  const AssumeRoleResponse._();

  /// Constructs a [AssumeRoleResponse] from a [payload] and [response].
  factory AssumeRoleResponse.fromResponse(
    AssumeRoleResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<AssumeRoleResponse>> serializers = [
    AssumeRoleResponseAwsQuerySerializer()
  ];

  /// The temporary security credentials, which include an access key ID, a secret access key, and a security (or session) token.
  ///
  /// The size of the security token that STS API operations return is not fixed. We strongly recommend that you make no assumptions about the maximum size.
  Credentials? get credentials;

  /// The Amazon Resource Name (ARN) and the assumed role ID, which are identifiers that you can use to refer to the resulting temporary security credentials. For example, you can reference these credentials as a principal in a resource-based policy by using the ARN or assumed role ID. The ARN and ID include the `RoleSessionName` that you specified when you called `AssumeRole`.
  AssumedRoleUser? get assumedRoleUser;

  /// A percentage value that indicates the packed size of the session policies and session tags combined passed in the request. The request fails if the packed size is greater than 100 percent, which means the policies and tags exceeded the allowed space.
  int? get packedPolicySize;

  /// The source identity specified by the principal that is calling the `AssumeRole` operation.
  ///
  /// You can require users to specify a source identity when they assume a role. You do this by using the `sts:SourceIdentity` condition key in a role trust policy. You can use source identity information in CloudTrail logs to determine who took actions with a role. You can use the `aws:SourceIdentity` condition key to further control access to Amazon Web Services resources based on the value of source identity. For more information about using source identity, see [Monitor and control actions taken with assumed roles](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_control-access_monitor.html) in the _IAM User Guide_.
  ///
  /// The regex used to validate this parameter is a string of characters consisting of upper- and lower-case alphanumeric characters with no spaces. You can also include underscores or any of the following characters: =,.@-
  String? get sourceIdentity;
  @override
  List<Object?> get props => [
        credentials,
        assumedRoleUser,
        packedPolicySize,
        sourceIdentity,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AssumeRoleResponse')
      ..add(
        'credentials',
        credentials,
      )
      ..add(
        'assumedRoleUser',
        assumedRoleUser,
      )
      ..add(
        'packedPolicySize',
        packedPolicySize,
      )
      ..add(
        'sourceIdentity',
        sourceIdentity,
      );
    return helper.toString();
  }
}

class AssumeRoleResponseAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<AssumeRoleResponse> {
  const AssumeRoleResponseAwsQuerySerializer() : super('AssumeRoleResponse');

  @override
  Iterable<Type> get types => const [
        AssumeRoleResponse,
        _$AssumeRoleResponse,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  AssumeRoleResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AssumeRoleResponseBuilder();
    final responseIterator = serialized.iterator;
    while (responseIterator.moveNext()) {
      final key = responseIterator.current as String;
      responseIterator.moveNext();
      if (key.endsWith('Result')) {
        serialized = responseIterator.current as Iterable;
      }
    }
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Credentials':
          result.credentials.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(Credentials),
          ) as Credentials));
        case 'AssumedRoleUser':
          result.assumedRoleUser.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(AssumedRoleUser),
          ) as AssumedRoleUser));
        case 'PackedPolicySize':
          result.packedPolicySize = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'SourceIdentity':
          result.sourceIdentity = (serializers.deserialize(
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
    AssumeRoleResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'AssumeRoleResponseResponse',
        _i2.XmlNamespace('https://sts.amazonaws.com/doc/2011-06-15/'),
      )
    ];
    final AssumeRoleResponse(
      :credentials,
      :assumedRoleUser,
      :packedPolicySize,
      :sourceIdentity
    ) = object;
    if (credentials != null) {
      result$
        ..add(const _i2.XmlElementName('Credentials'))
        ..add(serializers.serialize(
          credentials,
          specifiedType: const FullType(Credentials),
        ));
    }
    if (assumedRoleUser != null) {
      result$
        ..add(const _i2.XmlElementName('AssumedRoleUser'))
        ..add(serializers.serialize(
          assumedRoleUser,
          specifiedType: const FullType(AssumedRoleUser),
        ));
    }
    if (packedPolicySize != null) {
      result$
        ..add(const _i2.XmlElementName('PackedPolicySize'))
        ..add(serializers.serialize(
          packedPolicySize,
          specifiedType: const FullType.nullable(int),
        ));
    }
    if (sourceIdentity != null) {
      result$
        ..add(const _i2.XmlElementName('SourceIdentity'))
        ..add(serializers.serialize(
          sourceIdentity,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
