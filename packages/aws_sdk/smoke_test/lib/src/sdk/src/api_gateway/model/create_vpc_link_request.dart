// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.api_gateway.model.create_vpc_link_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'create_vpc_link_request.g.dart';

/// Creates a VPC link, under the caller's account in a selected region, in an asynchronous operation that typically takes 2-4 minutes to complete and become operational. The caller must have permissions to create and update VPC Endpoint services.
abstract class CreateVpcLinkRequest
    with
        _i1.HttpInput<CreateVpcLinkRequest>,
        _i2.AWSEquatable<CreateVpcLinkRequest>
    implements Built<CreateVpcLinkRequest, CreateVpcLinkRequestBuilder> {
  /// Creates a VPC link, under the caller's account in a selected region, in an asynchronous operation that typically takes 2-4 minutes to complete and become operational. The caller must have permissions to create and update VPC Endpoint services.
  factory CreateVpcLinkRequest({
    String? description,
    required String name,
    Map<String, String>? tags,
    required List<String> targetArns,
  }) {
    return _$CreateVpcLinkRequest._(
      description: description,
      name: name,
      tags: tags == null ? null : _i3.BuiltMap(tags),
      targetArns: _i3.BuiltList(targetArns),
    );
  }

  /// Creates a VPC link, under the caller's account in a selected region, in an asynchronous operation that typically takes 2-4 minutes to complete and become operational. The caller must have permissions to create and update VPC Endpoint services.
  factory CreateVpcLinkRequest.build(
          [void Function(CreateVpcLinkRequestBuilder) updates]) =
      _$CreateVpcLinkRequest;

  const CreateVpcLinkRequest._();

  factory CreateVpcLinkRequest.fromRequest(
    CreateVpcLinkRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    CreateVpcLinkRequestRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateVpcLinkRequestBuilder b) {}

  /// The description of the VPC link.
  String? get description;

  /// The name used to label and identify the VPC link.
  String get name;

  /// The key-value map of strings. The valid character set is \[a-zA-Z+-=._:/\]. The tag key can be up to 128 characters and must not start with `aws:`. The tag value can be up to 256 characters.
  _i3.BuiltMap<String, String>? get tags;

  /// The ARN of the network load balancer of the VPC targeted by the VPC link. The network load balancer must be owned by the same AWS account of the API owner.
  _i3.BuiltList<String> get targetArns;
  @override
  CreateVpcLinkRequest getPayload() => this;
  @override
  List<Object?> get props => [
        description,
        name,
        tags,
        targetArns,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateVpcLinkRequest');
    helper.add(
      'description',
      description,
    );
    helper.add(
      'name',
      name,
    );
    helper.add(
      'tags',
      tags,
    );
    helper.add(
      'targetArns',
      targetArns,
    );
    return helper.toString();
  }
}

class CreateVpcLinkRequestRestJson1Serializer
    extends _i1.StructuredSmithySerializer<CreateVpcLinkRequest> {
  const CreateVpcLinkRequestRestJson1Serializer()
      : super('CreateVpcLinkRequest');

  @override
  Iterable<Type> get types => const [
        CreateVpcLinkRequest,
        _$CreateVpcLinkRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  CreateVpcLinkRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateVpcLinkRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'description':
          if (value != null) {
            result.description = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'name':
          result.name = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'tags':
          if (value != null) {
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
          }
          break;
        case 'targetArns':
          result.targetArns.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(String)],
            ),
          ) as _i3.BuiltList<String>));
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = (object as CreateVpcLinkRequest);
    final result = <Object?>[
      'name',
      serializers.serialize(
        payload.name,
        specifiedType: const FullType(String),
      ),
      'targetArns',
      serializers.serialize(
        payload.targetArns,
        specifiedType: const FullType(
          _i3.BuiltList,
          [FullType(String)],
        ),
      ),
    ];
    if (payload.description != null) {
      result
        ..add('description')
        ..add(serializers.serialize(
          payload.description!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.tags != null) {
      result
        ..add('tags')
        ..add(serializers.serialize(
          payload.tags!,
          specifiedType: const FullType(
            _i3.BuiltMap,
            [
              FullType(String),
              FullType(String),
            ],
          ),
        ));
    }
    return result;
  }
}
