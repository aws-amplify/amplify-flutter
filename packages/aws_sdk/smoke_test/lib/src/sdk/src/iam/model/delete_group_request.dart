// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.delete_group_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'delete_group_request.g.dart';

abstract class DeleteGroupRequest
    with _i1.HttpInput<DeleteGroupRequest>, _i2.AWSEquatable<DeleteGroupRequest>
    implements Built<DeleteGroupRequest, DeleteGroupRequestBuilder> {
  factory DeleteGroupRequest({required String groupName}) {
    return _$DeleteGroupRequest._(groupName: groupName);
  }

  factory DeleteGroupRequest.build(
          [void Function(DeleteGroupRequestBuilder) updates]) =
      _$DeleteGroupRequest;

  const DeleteGroupRequest._();

  factory DeleteGroupRequest.fromRequest(
    DeleteGroupRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DeleteGroupRequest>> serializers = [
    DeleteGroupRequestAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteGroupRequestBuilder b) {}

  /// The name of the IAM group to delete.
  ///
  /// This parameter allows (through its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
  String get groupName;
  @override
  DeleteGroupRequest getPayload() => this;
  @override
  List<Object?> get props => [groupName];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteGroupRequest')
      ..add(
        'groupName',
        groupName,
      );
    return helper.toString();
  }
}

class DeleteGroupRequestAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<DeleteGroupRequest> {
  const DeleteGroupRequestAwsQuerySerializer() : super('DeleteGroupRequest');

  @override
  Iterable<Type> get types => const [
        DeleteGroupRequest,
        _$DeleteGroupRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  DeleteGroupRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteGroupRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'GroupName':
          result.groupName = (serializers.deserialize(
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
    DeleteGroupRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DeleteGroupRequestResponse',
        _i1.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final DeleteGroupRequest(:groupName) = object;
    result$
      ..add(const _i1.XmlElementName('GroupName'))
      ..add(serializers.serialize(
        groupName,
        specifiedType: const FullType(String),
      ));
    return result$;
  }
}
