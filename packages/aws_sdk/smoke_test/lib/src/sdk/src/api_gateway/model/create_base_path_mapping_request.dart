// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.api_gateway.model.create_base_path_mapping_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'create_base_path_mapping_request.g.dart';

/// Requests API Gateway to create a new BasePathMapping resource.
abstract class CreateBasePathMappingRequest
    with
        _i1.HttpInput<CreateBasePathMappingRequestPayload>,
        _i2.AWSEquatable<CreateBasePathMappingRequest>
    implements
        Built<CreateBasePathMappingRequest,
            CreateBasePathMappingRequestBuilder>,
        _i1.HasPayload<CreateBasePathMappingRequestPayload> {
  /// Requests API Gateway to create a new BasePathMapping resource.
  factory CreateBasePathMappingRequest({
    String? basePath,
    required String domainName,
    required String restApiId,
    String? stage,
  }) {
    return _$CreateBasePathMappingRequest._(
      basePath: basePath,
      domainName: domainName,
      restApiId: restApiId,
      stage: stage,
    );
  }

  /// Requests API Gateway to create a new BasePathMapping resource.
  factory CreateBasePathMappingRequest.build(
          [void Function(CreateBasePathMappingRequestBuilder) updates]) =
      _$CreateBasePathMappingRequest;

  const CreateBasePathMappingRequest._();

  factory CreateBasePathMappingRequest.fromRequest(
    CreateBasePathMappingRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      CreateBasePathMappingRequest.build((b) {
        b.basePath = payload.basePath;
        b.restApiId = payload.restApiId;
        b.stage = payload.stage;
        if (labels['domainName'] != null) {
          b.domainName = labels['domainName']!;
        }
      });

  static const List<_i1.SmithySerializer> serializers = [
    CreateBasePathMappingRequestRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateBasePathMappingRequestBuilder b) {}

  /// The base path name that callers of the API must provide as part of the URL after the domain name. This value must be unique for all of the mappings across a single API. Specify '(none)' if you do not want callers to specify a base path name after the domain name.
  String? get basePath;

  /// The domain name of the BasePathMapping resource to create.
  String get domainName;

  /// The string identifier of the associated RestApi.
  String get restApiId;

  /// The name of the API's stage that you want to use for this mapping. Specify '(none)' if you want callers to explicitly specify the stage name after any base path name.
  String? get stage;
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
  CreateBasePathMappingRequestPayload getPayload() =>
      CreateBasePathMappingRequestPayload((b) {
        b.basePath = basePath;
        b.restApiId = restApiId;
        b.stage = stage;
      });
  @override
  List<Object?> get props => [
        basePath,
        domainName,
        restApiId,
        stage,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateBasePathMappingRequest');
    helper.add(
      'basePath',
      basePath,
    );
    helper.add(
      'domainName',
      domainName,
    );
    helper.add(
      'restApiId',
      restApiId,
    );
    helper.add(
      'stage',
      stage,
    );
    return helper.toString();
  }
}

@_i3.internal
abstract class CreateBasePathMappingRequestPayload
    with
        _i2.AWSEquatable<CreateBasePathMappingRequestPayload>
    implements
        Built<CreateBasePathMappingRequestPayload,
            CreateBasePathMappingRequestPayloadBuilder> {
  factory CreateBasePathMappingRequestPayload(
          [void Function(CreateBasePathMappingRequestPayloadBuilder) updates]) =
      _$CreateBasePathMappingRequestPayload;

  const CreateBasePathMappingRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateBasePathMappingRequestPayloadBuilder b) {}

  /// The base path name that callers of the API must provide as part of the URL after the domain name. This value must be unique for all of the mappings across a single API. Specify '(none)' if you do not want callers to specify a base path name after the domain name.
  String? get basePath;

  /// The string identifier of the associated RestApi.
  String get restApiId;

  /// The name of the API's stage that you want to use for this mapping. Specify '(none)' if you want callers to explicitly specify the stage name after any base path name.
  String? get stage;
  @override
  List<Object?> get props => [
        basePath,
        restApiId,
        stage,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('CreateBasePathMappingRequestPayload');
    helper.add(
      'basePath',
      basePath,
    );
    helper.add(
      'restApiId',
      restApiId,
    );
    helper.add(
      'stage',
      stage,
    );
    return helper.toString();
  }
}

class CreateBasePathMappingRequestRestJson1Serializer extends _i1
    .StructuredSmithySerializer<CreateBasePathMappingRequestPayload> {
  const CreateBasePathMappingRequestRestJson1Serializer()
      : super('CreateBasePathMappingRequest');

  @override
  Iterable<Type> get types => const [
        CreateBasePathMappingRequest,
        _$CreateBasePathMappingRequest,
        CreateBasePathMappingRequestPayload,
        _$CreateBasePathMappingRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  CreateBasePathMappingRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateBasePathMappingRequestPayloadBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'basePath':
          if (value != null) {
            result.basePath = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'restApiId':
          result.restApiId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'stage':
          if (value != null) {
            result.stage = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
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
    final payload = object is CreateBasePathMappingRequest
        ? object.getPayload()
        : (object as CreateBasePathMappingRequestPayload);
    final result = <Object?>[
      'restApiId',
      serializers.serialize(
        payload.restApiId,
        specifiedType: const FullType(String),
      ),
    ];
    if (payload.basePath != null) {
      result
        ..add('basePath')
        ..add(serializers.serialize(
          payload.basePath!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.stage != null) {
      result
        ..add('stage')
        ..add(serializers.serialize(
          payload.stage!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
