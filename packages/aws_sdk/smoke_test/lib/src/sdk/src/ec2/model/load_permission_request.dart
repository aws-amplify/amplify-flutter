// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.load_permission_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/permission_group.dart';

part 'load_permission_request.g.dart';

/// Describes a load permission.
abstract class LoadPermissionRequest
    with _i1.AWSEquatable<LoadPermissionRequest>
    implements Built<LoadPermissionRequest, LoadPermissionRequestBuilder> {
  /// Describes a load permission.
  factory LoadPermissionRequest({
    PermissionGroup? group,
    String? userId,
  }) {
    return _$LoadPermissionRequest._(
      group: group,
      userId: userId,
    );
  }

  /// Describes a load permission.
  factory LoadPermissionRequest.build(
          [void Function(LoadPermissionRequestBuilder) updates]) =
      _$LoadPermissionRequest;

  const LoadPermissionRequest._();

  static const List<_i2.SmithySerializer<LoadPermissionRequest>> serializers = [
    LoadPermissionRequestEc2QuerySerializer()
  ];

  /// The name of the group.
  PermissionGroup? get group;

  /// The Amazon Web Services account ID.
  String? get userId;
  @override
  List<Object?> get props => [
        group,
        userId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('LoadPermissionRequest')
      ..add(
        'group',
        group,
      )
      ..add(
        'userId',
        userId,
      );
    return helper.toString();
  }
}

class LoadPermissionRequestEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<LoadPermissionRequest> {
  const LoadPermissionRequestEc2QuerySerializer()
      : super('LoadPermissionRequest');

  @override
  Iterable<Type> get types => const [
        LoadPermissionRequest,
        _$LoadPermissionRequest,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  LoadPermissionRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LoadPermissionRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Group':
          result.group = (serializers.deserialize(
            value,
            specifiedType: const FullType(PermissionGroup),
          ) as PermissionGroup);
        case 'UserId':
          result.userId = (serializers.deserialize(
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
    LoadPermissionRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'LoadPermissionRequestResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final LoadPermissionRequest(:group, :userId) = object;
    if (group != null) {
      result$
        ..add(const _i2.XmlElementName('Group'))
        ..add(serializers.serialize(
          group,
          specifiedType: const FullType.nullable(PermissionGroup),
        ));
    }
    if (userId != null) {
      result$
        ..add(const _i2.XmlElementName('UserId'))
        ..add(serializers.serialize(
          userId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
