// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.create_public_ipv4_pool_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/tag_specification.dart';

part 'create_public_ipv4_pool_request.g.dart';

abstract class CreatePublicIpv4PoolRequest
    with
        _i1.HttpInput<CreatePublicIpv4PoolRequest>,
        _i2.AWSEquatable<CreatePublicIpv4PoolRequest>
    implements
        Built<CreatePublicIpv4PoolRequest, CreatePublicIpv4PoolRequestBuilder> {
  factory CreatePublicIpv4PoolRequest({
    bool? dryRun,
    List<TagSpecification>? tagSpecifications,
  }) {
    dryRun ??= false;
    return _$CreatePublicIpv4PoolRequest._(
      dryRun: dryRun,
      tagSpecifications:
          tagSpecifications == null ? null : _i3.BuiltList(tagSpecifications),
    );
  }

  factory CreatePublicIpv4PoolRequest.build(
          [void Function(CreatePublicIpv4PoolRequestBuilder) updates]) =
      _$CreatePublicIpv4PoolRequest;

  const CreatePublicIpv4PoolRequest._();

  factory CreatePublicIpv4PoolRequest.fromRequest(
    CreatePublicIpv4PoolRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<CreatePublicIpv4PoolRequest>>
      serializers = [CreatePublicIpv4PoolRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreatePublicIpv4PoolRequestBuilder b) {
    b.dryRun = false;
  }

  /// A check for whether you have the required permissions for the action without actually making the request and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key `Owner` and the value `TeamA`, specify `tag:Owner` for the filter name and `TeamA` for the filter value.
  _i3.BuiltList<TagSpecification>? get tagSpecifications;
  @override
  CreatePublicIpv4PoolRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        tagSpecifications,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreatePublicIpv4PoolRequest')
      ..add(
        'dryRun',
        dryRun,
      )
      ..add(
        'tagSpecifications',
        tagSpecifications,
      );
    return helper.toString();
  }
}

class CreatePublicIpv4PoolRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<CreatePublicIpv4PoolRequest> {
  const CreatePublicIpv4PoolRequestEc2QuerySerializer()
      : super('CreatePublicIpv4PoolRequest');

  @override
  Iterable<Type> get types => const [
        CreatePublicIpv4PoolRequest,
        _$CreatePublicIpv4PoolRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreatePublicIpv4PoolRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreatePublicIpv4PoolRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
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
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    CreatePublicIpv4PoolRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'CreatePublicIpv4PoolRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CreatePublicIpv4PoolRequest(:dryRun, :tagSpecifications) = object;
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
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
    return result$;
  }
}
