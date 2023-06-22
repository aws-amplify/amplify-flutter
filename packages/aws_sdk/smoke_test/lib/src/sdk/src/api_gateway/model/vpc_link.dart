// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.api_gateway.model.vpc_link; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/api_gateway/model/vpc_link_status.dart'
    as _i2;

part 'vpc_link.g.dart';

/// An API Gateway VPC link for a RestApi to access resources in an Amazon Virtual Private Cloud (VPC).
abstract class VpcLink
    with _i1.AWSEquatable<VpcLink>
    implements Built<VpcLink, VpcLinkBuilder> {
  /// An API Gateway VPC link for a RestApi to access resources in an Amazon Virtual Private Cloud (VPC).
  factory VpcLink({
    String? id,
    String? name,
    String? description,
    List<String>? targetArns,
    _i2.VpcLinkStatus? status,
    String? statusMessage,
    Map<String, String>? tags,
  }) {
    return _$VpcLink._(
      id: id,
      name: name,
      description: description,
      targetArns: targetArns == null ? null : _i3.BuiltList(targetArns),
      status: status,
      statusMessage: statusMessage,
      tags: tags == null ? null : _i3.BuiltMap(tags),
    );
  }

  /// An API Gateway VPC link for a RestApi to access resources in an Amazon Virtual Private Cloud (VPC).
  factory VpcLink.build([void Function(VpcLinkBuilder) updates]) = _$VpcLink;

  const VpcLink._();

  /// Constructs a [VpcLink] from a [payload] and [response].
  factory VpcLink.fromResponse(
    VpcLink payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer<VpcLink>> serializers = [
    VpcLinkRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(VpcLinkBuilder b) {}

  /// The identifier of the VpcLink. It is used in an Integration to reference this VpcLink.
  String? get id;

  /// The name used to label and identify the VPC link.
  String? get name;

  /// The description of the VPC link.
  String? get description;

  /// The ARN of the network load balancer of the VPC targeted by the VPC link. The network load balancer must be owned by the same AWS account of the API owner.
  _i3.BuiltList<String>? get targetArns;

  /// The status of the VPC link. The valid values are `AVAILABLE`, `PENDING`, `DELETING`, or `FAILED`. Deploying an API will wait if the status is `PENDING` and will fail if the status is `DELETING`.
  _i2.VpcLinkStatus? get status;

  /// A description about the VPC link status.
  String? get statusMessage;

  /// The collection of tags. Each tag element is associated with a given resource.
  _i3.BuiltMap<String, String>? get tags;
  @override
  List<Object?> get props => [
        id,
        name,
        description,
        targetArns,
        status,
        statusMessage,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('VpcLink')
      ..add(
        'id',
        id,
      )
      ..add(
        'name',
        name,
      )
      ..add(
        'description',
        description,
      )
      ..add(
        'targetArns',
        targetArns,
      )
      ..add(
        'status',
        status,
      )
      ..add(
        'statusMessage',
        statusMessage,
      )
      ..add(
        'tags',
        tags,
      );
    return helper.toString();
  }
}

class VpcLinkRestJson1Serializer
    extends _i4.StructuredSmithySerializer<VpcLink> {
  const VpcLinkRestJson1Serializer() : super('VpcLink');

  @override
  Iterable<Type> get types => const [
        VpcLink,
        _$VpcLink,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  VpcLink deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VpcLinkBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'description':
          result.description = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'id':
          result.id = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'name':
          result.name = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'status':
          result.status = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.VpcLinkStatus),
          ) as _i2.VpcLinkStatus);
        case 'statusMessage':
          result.statusMessage = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'tags':
          result.tags.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i3.BuiltMap,
              [
                FullType(String),
                FullType(String),
              ],
            ),
          ) as _i3.BuiltMap<String, String>));
        case 'targetArns':
          result.targetArns.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(String)],
            ),
          ) as _i3.BuiltList<String>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    VpcLink object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final VpcLink(
      :description,
      :id,
      :name,
      :status,
      :statusMessage,
      :tags,
      :targetArns
    ) = object;
    if (description != null) {
      result$
        ..add('description')
        ..add(serializers.serialize(
          description,
          specifiedType: const FullType(String),
        ));
    }
    if (id != null) {
      result$
        ..add('id')
        ..add(serializers.serialize(
          id,
          specifiedType: const FullType(String),
        ));
    }
    if (name != null) {
      result$
        ..add('name')
        ..add(serializers.serialize(
          name,
          specifiedType: const FullType(String),
        ));
    }
    if (status != null) {
      result$
        ..add('status')
        ..add(serializers.serialize(
          status,
          specifiedType: const FullType(_i2.VpcLinkStatus),
        ));
    }
    if (statusMessage != null) {
      result$
        ..add('statusMessage')
        ..add(serializers.serialize(
          statusMessage,
          specifiedType: const FullType(String),
        ));
    }
    if (tags != null) {
      result$
        ..add('tags')
        ..add(serializers.serialize(
          tags,
          specifiedType: const FullType(
            _i3.BuiltMap,
            [
              FullType(String),
              FullType(String),
            ],
          ),
        ));
    }
    if (targetArns != null) {
      result$
        ..add('targetArns')
        ..add(serializers.serialize(
          targetArns,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    return result$;
  }
}
