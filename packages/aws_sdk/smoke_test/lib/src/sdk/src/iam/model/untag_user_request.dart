// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.untag_user_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'untag_user_request.g.dart';

abstract class UntagUserRequest
    with _i1.HttpInput<UntagUserRequest>, _i2.AWSEquatable<UntagUserRequest>
    implements Built<UntagUserRequest, UntagUserRequestBuilder> {
  factory UntagUserRequest({
    required String userName,
    required List<String> tagKeys,
  }) {
    return _$UntagUserRequest._(
      userName: userName,
      tagKeys: _i3.BuiltList(tagKeys),
    );
  }

  factory UntagUserRequest.build(
      [void Function(UntagUserRequestBuilder) updates]) = _$UntagUserRequest;

  const UntagUserRequest._();

  factory UntagUserRequest.fromRequest(
    UntagUserRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<UntagUserRequest>> serializers = [
    UntagUserRequestAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UntagUserRequestBuilder b) {}

  /// The name of the IAM user from which you want to remove tags.
  ///
  /// This parameter allows (through its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
  String get userName;

  /// A list of key names as a simple array of strings. The tags with matching keys are removed from the specified user.
  _i3.BuiltList<String> get tagKeys;
  @override
  UntagUserRequest getPayload() => this;
  @override
  List<Object?> get props => [
        userName,
        tagKeys,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('UntagUserRequest')
      ..add(
        'userName',
        userName,
      )
      ..add(
        'tagKeys',
        tagKeys,
      );
    return helper.toString();
  }
}

class UntagUserRequestAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<UntagUserRequest> {
  const UntagUserRequestAwsQuerySerializer() : super('UntagUserRequest');

  @override
  Iterable<Type> get types => const [
        UntagUserRequest,
        _$UntagUserRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  UntagUserRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UntagUserRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'UserName':
          result.userName = (serializers.deserialize(
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
    UntagUserRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'UntagUserRequestResponse',
        _i1.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final UntagUserRequest(:userName, :tagKeys) = object;
    result$
      ..add(const _i1.XmlElementName('UserName'))
      ..add(serializers.serialize(
        userName,
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
