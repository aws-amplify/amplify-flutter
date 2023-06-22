// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.create_virtual_mfa_device_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/iam/model/tag.dart' as _i3;

part 'create_virtual_mfa_device_request.g.dart';

abstract class CreateVirtualMfaDeviceRequest
    with
        _i1.HttpInput<CreateVirtualMfaDeviceRequest>,
        _i2.AWSEquatable<CreateVirtualMfaDeviceRequest>
    implements
        Built<CreateVirtualMfaDeviceRequest,
            CreateVirtualMfaDeviceRequestBuilder> {
  factory CreateVirtualMfaDeviceRequest({
    String? path,
    required String virtualMfaDeviceName,
    List<_i3.Tag>? tags,
  }) {
    return _$CreateVirtualMfaDeviceRequest._(
      path: path,
      virtualMfaDeviceName: virtualMfaDeviceName,
      tags: tags == null ? null : _i4.BuiltList(tags),
    );
  }

  factory CreateVirtualMfaDeviceRequest.build(
          [void Function(CreateVirtualMfaDeviceRequestBuilder) updates]) =
      _$CreateVirtualMfaDeviceRequest;

  const CreateVirtualMfaDeviceRequest._();

  factory CreateVirtualMfaDeviceRequest.fromRequest(
    CreateVirtualMfaDeviceRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<CreateVirtualMfaDeviceRequest>>
      serializers = [CreateVirtualMfaDeviceRequestAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateVirtualMfaDeviceRequestBuilder b) {}

  /// The path for the virtual MFA device. For more information about paths, see [IAM identifiers](https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html) in the _IAM User Guide_.
  ///
  /// This parameter is optional. If it is not included, it defaults to a slash (/).
  ///
  /// This parameter allows (through its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of either a forward slash (/) by itself or a string that must begin and end with forward slashes. In addition, it can contain any ASCII character from the ! (`\\u0021`) through the DEL character (`\\u007F`), including most punctuation characters, digits, and upper and lowercased letters.
  String? get path;

  /// The name of the virtual MFA device, which must be unique. Use with path to uniquely identify a virtual MFA device.
  ///
  /// This parameter allows (through its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
  String get virtualMfaDeviceName;

  /// A list of tags that you want to attach to the new IAM virtual MFA device. Each tag consists of a key name and an associated value. For more information about tagging, see [Tagging IAM resources](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html) in the _IAM User Guide_.
  ///
  /// If any one of the tags is invalid or if you exceed the allowed maximum number of tags, then the entire request fails and the resource is not created.
  _i4.BuiltList<_i3.Tag>? get tags;
  @override
  CreateVirtualMfaDeviceRequest getPayload() => this;
  @override
  List<Object?> get props => [
        path,
        virtualMfaDeviceName,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateVirtualMfaDeviceRequest')
      ..add(
        'path',
        path,
      )
      ..add(
        'virtualMfaDeviceName',
        virtualMfaDeviceName,
      )
      ..add(
        'tags',
        tags,
      );
    return helper.toString();
  }
}

class CreateVirtualMfaDeviceRequestAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<CreateVirtualMfaDeviceRequest> {
  const CreateVirtualMfaDeviceRequestAwsQuerySerializer()
      : super('CreateVirtualMfaDeviceRequest');

  @override
  Iterable<Type> get types => const [
        CreateVirtualMfaDeviceRequest,
        _$CreateVirtualMfaDeviceRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  CreateVirtualMfaDeviceRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateVirtualMfaDeviceRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Path':
          result.path = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'VirtualMFADeviceName':
          result.virtualMfaDeviceName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Tags':
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
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    CreateVirtualMfaDeviceRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'CreateVirtualMfaDeviceRequestResponse',
        _i1.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final CreateVirtualMfaDeviceRequest(:path, :virtualMfaDeviceName, :tags) =
        object;
    if (path != null) {
      result$
        ..add(const _i1.XmlElementName('Path'))
        ..add(serializers.serialize(
          path,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('VirtualMFADeviceName'))
      ..add(serializers.serialize(
        virtualMfaDeviceName,
        specifiedType: const FullType(String),
      ));
    if (tags != null) {
      result$
        ..add(const _i1.XmlElementName('Tags'))
        ..add(const _i1.XmlBuiltListSerializer(
                indexer: _i1.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          tags,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(_i3.Tag)],
          ),
        ));
    }
    return result$;
  }
}
