// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.api_gateway.model.get_domain_names_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'get_domain_names_request.g.dart';

/// Request to describe a collection of DomainName resources.
abstract class GetDomainNamesRequest
    with
        _i1.HttpInput<GetDomainNamesRequestPayload>,
        _i2.AWSEquatable<GetDomainNamesRequest>
    implements
        Built<GetDomainNamesRequest, GetDomainNamesRequestBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<GetDomainNamesRequestPayload> {
  /// Request to describe a collection of DomainName resources.
  factory GetDomainNamesRequest({
    String? position,
    int? limit,
  }) {
    return _$GetDomainNamesRequest._(
      position: position,
      limit: limit,
    );
  }

  /// Request to describe a collection of DomainName resources.
  factory GetDomainNamesRequest.build(
          [void Function(GetDomainNamesRequestBuilder) updates]) =
      _$GetDomainNamesRequest;

  const GetDomainNamesRequest._();

  factory GetDomainNamesRequest.fromRequest(
    GetDomainNamesRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      GetDomainNamesRequest.build((b) {
        if (request.queryParameters['position'] != null) {
          b.position = request.queryParameters['position']!;
        }
        if (request.queryParameters['limit'] != null) {
          b.limit = int.parse(request.queryParameters['limit']!);
        }
      });

  static const List<_i1.SmithySerializer<GetDomainNamesRequestPayload>>
      serializers = [GetDomainNamesRequestRestJson1Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetDomainNamesRequestBuilder b) {}

  /// The current pagination position in the paged result set.
  String? get position;

  /// The maximum number of returned results per page. The default value is 25 and the maximum value is 500.
  int? get limit;
  @override
  GetDomainNamesRequestPayload getPayload() => GetDomainNamesRequestPayload();
  @override
  List<Object?> get props => [
        position,
        limit,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetDomainNamesRequest')
      ..add(
        'position',
        position,
      )
      ..add(
        'limit',
        limit,
      );
    return helper.toString();
  }
}

@_i3.internal
abstract class GetDomainNamesRequestPayload
    with
        _i2.AWSEquatable<GetDomainNamesRequestPayload>
    implements
        Built<GetDomainNamesRequestPayload,
            GetDomainNamesRequestPayloadBuilder>,
        _i1.EmptyPayload {
  factory GetDomainNamesRequestPayload(
          [void Function(GetDomainNamesRequestPayloadBuilder) updates]) =
      _$GetDomainNamesRequestPayload;

  const GetDomainNamesRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetDomainNamesRequestPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetDomainNamesRequestPayload');
    return helper.toString();
  }
}

class GetDomainNamesRequestRestJson1Serializer
    extends _i1.StructuredSmithySerializer<GetDomainNamesRequestPayload> {
  const GetDomainNamesRequestRestJson1Serializer()
      : super('GetDomainNamesRequest');

  @override
  Iterable<Type> get types => const [
        GetDomainNamesRequest,
        _$GetDomainNamesRequest,
        GetDomainNamesRequestPayload,
        _$GetDomainNamesRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  GetDomainNamesRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return GetDomainNamesRequestPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GetDomainNamesRequestPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) =>
      const <Object?>[];
}
