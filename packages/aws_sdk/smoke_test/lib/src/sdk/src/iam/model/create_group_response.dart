// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.create_group_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/iam/model/group.dart' as _i2;

part 'create_group_response.g.dart';

/// Contains the response to a successful CreateGroup request.
abstract class CreateGroupResponse
    with _i1.AWSEquatable<CreateGroupResponse>
    implements Built<CreateGroupResponse, CreateGroupResponseBuilder> {
  /// Contains the response to a successful CreateGroup request.
  factory CreateGroupResponse({required _i2.Group group}) {
    return _$CreateGroupResponse._(group: group);
  }

  /// Contains the response to a successful CreateGroup request.
  factory CreateGroupResponse.build(
          [void Function(CreateGroupResponseBuilder) updates]) =
      _$CreateGroupResponse;

  const CreateGroupResponse._();

  /// Constructs a [CreateGroupResponse] from a [payload] and [response].
  factory CreateGroupResponse.fromResponse(
    CreateGroupResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<CreateGroupResponse>> serializers = [
    CreateGroupResponseAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateGroupResponseBuilder b) {}

  /// A structure containing details about the new group.
  _i2.Group get group;
  @override
  List<Object?> get props => [group];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateGroupResponse')
      ..add(
        'group',
        group,
      );
    return helper.toString();
  }
}

class CreateGroupResponseAwsQuerySerializer
    extends _i3.StructuredSmithySerializer<CreateGroupResponse> {
  const CreateGroupResponseAwsQuerySerializer() : super('CreateGroupResponse');

  @override
  Iterable<Type> get types => const [
        CreateGroupResponse,
        _$CreateGroupResponse,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  CreateGroupResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateGroupResponseBuilder();
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
          result.group.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.Group),
          ) as _i2.Group));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    CreateGroupResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'CreateGroupResponseResponse',
        _i3.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final CreateGroupResponse(:group) = object;
    result$
      ..add(const _i3.XmlElementName('Group'))
      ..add(serializers.serialize(
        group,
        specifiedType: const FullType(_i2.Group),
      ));
    return result$;
  }
}
