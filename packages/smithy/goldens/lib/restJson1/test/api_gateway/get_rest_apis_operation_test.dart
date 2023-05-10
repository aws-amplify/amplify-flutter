// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

// ignore_for_file: unused_element
library rest_json1_v1.api_gateway.test.get_rest_apis_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_signature_v4/aws_signature_v4.dart' as _i4;
import 'package:built_collection/built_collection.dart' as _i8;
import 'package:built_value/serializer.dart';
import 'package:rest_json1_v1/src/api_gateway/model/api_key_source_type.dart'
    as _i10;
import 'package:rest_json1_v1/src/api_gateway/model/bad_request_exception.dart'
    as _i13;
import 'package:rest_json1_v1/src/api_gateway/model/endpoint_configuration.dart'
    as _i11;
import 'package:rest_json1_v1/src/api_gateway/model/endpoint_type.dart' as _i12;
import 'package:rest_json1_v1/src/api_gateway/model/get_rest_apis_request.dart'
    as _i6;
import 'package:rest_json1_v1/src/api_gateway/model/rest_api.dart' as _i9;
import 'package:rest_json1_v1/src/api_gateway/model/rest_apis.dart' as _i7;
import 'package:rest_json1_v1/src/api_gateway/model/too_many_requests_exception.dart'
    as _i14;
import 'package:rest_json1_v1/src/api_gateway/model/unauthorized_exception.dart'
    as _i15;
import 'package:rest_json1_v1/src/api_gateway/operation/get_rest_apis_operation.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i5;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'ApiGatewayAccept (request)',
    () async {
      await _i2.httpRequestTest(
        operation: _i3.GetRestApisOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
          credentialsProvider:
              const _i4.AWSCredentialsProvider(_i4.AWSCredentials(
            'DUMMY-ACCESS-KEY-ID',
            'DUMMY-SECRET-ACCESS-KEY',
          )),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'ApiGatewayAccept',
          documentation:
              'API Gateway requires that this Accept header is set on all requests.',
          protocol: _i5.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restJson1',
          ),
          authScheme: null,
          body: '',
          bodyMediaType: null,
          params: {},
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Accept': 'application/json'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          method: 'GET',
          uri: '/restapis',
          host: null,
          resolvedHost: null,
          queryParams: [],
          forbidQueryParams: [],
          requireQueryParams: [],
        ),
        inputSerializers: const [GetRestApisRequestRestJson1Serializer()],
      );
    },
  );
}

class GetRestApisRequestRestJson1Serializer
    extends _i5.StructuredSmithySerializer<_i6.GetRestApisRequest> {
  const GetRestApisRequestRestJson1Serializer() : super('GetRestApisRequest');

  @override
  Iterable<Type> get types => const [_i6.GetRestApisRequest];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  _i6.GetRestApisRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i6.GetRestApisRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'position':
          result.position = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'limit':
          result.limit = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    _i6.GetRestApisRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}

class RestApisRestJson1Serializer
    extends _i5.StructuredSmithySerializer<_i7.RestApis> {
  const RestApisRestJson1Serializer() : super('RestApis');

  @override
  Iterable<Type> get types => const [_i7.RestApis];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  _i7.RestApis deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i7.RestApisBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'items':
          result.items.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i8.BuiltList,
              [FullType(_i9.RestApi)],
            ),
          ) as _i8.BuiltList<_i9.RestApi>));
        case 'position':
          result.position = (serializers.deserialize(
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
    _i7.RestApis object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}

class RestApiRestJson1Serializer
    extends _i5.StructuredSmithySerializer<_i9.RestApi> {
  const RestApiRestJson1Serializer() : super('RestApi');

  @override
  Iterable<Type> get types => const [_i9.RestApi];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  _i9.RestApi deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i9.RestApiBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'id':
          result.id = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'name':
          result.name = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'description':
          result.description = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'createdDate':
          result.createdDate = _i5.TimestampSerializer.epochSeconds.deserialize(
            serializers,
            value,
          );
        case 'version':
          result.version = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'warnings':
          result.warnings.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i8.BuiltList,
              [FullType(String)],
            ),
          ) as _i8.BuiltList<String>));
        case 'binaryMediaTypes':
          result.binaryMediaTypes.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i8.BuiltList,
              [FullType(String)],
            ),
          ) as _i8.BuiltList<String>));
        case 'minimumCompressionSize':
          result.minimumCompressionSize = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'apiKeySource':
          result.apiKeySource = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i10.ApiKeySourceType),
          ) as _i10.ApiKeySourceType);
        case 'endpointConfiguration':
          result.endpointConfiguration.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i11.EndpointConfiguration),
          ) as _i11.EndpointConfiguration));
        case 'policy':
          result.policy = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'tags':
          result.tags.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i8.BuiltMap,
              [
                FullType(String),
                FullType(String),
              ],
            ),
          ) as _i8.BuiltMap<String, String>));
        case 'disableExecuteApiEndpoint':
          result.disableExecuteApiEndpoint = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    _i9.RestApi object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}

class EndpointConfigurationRestJson1Serializer
    extends _i5.StructuredSmithySerializer<_i11.EndpointConfiguration> {
  const EndpointConfigurationRestJson1Serializer()
      : super('EndpointConfiguration');

  @override
  Iterable<Type> get types => const [_i11.EndpointConfiguration];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  _i11.EndpointConfiguration deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i11.EndpointConfigurationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'types':
          result.types.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i8.BuiltList,
              [FullType(_i12.EndpointType)],
            ),
          ) as _i8.BuiltList<_i12.EndpointType>));
        case 'vpcEndpointIds':
          result.vpcEndpointIds.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i8.BuiltList,
              [FullType(String)],
            ),
          ) as _i8.BuiltList<String>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    _i11.EndpointConfiguration object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}

class BadRequestExceptionRestJson1Serializer
    extends _i5.StructuredSmithySerializer<_i13.BadRequestException> {
  const BadRequestExceptionRestJson1Serializer() : super('BadRequestException');

  @override
  Iterable<Type> get types => const [_i13.BadRequestException];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  _i13.BadRequestException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i13.BadRequestExceptionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'message':
          result.message = (serializers.deserialize(
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
    _i13.BadRequestException object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}

class TooManyRequestsExceptionRestJson1Serializer
    extends _i5.StructuredSmithySerializer<_i14.TooManyRequestsException> {
  const TooManyRequestsExceptionRestJson1Serializer()
      : super('TooManyRequestsException');

  @override
  Iterable<Type> get types => const [_i14.TooManyRequestsException];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  _i14.TooManyRequestsException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i14.TooManyRequestsExceptionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'retryAfterSeconds':
          result.retryAfterSeconds = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'message':
          result.message = (serializers.deserialize(
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
    _i14.TooManyRequestsException object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}

class UnauthorizedExceptionRestJson1Serializer
    extends _i5.StructuredSmithySerializer<_i15.UnauthorizedException> {
  const UnauthorizedExceptionRestJson1Serializer()
      : super('UnauthorizedException');

  @override
  Iterable<Type> get types => const [_i15.UnauthorizedException];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  _i15.UnauthorizedException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i15.UnauthorizedExceptionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'message':
          result.message = (serializers.deserialize(
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
    _i15.UnauthorizedException object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}
