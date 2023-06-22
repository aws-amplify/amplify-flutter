// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.update_access_key_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/iam/model/status_type.dart' as _i3;

part 'update_access_key_request.g.dart';

abstract class UpdateAccessKeyRequest
    with
        _i1.HttpInput<UpdateAccessKeyRequest>,
        _i2.AWSEquatable<UpdateAccessKeyRequest>
    implements Built<UpdateAccessKeyRequest, UpdateAccessKeyRequestBuilder> {
  factory UpdateAccessKeyRequest({
    String? userName,
    required String accessKeyId,
    required _i3.StatusType status,
  }) {
    return _$UpdateAccessKeyRequest._(
      userName: userName,
      accessKeyId: accessKeyId,
      status: status,
    );
  }

  factory UpdateAccessKeyRequest.build(
          [void Function(UpdateAccessKeyRequestBuilder) updates]) =
      _$UpdateAccessKeyRequest;

  const UpdateAccessKeyRequest._();

  factory UpdateAccessKeyRequest.fromRequest(
    UpdateAccessKeyRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<UpdateAccessKeyRequest>> serializers =
      [UpdateAccessKeyRequestAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UpdateAccessKeyRequestBuilder b) {}

  /// The name of the user whose key you want to update.
  ///
  /// This parameter allows (through its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
  String? get userName;

  /// The access key ID of the secret access key you want to update.
  ///
  /// This parameter allows (through its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters that can consist of any upper or lowercased letter or digit.
  String get accessKeyId;

  /// The status you want to assign to the secret access key. `Active` means that the key can be used for programmatic calls to Amazon Web Services, while `Inactive` means that the key cannot be used.
  _i3.StatusType get status;
  @override
  UpdateAccessKeyRequest getPayload() => this;
  @override
  List<Object?> get props => [
        userName,
        accessKeyId,
        status,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('UpdateAccessKeyRequest')
      ..add(
        'userName',
        userName,
      )
      ..add(
        'accessKeyId',
        accessKeyId,
      )
      ..add(
        'status',
        status,
      );
    return helper.toString();
  }
}

class UpdateAccessKeyRequestAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<UpdateAccessKeyRequest> {
  const UpdateAccessKeyRequestAwsQuerySerializer()
      : super('UpdateAccessKeyRequest');

  @override
  Iterable<Type> get types => const [
        UpdateAccessKeyRequest,
        _$UpdateAccessKeyRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  UpdateAccessKeyRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateAccessKeyRequestBuilder();
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
        case 'AccessKeyId':
          result.accessKeyId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Status':
          result.status = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.StatusType),
          ) as _i3.StatusType);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    UpdateAccessKeyRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'UpdateAccessKeyRequestResponse',
        _i1.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final UpdateAccessKeyRequest(:userName, :accessKeyId, :status) = object;
    if (userName != null) {
      result$
        ..add(const _i1.XmlElementName('UserName'))
        ..add(serializers.serialize(
          userName,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('AccessKeyId'))
      ..add(serializers.serialize(
        accessKeyId,
        specifiedType: const FullType(String),
      ));
    result$
      ..add(const _i1.XmlElementName('Status'))
      ..add(serializers.serialize(
        status,
        specifiedType: const FullType.nullable(_i3.StatusType),
      ));
    return result$;
  }
}
