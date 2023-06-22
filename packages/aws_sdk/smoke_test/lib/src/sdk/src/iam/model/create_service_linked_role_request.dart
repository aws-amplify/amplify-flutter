// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.create_service_linked_role_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'create_service_linked_role_request.g.dart';

abstract class CreateServiceLinkedRoleRequest
    with
        _i1.HttpInput<CreateServiceLinkedRoleRequest>,
        _i2.AWSEquatable<CreateServiceLinkedRoleRequest>
    implements
        Built<CreateServiceLinkedRoleRequest,
            CreateServiceLinkedRoleRequestBuilder> {
  factory CreateServiceLinkedRoleRequest({
    required String awsServiceName,
    String? description,
    String? customSuffix,
  }) {
    return _$CreateServiceLinkedRoleRequest._(
      awsServiceName: awsServiceName,
      description: description,
      customSuffix: customSuffix,
    );
  }

  factory CreateServiceLinkedRoleRequest.build(
          [void Function(CreateServiceLinkedRoleRequestBuilder) updates]) =
      _$CreateServiceLinkedRoleRequest;

  const CreateServiceLinkedRoleRequest._();

  factory CreateServiceLinkedRoleRequest.fromRequest(
    CreateServiceLinkedRoleRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<CreateServiceLinkedRoleRequest>>
      serializers = [CreateServiceLinkedRoleRequestAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateServiceLinkedRoleRequestBuilder b) {}

  /// The service principal for the Amazon Web Services service to which this role is attached. You use a string similar to a URL but without the http:// in front. For example: `elasticbeanstalk.amazonaws.com`.
  ///
  /// Service principals are unique and case-sensitive. To find the exact service principal for your service-linked role, see [Amazon Web Services services that work with IAM](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-services-that-work-with-iam.html) in the _IAM User Guide_. Look for the services that have **Yes** in the **Service-Linked Role** column. Choose the **Yes** link to view the service-linked role documentation for that service.
  String get awsServiceName;

  /// The description of the role.
  String? get description;

  /// A string that you provide, which is combined with the service-provided prefix to form the complete role name. If you make multiple requests for the same service, then you must supply a different `CustomSuffix` for each request. Otherwise the request fails with a duplicate role name error. For example, you could add `-1` or `-debug` to the suffix.
  ///
  /// Some services do not support the `CustomSuffix` parameter. If you provide an optional suffix and the operation fails, try the operation again without the suffix.
  String? get customSuffix;
  @override
  CreateServiceLinkedRoleRequest getPayload() => this;
  @override
  List<Object?> get props => [
        awsServiceName,
        description,
        customSuffix,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateServiceLinkedRoleRequest')
      ..add(
        'awsServiceName',
        awsServiceName,
      )
      ..add(
        'description',
        description,
      )
      ..add(
        'customSuffix',
        customSuffix,
      );
    return helper.toString();
  }
}

class CreateServiceLinkedRoleRequestAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<CreateServiceLinkedRoleRequest> {
  const CreateServiceLinkedRoleRequestAwsQuerySerializer()
      : super('CreateServiceLinkedRoleRequest');

  @override
  Iterable<Type> get types => const [
        CreateServiceLinkedRoleRequest,
        _$CreateServiceLinkedRoleRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  CreateServiceLinkedRoleRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateServiceLinkedRoleRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'AWSServiceName':
          result.awsServiceName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Description':
          result.description = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'CustomSuffix':
          result.customSuffix = (serializers.deserialize(
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
    CreateServiceLinkedRoleRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'CreateServiceLinkedRoleRequestResponse',
        _i1.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final CreateServiceLinkedRoleRequest(
      :awsServiceName,
      :description,
      :customSuffix
    ) = object;
    result$
      ..add(const _i1.XmlElementName('AWSServiceName'))
      ..add(serializers.serialize(
        awsServiceName,
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
    if (customSuffix != null) {
      result$
        ..add(const _i1.XmlElementName('CustomSuffix'))
        ..add(serializers.serialize(
          customSuffix,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
