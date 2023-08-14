// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.deregister_instance_tag_attribute_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;

part 'deregister_instance_tag_attribute_request.g.dart';

/// Information about the tag keys to deregister for the current Region. You can either specify individual tag keys or deregister all tag keys in the current Region. You must specify either `IncludeAllTagsOfInstance` or `InstanceTagKeys` in the request
abstract class DeregisterInstanceTagAttributeRequest
    with
        _i1.AWSEquatable<DeregisterInstanceTagAttributeRequest>
    implements
        Built<DeregisterInstanceTagAttributeRequest,
            DeregisterInstanceTagAttributeRequestBuilder> {
  /// Information about the tag keys to deregister for the current Region. You can either specify individual tag keys or deregister all tag keys in the current Region. You must specify either `IncludeAllTagsOfInstance` or `InstanceTagKeys` in the request
  factory DeregisterInstanceTagAttributeRequest({
    bool? includeAllTagsOfInstance,
    List<String>? instanceTagKeys,
  }) {
    includeAllTagsOfInstance ??= false;
    return _$DeregisterInstanceTagAttributeRequest._(
      includeAllTagsOfInstance: includeAllTagsOfInstance,
      instanceTagKeys:
          instanceTagKeys == null ? null : _i2.BuiltList(instanceTagKeys),
    );
  }

  /// Information about the tag keys to deregister for the current Region. You can either specify individual tag keys or deregister all tag keys in the current Region. You must specify either `IncludeAllTagsOfInstance` or `InstanceTagKeys` in the request
  factory DeregisterInstanceTagAttributeRequest.build(
      [void Function(DeregisterInstanceTagAttributeRequestBuilder)
          updates]) = _$DeregisterInstanceTagAttributeRequest;

  const DeregisterInstanceTagAttributeRequest._();

  static const List<_i3.SmithySerializer<DeregisterInstanceTagAttributeRequest>>
      serializers = [DeregisterInstanceTagAttributeRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeregisterInstanceTagAttributeRequestBuilder b) {
    b.includeAllTagsOfInstance = false;
  }

  /// Indicates whether to deregister all tag keys in the current Region. Specify `false` to deregister all tag keys.
  bool get includeAllTagsOfInstance;

  /// Information about the tag keys to deregister.
  _i2.BuiltList<String>? get instanceTagKeys;
  @override
  List<Object?> get props => [
        includeAllTagsOfInstance,
        instanceTagKeys,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DeregisterInstanceTagAttributeRequest')
          ..add(
            'includeAllTagsOfInstance',
            includeAllTagsOfInstance,
          )
          ..add(
            'instanceTagKeys',
            instanceTagKeys,
          );
    return helper.toString();
  }
}

class DeregisterInstanceTagAttributeRequestEc2QuerySerializer extends _i3
    .StructuredSmithySerializer<DeregisterInstanceTagAttributeRequest> {
  const DeregisterInstanceTagAttributeRequestEc2QuerySerializer()
      : super('DeregisterInstanceTagAttributeRequest');

  @override
  Iterable<Type> get types => const [
        DeregisterInstanceTagAttributeRequest,
        _$DeregisterInstanceTagAttributeRequest,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeregisterInstanceTagAttributeRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeregisterInstanceTagAttributeRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'IncludeAllTagsOfInstance':
          result.includeAllTagsOfInstance = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'InstanceTagKey':
          result.instanceTagKeys.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(String)],
            ),
          ) as _i2.BuiltList<String>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DeregisterInstanceTagAttributeRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DeregisterInstanceTagAttributeRequestResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DeregisterInstanceTagAttributeRequest(
      :includeAllTagsOfInstance,
      :instanceTagKeys
    ) = object;
    result$
      ..add(const _i3.XmlElementName('IncludeAllTagsOfInstance'))
      ..add(serializers.serialize(
        includeAllTagsOfInstance,
        specifiedType: const FullType(bool),
      ));
    if (instanceTagKeys != null) {
      result$
        ..add(const _i3.XmlElementName('InstanceTagKey'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          instanceTagKeys,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    return result$;
  }
}
