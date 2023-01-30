// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.api_gateway.model.get_domain_name_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'get_domain_name_request.g.dart';

/// Request to get the name of a DomainName resource.
abstract class GetDomainNameRequest
    with
        _i1.HttpInput<GetDomainNameRequestPayload>,
        _i2.AWSEquatable<GetDomainNameRequest>
    implements
        Built<GetDomainNameRequest, GetDomainNameRequestBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<GetDomainNameRequestPayload> {
  /// Request to get the name of a DomainName resource.
  factory GetDomainNameRequest({required String domainName}) {
    return _$GetDomainNameRequest._(domainName: domainName);
  }

  /// Request to get the name of a DomainName resource.
  factory GetDomainNameRequest.build(
          [void Function(GetDomainNameRequestBuilder) updates]) =
      _$GetDomainNameRequest;

  const GetDomainNameRequest._();

  factory GetDomainNameRequest.fromRequest(
    GetDomainNameRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      GetDomainNameRequest.build((b) {
        if (labels['domainName'] != null) {
          b.domainName = labels['domainName']!;
        }
      });

  static const List<_i1.SmithySerializer> serializers = [
    GetDomainNameRequestRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetDomainNameRequestBuilder b) {}

  /// The name of the DomainName resource.
  String get domainName;
  @override
  String labelFor(String key) {
    switch (key) {
      case 'domainName':
        return domainName;
    }
    throw _i1.MissingLabelException(
      this,
      key,
    );
  }

  @override
  GetDomainNameRequestPayload getPayload() => GetDomainNameRequestPayload();
  @override
  List<Object?> get props => [domainName];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetDomainNameRequest');
    helper.add(
      'domainName',
      domainName,
    );
    return helper.toString();
  }
}

@_i3.internal
abstract class GetDomainNameRequestPayload
    with _i2.AWSEquatable<GetDomainNameRequestPayload>
    implements
        Built<GetDomainNameRequestPayload, GetDomainNameRequestPayloadBuilder>,
        _i1.EmptyPayload {
  factory GetDomainNameRequestPayload(
          [void Function(GetDomainNameRequestPayloadBuilder) updates]) =
      _$GetDomainNameRequestPayload;

  const GetDomainNameRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetDomainNameRequestPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetDomainNameRequestPayload');
    return helper.toString();
  }
}

class GetDomainNameRequestRestJson1Serializer
    extends _i1.StructuredSmithySerializer<GetDomainNameRequestPayload> {
  const GetDomainNameRequestRestJson1Serializer()
      : super('GetDomainNameRequest');

  @override
  Iterable<Type> get types => const [
        GetDomainNameRequest,
        _$GetDomainNameRequest,
        GetDomainNameRequestPayload,
        _$GetDomainNameRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  GetDomainNameRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return GetDomainNameRequestPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) =>
      const <Object?>[];
}
