// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.create_verified_access_group_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/tag_specification.dart';

part 'create_verified_access_group_request.g.dart';

abstract class CreateVerifiedAccessGroupRequest
    with
        _i1.HttpInput<CreateVerifiedAccessGroupRequest>,
        _i2.AWSEquatable<CreateVerifiedAccessGroupRequest>
    implements
        Built<CreateVerifiedAccessGroupRequest,
            CreateVerifiedAccessGroupRequestBuilder> {
  factory CreateVerifiedAccessGroupRequest({
    String? verifiedAccessInstanceId,
    String? description,
    String? policyDocument,
    List<TagSpecification>? tagSpecifications,
    String? clientToken,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$CreateVerifiedAccessGroupRequest._(
      verifiedAccessInstanceId: verifiedAccessInstanceId,
      description: description,
      policyDocument: policyDocument,
      tagSpecifications:
          tagSpecifications == null ? null : _i3.BuiltList(tagSpecifications),
      clientToken: clientToken,
      dryRun: dryRun,
    );
  }

  factory CreateVerifiedAccessGroupRequest.build(
          [void Function(CreateVerifiedAccessGroupRequestBuilder) updates]) =
      _$CreateVerifiedAccessGroupRequest;

  const CreateVerifiedAccessGroupRequest._();

  factory CreateVerifiedAccessGroupRequest.fromRequest(
    CreateVerifiedAccessGroupRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<CreateVerifiedAccessGroupRequest>>
      serializers = [CreateVerifiedAccessGroupRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateVerifiedAccessGroupRequestBuilder b) {
    b
      ..clientToken = const bool.hasEnvironment('SMITHY_TEST')
          ? '00000000-0000-4000-8000-000000000000'
          : _i2.uuid(secure: true)
      ..dryRun = false;
  }

  /// The ID of the Verified Access instance.
  String? get verifiedAccessInstanceId;

  /// A description for the Verified Access group.
  String? get description;

  /// The Verified Access policy document.
  String? get policyDocument;

  /// The tags to assign to the Verified Access group.
  _i3.BuiltList<TagSpecification>? get tagSpecifications;

  /// A unique, case-sensitive token that you provide to ensure idempotency of your modification request. For more information, see [Ensuring Idempotency](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).
  String? get clientToken;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  CreateVerifiedAccessGroupRequest getPayload() => this;
  @override
  List<Object?> get props => [
        verifiedAccessInstanceId,
        description,
        policyDocument,
        tagSpecifications,
        clientToken,
        dryRun,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('CreateVerifiedAccessGroupRequest')
          ..add(
            'verifiedAccessInstanceId',
            verifiedAccessInstanceId,
          )
          ..add(
            'description',
            description,
          )
          ..add(
            'policyDocument',
            policyDocument,
          )
          ..add(
            'tagSpecifications',
            tagSpecifications,
          )
          ..add(
            'clientToken',
            clientToken,
          )
          ..add(
            'dryRun',
            dryRun,
          );
    return helper.toString();
  }
}

class CreateVerifiedAccessGroupRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<CreateVerifiedAccessGroupRequest> {
  const CreateVerifiedAccessGroupRequestEc2QuerySerializer()
      : super('CreateVerifiedAccessGroupRequest');

  @override
  Iterable<Type> get types => const [
        CreateVerifiedAccessGroupRequest,
        _$CreateVerifiedAccessGroupRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateVerifiedAccessGroupRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateVerifiedAccessGroupRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'VerifiedAccessInstanceId':
          result.verifiedAccessInstanceId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Description':
          result.description = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'PolicyDocument':
          result.policyDocument = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'TagSpecification':
          result.tagSpecifications.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(TagSpecification)],
            ),
          ) as _i3.BuiltList<TagSpecification>));
        case 'ClientToken':
          result.clientToken = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
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
    CreateVerifiedAccessGroupRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'CreateVerifiedAccessGroupRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CreateVerifiedAccessGroupRequest(
      :verifiedAccessInstanceId,
      :description,
      :policyDocument,
      :tagSpecifications,
      :clientToken,
      :dryRun
    ) = object;
    if (verifiedAccessInstanceId != null) {
      result$
        ..add(const _i1.XmlElementName('VerifiedAccessInstanceId'))
        ..add(serializers.serialize(
          verifiedAccessInstanceId,
          specifiedType: const FullType(String),
        ));
    }
    if (description != null) {
      result$
        ..add(const _i1.XmlElementName('Description'))
        ..add(serializers.serialize(
          description,
          specifiedType: const FullType(String),
        ));
    }
    if (policyDocument != null) {
      result$
        ..add(const _i1.XmlElementName('PolicyDocument'))
        ..add(serializers.serialize(
          policyDocument,
          specifiedType: const FullType(String),
        ));
    }
    if (tagSpecifications != null) {
      result$
        ..add(const _i1.XmlElementName('TagSpecification'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          tagSpecifications,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(TagSpecification)],
          ),
        ));
    }
    if (clientToken != null) {
      result$
        ..add(const _i1.XmlElementName('ClientToken'))
        ..add(serializers.serialize(
          clientToken,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}
