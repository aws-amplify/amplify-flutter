// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.api_gateway.model.get_sdk_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;

part 'get_sdk_request.g.dart';

/// Request a new generated client SDK for a RestApi and Stage.
abstract class GetSdkRequest
    with _i1.HttpInput<GetSdkRequestPayload>, _i2.AWSEquatable<GetSdkRequest>
    implements
        Built<GetSdkRequest, GetSdkRequestBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<GetSdkRequestPayload> {
  /// Request a new generated client SDK for a RestApi and Stage.
  factory GetSdkRequest({
    Map<String, String>? parameters,
    required String restApiId,
    required String sdkType,
    required String stageName,
  }) {
    return _$GetSdkRequest._(
      parameters: parameters == null ? null : _i3.BuiltMap(parameters),
      restApiId: restApiId,
      sdkType: sdkType,
      stageName: stageName,
    );
  }

  /// Request a new generated client SDK for a RestApi and Stage.
  factory GetSdkRequest.build([void Function(GetSdkRequestBuilder) updates]) =
      _$GetSdkRequest;

  const GetSdkRequest._();

  factory GetSdkRequest.fromRequest(
    GetSdkRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      GetSdkRequest.build((b) {
        if (labels['restApiId'] != null) {
          b.restApiId = labels['restApiId']!;
        }
        if (labels['stageName'] != null) {
          b.stageName = labels['stageName']!;
        }
        if (labels['sdkType'] != null) {
          b.sdkType = labels['sdkType']!;
        }
      });

  static const List<_i1.SmithySerializer> serializers = [
    GetSdkRequestRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetSdkRequestBuilder b) {}

  /// A string-to-string key-value map of query parameters `sdkType`-dependent properties of the SDK. For `sdkType` of `objectivec` or `swift`, a parameter named `classPrefix` is required. For `sdkType` of `android`, parameters named `groupId`, `artifactId`, `artifactVersion`, and `invokerPackage` are required. For `sdkType` of `java`, parameters named `serviceName` and `javaPackageName` are required.
  _i3.BuiltMap<String, String>? get parameters;

  /// The string identifier of the associated RestApi.
  String get restApiId;

  /// The language for the generated SDK. Currently `java`, `javascript`, `android`, `objectivec` (for iOS), `swift` (for iOS), and `ruby` are supported.
  String get sdkType;

  /// The name of the Stage that the SDK will use.
  String get stageName;
  @override
  String labelFor(String key) {
    switch (key) {
      case 'restApiId':
        return restApiId;
      case 'stageName':
        return stageName;
      case 'sdkType':
        return sdkType;
    }
    throw _i1.MissingLabelException(
      this,
      key,
    );
  }

  @override
  GetSdkRequestPayload getPayload() => GetSdkRequestPayload();
  @override
  List<Object?> get props => [
        parameters,
        restApiId,
        sdkType,
        stageName,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetSdkRequest');
    helper.add(
      'parameters',
      parameters,
    );
    helper.add(
      'restApiId',
      restApiId,
    );
    helper.add(
      'sdkType',
      sdkType,
    );
    helper.add(
      'stageName',
      stageName,
    );
    return helper.toString();
  }
}

@_i4.internal
abstract class GetSdkRequestPayload
    with _i2.AWSEquatable<GetSdkRequestPayload>
    implements
        Built<GetSdkRequestPayload, GetSdkRequestPayloadBuilder>,
        _i1.EmptyPayload {
  factory GetSdkRequestPayload(
          [void Function(GetSdkRequestPayloadBuilder) updates]) =
      _$GetSdkRequestPayload;

  const GetSdkRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetSdkRequestPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetSdkRequestPayload');
    return helper.toString();
  }
}

class GetSdkRequestRestJson1Serializer
    extends _i1.StructuredSmithySerializer<GetSdkRequestPayload> {
  const GetSdkRequestRestJson1Serializer() : super('GetSdkRequest');

  @override
  Iterable<Type> get types => const [
        GetSdkRequest,
        _$GetSdkRequest,
        GetSdkRequestPayload,
        _$GetSdkRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  GetSdkRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return GetSdkRequestPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) =>
      const <Object?>[];
}
