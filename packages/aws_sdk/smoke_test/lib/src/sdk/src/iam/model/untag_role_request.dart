// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.untag_role_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'untag_role_request.g.dart';

abstract class UntagRoleRequest
    with _i1.HttpInput<UntagRoleRequest>, _i2.AWSEquatable<UntagRoleRequest>
    implements Built<UntagRoleRequest, UntagRoleRequestBuilder> {
  factory UntagRoleRequest({
    required String roleName,
    required List<String> tagKeys,
  }) {
    return _$UntagRoleRequest._(
      roleName: roleName,
      tagKeys: _i3.BuiltList(tagKeys),
    );
  }

  factory UntagRoleRequest.build(
      [void Function(UntagRoleRequestBuilder) updates]) = _$UntagRoleRequest;

  const UntagRoleRequest._();

  factory UntagRoleRequest.fromRequest(
    UntagRoleRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<UntagRoleRequest>> serializers = [
    UntagRoleRequestAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UntagRoleRequestBuilder b) {}

  /// The name of the IAM role from which you want to remove tags.
  ///
  /// This parameter accepts (through its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters that consist of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
  String get roleName;

  /// A list of key names as a simple array of strings. The tags with matching keys are removed from the specified role.
  _i3.BuiltList<String> get tagKeys;
  @override
  UntagRoleRequest getPayload() => this;
  @override
  List<Object?> get props => [
        roleName,
        tagKeys,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('UntagRoleRequest')
      ..add(
        'roleName',
        roleName,
      )
      ..add(
        'tagKeys',
        tagKeys,
      );
    return helper.toString();
  }
}

class UntagRoleRequestAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<UntagRoleRequest> {
  const UntagRoleRequestAwsQuerySerializer() : super('UntagRoleRequest');

  @override
  Iterable<Type> get types => const [
        UntagRoleRequest,
        _$UntagRoleRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  UntagRoleRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UntagRoleRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'RoleName':
          result.roleName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'TagKeys':
          result.tagKeys.replace((const _i1.XmlBuiltListSerializer(
                  indexer: _i1.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
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
    UntagRoleRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'UntagRoleRequestResponse',
        _i1.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final UntagRoleRequest(:roleName, :tagKeys) = object;
    result$
      ..add(const _i1.XmlElementName('RoleName'))
      ..add(serializers.serialize(
        roleName,
        specifiedType: const FullType(String),
      ));
    result$
      ..add(const _i1.XmlElementName('TagKeys'))
      ..add(
          const _i1.XmlBuiltListSerializer(indexer: _i1.XmlIndexer.awsQueryList)
              .serialize(
        serializers,
        tagKeys,
        specifiedType: const FullType.nullable(
          _i3.BuiltList,
          [FullType(String)],
        ),
      ));
    return result$;
  }
}
