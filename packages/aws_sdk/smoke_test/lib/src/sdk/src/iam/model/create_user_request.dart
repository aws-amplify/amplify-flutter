// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.iam.model.create_user_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/iam/model/tag.dart' as _i3;

part 'create_user_request.g.dart';

abstract class CreateUserRequest
    with _i1.HttpInput<CreateUserRequest>, _i2.AWSEquatable<CreateUserRequest>
    implements Built<CreateUserRequest, CreateUserRequestBuilder> {
  factory CreateUserRequest({
    String? path,
    required String userName,
    String? permissionsBoundary,
    List<_i3.Tag>? tags,
  }) {
    return _$CreateUserRequest._(
      path: path,
      userName: userName,
      permissionsBoundary: permissionsBoundary,
      tags: tags == null ? null : _i4.BuiltList(tags),
    );
  }

  factory CreateUserRequest.build(
      [void Function(CreateUserRequestBuilder) updates]) = _$CreateUserRequest;

  const CreateUserRequest._();

  factory CreateUserRequest.fromRequest(
    CreateUserRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    CreateUserRequestAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateUserRequestBuilder b) {}

  /// The path for the user name. For more information about paths, see [IAM identifiers](https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html) in the _IAM User Guide_.
  ///
  /// This parameter is optional. If it is not included, it defaults to a slash (/).
  ///
  /// This parameter allows (through its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of either a forward slash (/) by itself or a string that must begin and end with forward slashes. In addition, it can contain any ASCII character from the ! (`\\u0021`) through the DEL character (`\\u007F`), including most punctuation characters, digits, and upper and lowercased letters.
  String? get path;

  /// The name of the user to create.
  ///
  /// IAM user, group, role, and policy names must be unique within the account. Names are not distinguished by case. For example, you cannot create resources named both "MyResource" and "myresource".
  String get userName;

  /// The ARN of the policy that is used to set the permissions boundary for the user.
  String? get permissionsBoundary;

  /// A list of tags that you want to attach to the new user. Each tag consists of a key name and an associated value. For more information about tagging, see [Tagging IAM resources](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html) in the _IAM User Guide_.
  ///
  /// If any one of the tags is invalid or if you exceed the allowed maximum number of tags, then the entire request fails and the resource is not created.
  _i4.BuiltList<_i3.Tag>? get tags;
  @override
  CreateUserRequest getPayload() => this;
  @override
  List<Object?> get props => [
        path,
        userName,
        permissionsBoundary,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateUserRequest');
    helper.add(
      'path',
      path,
    );
    helper.add(
      'userName',
      userName,
    );
    helper.add(
      'permissionsBoundary',
      permissionsBoundary,
    );
    helper.add(
      'tags',
      tags,
    );
    return helper.toString();
  }
}

class CreateUserRequestAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<CreateUserRequest> {
  const CreateUserRequestAwsQuerySerializer() : super('CreateUserRequest');

  @override
  Iterable<Type> get types => const [
        CreateUserRequest,
        _$CreateUserRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  CreateUserRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateUserRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'Path':
          if (value != null) {
            result.path = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'UserName':
          result.userName = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'PermissionsBoundary':
          if (value != null) {
            result.permissionsBoundary = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'Tags':
          if (value != null) {
            result.tags.replace((const _i1.XmlBuiltListSerializer(
                    indexer: _i1.XmlIndexer.awsQueryList)
                .deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i4.BuiltList,
                [FullType(_i3.Tag)],
              ),
            ) as _i4.BuiltList<_i3.Tag>));
          }
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
    final payload = (object as CreateUserRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'CreateUserRequestResponse',
        _i1.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    if (payload.path != null) {
      result
        ..add(const _i1.XmlElementName('Path'))
        ..add(serializers.serialize(
          payload.path!,
          specifiedType: const FullType(String),
        ));
    }
    result
      ..add(const _i1.XmlElementName('UserName'))
      ..add(serializers.serialize(
        payload.userName,
        specifiedType: const FullType(String),
      ));
    if (payload.permissionsBoundary != null) {
      result
        ..add(const _i1.XmlElementName('PermissionsBoundary'))
        ..add(serializers.serialize(
          payload.permissionsBoundary!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.tags != null) {
      result
        ..add(const _i1.XmlElementName('Tags'))
        ..add(const _i1.XmlBuiltListSerializer(
                indexer: _i1.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          payload.tags!,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(_i3.Tag)],
          ),
        ));
    }
    return result;
  }
}
