// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.update_server_certificate_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'update_server_certificate_request.g.dart';

abstract class UpdateServerCertificateRequest
    with
        _i1.HttpInput<UpdateServerCertificateRequest>,
        _i2.AWSEquatable<UpdateServerCertificateRequest>
    implements
        Built<UpdateServerCertificateRequest,
            UpdateServerCertificateRequestBuilder> {
  factory UpdateServerCertificateRequest({
    required String serverCertificateName,
    String? newPath,
    String? newServerCertificateName,
  }) {
    return _$UpdateServerCertificateRequest._(
      serverCertificateName: serverCertificateName,
      newPath: newPath,
      newServerCertificateName: newServerCertificateName,
    );
  }

  factory UpdateServerCertificateRequest.build(
          [void Function(UpdateServerCertificateRequestBuilder) updates]) =
      _$UpdateServerCertificateRequest;

  const UpdateServerCertificateRequest._();

  factory UpdateServerCertificateRequest.fromRequest(
    UpdateServerCertificateRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<UpdateServerCertificateRequest>>
      serializers = [UpdateServerCertificateRequestAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UpdateServerCertificateRequestBuilder b) {}

  /// The name of the server certificate that you want to update.
  ///
  /// This parameter allows (through its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
  String get serverCertificateName;

  /// The new path for the server certificate. Include this only if you are updating the server certificate's path.
  ///
  /// This parameter allows (through its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of either a forward slash (/) by itself or a string that must begin and end with forward slashes. In addition, it can contain any ASCII character from the ! (`\\u0021`) through the DEL character (`\\u007F`), including most punctuation characters, digits, and upper and lowercased letters.
  String? get newPath;

  /// The new name for the server certificate. Include this only if you are updating the server certificate's name. The name of the certificate cannot contain any spaces.
  ///
  /// This parameter allows (through its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
  String? get newServerCertificateName;
  @override
  UpdateServerCertificateRequest getPayload() => this;
  @override
  List<Object?> get props => [
        serverCertificateName,
        newPath,
        newServerCertificateName,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('UpdateServerCertificateRequest')
      ..add(
        'serverCertificateName',
        serverCertificateName,
      )
      ..add(
        'newPath',
        newPath,
      )
      ..add(
        'newServerCertificateName',
        newServerCertificateName,
      );
    return helper.toString();
  }
}

class UpdateServerCertificateRequestAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<UpdateServerCertificateRequest> {
  const UpdateServerCertificateRequestAwsQuerySerializer()
      : super('UpdateServerCertificateRequest');

  @override
  Iterable<Type> get types => const [
        UpdateServerCertificateRequest,
        _$UpdateServerCertificateRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  UpdateServerCertificateRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateServerCertificateRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ServerCertificateName':
          result.serverCertificateName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'NewPath':
          result.newPath = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'NewServerCertificateName':
          result.newServerCertificateName = (serializers.deserialize(
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
    UpdateServerCertificateRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'UpdateServerCertificateRequestResponse',
        _i1.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final UpdateServerCertificateRequest(
      :serverCertificateName,
      :newPath,
      :newServerCertificateName
    ) = object;
    result$
      ..add(const _i1.XmlElementName('ServerCertificateName'))
      ..add(serializers.serialize(
        serverCertificateName,
        specifiedType: const FullType(String),
      ));
    if (newPath != null) {
      result$
        ..add(const _i1.XmlElementName('NewPath'))
        ..add(serializers.serialize(
          newPath,
          specifiedType: const FullType(String),
        ));
    }
    if (newServerCertificateName != null) {
      result$
        ..add(const _i1.XmlElementName('NewServerCertificateName'))
        ..add(serializers.serialize(
          newServerCertificateName,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
