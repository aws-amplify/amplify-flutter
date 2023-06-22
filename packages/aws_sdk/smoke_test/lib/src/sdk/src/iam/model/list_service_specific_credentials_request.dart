// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.list_service_specific_credentials_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'list_service_specific_credentials_request.g.dart';

abstract class ListServiceSpecificCredentialsRequest
    with
        _i1.HttpInput<ListServiceSpecificCredentialsRequest>,
        _i2.AWSEquatable<ListServiceSpecificCredentialsRequest>
    implements
        Built<ListServiceSpecificCredentialsRequest,
            ListServiceSpecificCredentialsRequestBuilder> {
  factory ListServiceSpecificCredentialsRequest({
    String? userName,
    String? serviceName,
  }) {
    return _$ListServiceSpecificCredentialsRequest._(
      userName: userName,
      serviceName: serviceName,
    );
  }

  factory ListServiceSpecificCredentialsRequest.build(
      [void Function(ListServiceSpecificCredentialsRequestBuilder)
          updates]) = _$ListServiceSpecificCredentialsRequest;

  const ListServiceSpecificCredentialsRequest._();

  factory ListServiceSpecificCredentialsRequest.fromRequest(
    ListServiceSpecificCredentialsRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<ListServiceSpecificCredentialsRequest>>
      serializers = [ListServiceSpecificCredentialsRequestAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ListServiceSpecificCredentialsRequestBuilder b) {}

  /// The name of the user whose service-specific credentials you want information about. If this value is not specified, then the operation assumes the user whose credentials are used to call the operation.
  ///
  /// This parameter allows (through its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
  String? get userName;

  /// Filters the returned results to only those for the specified Amazon Web Services service. If not specified, then Amazon Web Services returns service-specific credentials for all services.
  String? get serviceName;
  @override
  ListServiceSpecificCredentialsRequest getPayload() => this;
  @override
  List<Object?> get props => [
        userName,
        serviceName,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ListServiceSpecificCredentialsRequest')
          ..add(
            'userName',
            userName,
          )
          ..add(
            'serviceName',
            serviceName,
          );
    return helper.toString();
  }
}

class ListServiceSpecificCredentialsRequestAwsQuerySerializer extends _i1
    .StructuredSmithySerializer<ListServiceSpecificCredentialsRequest> {
  const ListServiceSpecificCredentialsRequestAwsQuerySerializer()
      : super('ListServiceSpecificCredentialsRequest');

  @override
  Iterable<Type> get types => const [
        ListServiceSpecificCredentialsRequest,
        _$ListServiceSpecificCredentialsRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  ListServiceSpecificCredentialsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListServiceSpecificCredentialsRequestBuilder();
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
        case 'ServiceName':
          result.serviceName = (serializers.deserialize(
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
    ListServiceSpecificCredentialsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'ListServiceSpecificCredentialsRequestResponse',
        _i1.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final ListServiceSpecificCredentialsRequest(:userName, :serviceName) =
        object;
    if (userName != null) {
      result$
        ..add(const _i1.XmlElementName('UserName'))
        ..add(serializers.serialize(
          userName,
          specifiedType: const FullType(String),
        ));
    }
    if (serviceName != null) {
      result$
        ..add(const _i1.XmlElementName('ServiceName'))
        ..add(serializers.serialize(
          serviceName,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
