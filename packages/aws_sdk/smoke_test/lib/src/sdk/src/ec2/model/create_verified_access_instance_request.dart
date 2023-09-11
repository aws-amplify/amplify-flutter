// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.create_verified_access_instance_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/tag_specification.dart';

part 'create_verified_access_instance_request.g.dart';

abstract class CreateVerifiedAccessInstanceRequest
    with
        _i1.HttpInput<CreateVerifiedAccessInstanceRequest>,
        _i2.AWSEquatable<CreateVerifiedAccessInstanceRequest>
    implements
        Built<CreateVerifiedAccessInstanceRequest,
            CreateVerifiedAccessInstanceRequestBuilder> {
  factory CreateVerifiedAccessInstanceRequest({
    String? description,
    List<TagSpecification>? tagSpecifications,
    String? clientToken,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$CreateVerifiedAccessInstanceRequest._(
      description: description,
      tagSpecifications:
          tagSpecifications == null ? null : _i3.BuiltList(tagSpecifications),
      clientToken: clientToken,
      dryRun: dryRun,
    );
  }

  factory CreateVerifiedAccessInstanceRequest.build(
          [void Function(CreateVerifiedAccessInstanceRequestBuilder) updates]) =
      _$CreateVerifiedAccessInstanceRequest;

  const CreateVerifiedAccessInstanceRequest._();

  factory CreateVerifiedAccessInstanceRequest.fromRequest(
    CreateVerifiedAccessInstanceRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<CreateVerifiedAccessInstanceRequest>>
      serializers = [CreateVerifiedAccessInstanceRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateVerifiedAccessInstanceRequestBuilder b) {
    b
      ..clientToken = const bool.hasEnvironment('SMITHY_TEST')
          ? '00000000-0000-4000-8000-000000000000'
          : _i2.uuid(secure: true)
      ..dryRun = false;
  }

  /// A description for the Verified Access instance.
  String? get description;

  /// The tags to assign to the Verified Access instance.
  _i3.BuiltList<TagSpecification>? get tagSpecifications;

  /// A unique, case-sensitive token that you provide to ensure idempotency of your modification request. For more information, see [Ensuring Idempotency](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).
  String? get clientToken;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  CreateVerifiedAccessInstanceRequest getPayload() => this;
  @override
  List<Object?> get props => [
        description,
        tagSpecifications,
        clientToken,
        dryRun,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('CreateVerifiedAccessInstanceRequest')
          ..add(
            'description',
            description,
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

class CreateVerifiedAccessInstanceRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<CreateVerifiedAccessInstanceRequest> {
  const CreateVerifiedAccessInstanceRequestEc2QuerySerializer()
      : super('CreateVerifiedAccessInstanceRequest');

  @override
  Iterable<Type> get types => const [
        CreateVerifiedAccessInstanceRequest,
        _$CreateVerifiedAccessInstanceRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateVerifiedAccessInstanceRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateVerifiedAccessInstanceRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Description':
          result.description = (serializers.deserialize(
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
    CreateVerifiedAccessInstanceRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'CreateVerifiedAccessInstanceRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CreateVerifiedAccessInstanceRequest(
      :description,
      :tagSpecifications,
      :clientToken,
      :dryRun
    ) = object;
    if (description != null) {
      result$
        ..add(const _i1.XmlElementName('Description'))
        ..add(serializers.serialize(
          description,
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
          specifiedType: const FullType(
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
