// Generated with smithy-dart 0.1.0. DO NOT MODIFY.

// ignore_for_file: unused_element
library rest_json1_v2.rest_json_protocol.test.greeting_with_errors_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_value/serializer.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/complex_error.dart'
    as _i6;
import 'package:rest_json1_v2/src/rest_json_protocol/model/complex_nested_error_data.dart'
    as _i9;
import 'package:rest_json1_v2/src/rest_json_protocol/model/foo_error.dart'
    as _i7;
import 'package:rest_json1_v2/src/rest_json_protocol/model/greeting_with_errors_output.dart'
    as _i5;
import 'package:rest_json1_v2/src/rest_json_protocol/model/invalid_greeting.dart'
    as _i8;
import 'package:rest_json1_v2/src/rest_json_protocol/operation/greeting_with_errors_operation.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i4;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'RestJsonGreetingWithErrors (response)',
    () async {
      await _i2.httpResponseTest(
          operation: _i3.GreetingWithErrorsOperation(
              region: 'us-east-1', baseUri: Uri.parse('https://example.com')),
          testCase: const _i2.HttpResponseTestCase(
              id: 'RestJsonGreetingWithErrors',
              documentation:
                  'Ensures that operations with errors successfully know how\nto deserialize a successful response. As of January 2021,\nserver implementations are expected to respond with a\nJSON object regardless of if the output parameters are\nempty.',
              protocol: _i4.ShapeId(namespace: 'aws.protocols', shape: 'restJson1'),
              authScheme: null,
              body: '{}',
              bodyMediaType: 'application/json',
              params: {'greeting': 'Hello'},
              vendorParamsShape: null,
              vendorParams: {},
              headers: {'X-Greeting': 'Hello'},
              forbidHeaders: [],
              requireHeaders: [],
              tags: [],
              appliesTo: null,
              code: 200),
          outputSerializers: const [
            GreetingWithErrorsOutputRestJson1Serializer()
          ]);
    },
  );
  _i1.test(
    'RestJsonGreetingWithErrorsNoPayload (response)',
    () async {
      await _i2.httpResponseTest(
          operation: _i3.GreetingWithErrorsOperation(
              region: 'us-east-1', baseUri: Uri.parse('https://example.com')),
          testCase: const _i2.HttpResponseTestCase(
              id: 'RestJsonGreetingWithErrorsNoPayload',
              documentation:
                  'This test is similar to RestJsonGreetingWithErrors, but it\nensures that clients can gracefully deal with a server\nomitting a response payload.',
              protocol: _i4.ShapeId(namespace: 'aws.protocols', shape: 'restJson1'),
              authScheme: null,
              body: '',
              bodyMediaType: null,
              params: {'greeting': 'Hello'},
              vendorParamsShape: null,
              vendorParams: {},
              headers: {'X-Greeting': 'Hello'},
              forbidHeaders: [],
              requireHeaders: [],
              tags: [],
              appliesTo: _i2.AppliesTo.client,
              code: 200),
          outputSerializers: const [
            GreetingWithErrorsOutputRestJson1Serializer()
          ]);
    },
  );
  _i1.test(
    'RestJsonComplexErrorWithNoMessage (error)',
    () async {
      await _i2.httpErrorResponseTest<
              _i4.Unit,
              _i4.Unit,
              _i5.GreetingWithErrorsOutputPayload,
              _i5.GreetingWithErrorsOutput,
              _i6.ComplexError>(
          operation: _i3.GreetingWithErrorsOperation(
              region: 'us-east-1', baseUri: Uri.parse('https://example.com')),
          testCase: const _i2.HttpResponseTestCase(
              id: 'RestJsonComplexErrorWithNoMessage',
              documentation:
                  'Serializes a complex error with no message member',
              protocol:
                  _i4.ShapeId(namespace: 'aws.protocols', shape: 'restJson1'),
              authScheme: null,
              body:
                  '{\n    "TopLevel": "Top level",\n    "Nested": {\n        "Fooooo": "bar"\n    }\n}',
              bodyMediaType: 'application/json',
              params: {
                'Header': 'Header',
                'TopLevel': 'Top level',
                'Nested': {'Foo': 'bar'}
              },
              vendorParamsShape: null,
              vendorParams: {},
              headers: {
                'Content-Type': 'application/json',
                'X-Header': 'Header',
                'X-Amzn-Errortype': 'ComplexError'
              },
              forbidHeaders: [],
              requireHeaders: [],
              tags: [],
              appliesTo: null,
              code: 403),
          errorSerializers: const [
            ComplexErrorRestJson1Serializer(),
            ComplexNestedErrorDataRestJson1Serializer()
          ]);
    },
  );
  _i1.test(
    'RestJsonEmptyComplexErrorWithNoMessage (error)',
    () async {
      await _i2.httpErrorResponseTest<
              _i4.Unit,
              _i4.Unit,
              _i5.GreetingWithErrorsOutputPayload,
              _i5.GreetingWithErrorsOutput,
              _i6.ComplexError>(
          operation: _i3.GreetingWithErrorsOperation(
              region: 'us-east-1', baseUri: Uri.parse('https://example.com')),
          testCase: const _i2.HttpResponseTestCase(
              id: 'RestJsonEmptyComplexErrorWithNoMessage',
              documentation: null,
              protocol:
                  _i4.ShapeId(namespace: 'aws.protocols', shape: 'restJson1'),
              authScheme: null,
              body: '{}',
              bodyMediaType: 'application/json',
              params: {},
              vendorParamsShape: null,
              vendorParams: {},
              headers: {
                'Content-Type': 'application/json',
                'X-Amzn-Errortype': 'ComplexError'
              },
              forbidHeaders: [],
              requireHeaders: [],
              tags: [],
              appliesTo: null,
              code: 403),
          errorSerializers: const [
            ComplexErrorRestJson1Serializer(),
            ComplexNestedErrorDataRestJson1Serializer()
          ]);
    },
  );
  _i1.test(
    'RestJsonFooErrorUsingXAmznErrorType (error)',
    () async {
      await _i2.httpErrorResponseTest<
              _i4.Unit,
              _i4.Unit,
              _i5.GreetingWithErrorsOutputPayload,
              _i5.GreetingWithErrorsOutput,
              _i7.FooError>(
          operation: _i3.GreetingWithErrorsOperation(
              region: 'us-east-1', baseUri: Uri.parse('https://example.com')),
          testCase: const _i2.HttpResponseTestCase(
              id: 'RestJsonFooErrorUsingXAmznErrorType',
              documentation:
                  'Serializes the X-Amzn-ErrorType header. For an example service, see Amazon EKS.',
              protocol: _i4.ShapeId(namespace: 'aws.protocols', shape: 'restJson1'),
              authScheme: null,
              body: null,
              bodyMediaType: null,
              params: {},
              vendorParamsShape: null,
              vendorParams: {},
              headers: {'X-Amzn-Errortype': 'FooError'},
              forbidHeaders: [],
              requireHeaders: [],
              tags: [],
              appliesTo: _i2.AppliesTo.client,
              code: 500),
          errorSerializers: const [FooErrorRestJson1Serializer()]);
    },
  );
  _i1.test(
    'RestJsonFooErrorUsingXAmznErrorTypeWithUri (error)',
    () async {
      await _i2.httpErrorResponseTest<
              _i4.Unit,
              _i4.Unit,
              _i5.GreetingWithErrorsOutputPayload,
              _i5.GreetingWithErrorsOutput,
              _i7.FooError>(
          operation: _i3.GreetingWithErrorsOperation(
              region: 'us-east-1', baseUri: Uri.parse('https://example.com')),
          testCase: const _i2.HttpResponseTestCase(
              id: 'RestJsonFooErrorUsingXAmznErrorTypeWithUri',
              documentation:
                  'Some X-Amzn-Errortype headers contain URLs. Clients need to split the URL on \':\' and take only the first half of the string. For example, \'ValidationException:http://internal.amazon.com/coral/com.amazon.coral.validate/\'\nis to be interpreted as \'ValidationException\'.\n\nFor an example service see Amazon Polly.',
              protocol: _i4.ShapeId(namespace: 'aws.protocols', shape: 'restJson1'),
              authScheme: null,
              body: null,
              bodyMediaType: null,
              params: {},
              vendorParamsShape: null,
              vendorParams: {},
              headers: {
                'X-Amzn-Errortype':
                    'FooError:http://internal.amazon.com/coral/com.amazon.coral.validate/'
              },
              forbidHeaders: [],
              requireHeaders: [],
              tags: [],
              appliesTo: _i2.AppliesTo.client,
              code: 500),
          errorSerializers: const [FooErrorRestJson1Serializer()]);
    },
  );
  _i1.test(
    'RestJsonFooErrorUsingXAmznErrorTypeWithUriAndNamespace (error)',
    () async {
      await _i2.httpErrorResponseTest<
              _i4.Unit,
              _i4.Unit,
              _i5.GreetingWithErrorsOutputPayload,
              _i5.GreetingWithErrorsOutput,
              _i7.FooError>(
          operation: _i3.GreetingWithErrorsOperation(
              region: 'us-east-1', baseUri: Uri.parse('https://example.com')),
          testCase: const _i2.HttpResponseTestCase(
              id: 'RestJsonFooErrorUsingXAmznErrorTypeWithUriAndNamespace',
              documentation:
                  'X-Amzn-Errortype might contain a URL and a namespace. Client should extract only the shape name. This is a pathalogical case that might not actually happen in any deployed AWS service.',
              protocol: _i4.ShapeId(namespace: 'aws.protocols', shape: 'restJson1'),
              authScheme: null,
              body: null,
              bodyMediaType: null,
              params: {},
              vendorParamsShape: null,
              vendorParams: {},
              headers: {
                'X-Amzn-Errortype':
                    'aws.protocoltests.restjson#FooError:http://internal.amazon.com/coral/com.amazon.coral.validate/'
              },
              forbidHeaders: [],
              requireHeaders: [],
              tags: [],
              appliesTo: _i2.AppliesTo.client,
              code: 500),
          errorSerializers: const [FooErrorRestJson1Serializer()]);
    },
  );
  _i1.test(
    'RestJsonFooErrorUsingCode (error)',
    () async {
      await _i2.httpErrorResponseTest<
              _i4.Unit,
              _i4.Unit,
              _i5.GreetingWithErrorsOutputPayload,
              _i5.GreetingWithErrorsOutput,
              _i7.FooError>(
          operation: _i3.GreetingWithErrorsOperation(
              region: 'us-east-1', baseUri: Uri.parse('https://example.com')),
          testCase: const _i2.HttpResponseTestCase(
              id: 'RestJsonFooErrorUsingCode',
              documentation:
                  'This example uses the \'code\' property in the output rather than X-Amzn-Errortype. Some services do this though it\'s preferable to send the X-Amzn-Errortype. Client implementations must first check for the X-Amzn-Errortype and then check for a top-level \'code\' property.\n\nFor example service see Amazon S3 Glacier.',
              protocol: _i4.ShapeId(namespace: 'aws.protocols', shape: 'restJson1'),
              authScheme: null,
              body: '{\n    "code": "FooError"\n}',
              bodyMediaType: 'application/json',
              params: {},
              vendorParamsShape: null,
              vendorParams: {},
              headers: {'Content-Type': 'application/json'},
              forbidHeaders: [],
              requireHeaders: [],
              tags: [],
              appliesTo: _i2.AppliesTo.client,
              code: 500),
          errorSerializers: const [FooErrorRestJson1Serializer()]);
    },
  );
  _i1.test(
    'RestJsonFooErrorUsingCodeAndNamespace (error)',
    () async {
      await _i2.httpErrorResponseTest<
              _i4.Unit,
              _i4.Unit,
              _i5.GreetingWithErrorsOutputPayload,
              _i5.GreetingWithErrorsOutput,
              _i7.FooError>(
          operation: _i3.GreetingWithErrorsOperation(
              region: 'us-east-1', baseUri: Uri.parse('https://example.com')),
          testCase: const _i2.HttpResponseTestCase(
              id: 'RestJsonFooErrorUsingCodeAndNamespace',
              documentation:
                  'Some services serialize errors using code, and it might contain a namespace. Clients should just take the last part of the string after \'#\'.',
              protocol: _i4.ShapeId(namespace: 'aws.protocols', shape: 'restJson1'),
              authScheme: null,
              body: '{\n    "code": "aws.protocoltests.restjson#FooError"\n}',
              bodyMediaType: 'application/json',
              params: {},
              vendorParamsShape: null,
              vendorParams: {},
              headers: {'Content-Type': 'application/json'},
              forbidHeaders: [],
              requireHeaders: [],
              tags: [],
              appliesTo: _i2.AppliesTo.client,
              code: 500),
          errorSerializers: const [FooErrorRestJson1Serializer()]);
    },
  );
  _i1.test(
    'RestJsonFooErrorUsingCodeUriAndNamespace (error)',
    () async {
      await _i2.httpErrorResponseTest<
              _i4.Unit,
              _i4.Unit,
              _i5.GreetingWithErrorsOutputPayload,
              _i5.GreetingWithErrorsOutput,
              _i7.FooError>(
          operation: _i3.GreetingWithErrorsOperation(
              region: 'us-east-1', baseUri: Uri.parse('https://example.com')),
          testCase: const _i2.HttpResponseTestCase(
              id: 'RestJsonFooErrorUsingCodeUriAndNamespace',
              documentation:
                  'Some services serialize errors using code, and it might contain a namespace. It also might contain a URI. Clients should just take the last part of the string after \'#\' and before ":". This is a pathalogical case that might not occur in any deployed AWS service.',
              protocol: _i4.ShapeId(namespace: 'aws.protocols', shape: 'restJson1'),
              authScheme: null,
              body: '{\n    "code": "aws.protocoltests.restjson#FooError:http://internal.amazon.com/coral/com.amazon.coral.validate/"\n}',
              bodyMediaType: 'application/json',
              params: {},
              vendorParamsShape: null,
              vendorParams: {},
              headers: {'Content-Type': 'application/json'},
              forbidHeaders: [],
              requireHeaders: [],
              tags: [],
              appliesTo: _i2.AppliesTo.client,
              code: 500),
          errorSerializers: const [FooErrorRestJson1Serializer()]);
    },
  );
  _i1.test(
    'RestJsonFooErrorWithDunderType (error)',
    () async {
      await _i2.httpErrorResponseTest<
              _i4.Unit,
              _i4.Unit,
              _i5.GreetingWithErrorsOutputPayload,
              _i5.GreetingWithErrorsOutput,
              _i7.FooError>(
          operation: _i3.GreetingWithErrorsOperation(
              region: 'us-east-1', baseUri: Uri.parse('https://example.com')),
          testCase: const _i2.HttpResponseTestCase(
              id: 'RestJsonFooErrorWithDunderType',
              documentation: 'Some services serialize errors using __type.',
              protocol:
                  _i4.ShapeId(namespace: 'aws.protocols', shape: 'restJson1'),
              authScheme: null,
              body: '{\n    "__type": "FooError"\n}',
              bodyMediaType: 'application/json',
              params: {},
              vendorParamsShape: null,
              vendorParams: {},
              headers: {'Content-Type': 'application/json'},
              forbidHeaders: [],
              requireHeaders: [],
              tags: [],
              appliesTo: _i2.AppliesTo.client,
              code: 500),
          errorSerializers: const [FooErrorRestJson1Serializer()]);
    },
  );
  _i1.test(
    'RestJsonFooErrorWithDunderTypeAndNamespace (error)',
    () async {
      await _i2.httpErrorResponseTest<
              _i4.Unit,
              _i4.Unit,
              _i5.GreetingWithErrorsOutputPayload,
              _i5.GreetingWithErrorsOutput,
              _i7.FooError>(
          operation: _i3.GreetingWithErrorsOperation(
              region: 'us-east-1', baseUri: Uri.parse('https://example.com')),
          testCase: const _i2.HttpResponseTestCase(
              id: 'RestJsonFooErrorWithDunderTypeAndNamespace',
              documentation:
                  'Some services serialize errors using __type, and it might contain a namespace. Clients should just take the last part of the string after \'#\'.',
              protocol: _i4.ShapeId(namespace: 'aws.protocols', shape: 'restJson1'),
              authScheme: null,
              body: '{\n    "__type": "aws.protocoltests.restjson#FooError"\n}',
              bodyMediaType: 'application/json',
              params: {},
              vendorParamsShape: null,
              vendorParams: {},
              headers: {'Content-Type': 'application/json'},
              forbidHeaders: [],
              requireHeaders: [],
              tags: [],
              appliesTo: _i2.AppliesTo.client,
              code: 500),
          errorSerializers: const [FooErrorRestJson1Serializer()]);
    },
  );
  _i1.test(
    'RestJsonFooErrorWithDunderTypeUriAndNamespace (error)',
    () async {
      await _i2.httpErrorResponseTest<
              _i4.Unit,
              _i4.Unit,
              _i5.GreetingWithErrorsOutputPayload,
              _i5.GreetingWithErrorsOutput,
              _i7.FooError>(
          operation: _i3.GreetingWithErrorsOperation(
              region: 'us-east-1', baseUri: Uri.parse('https://example.com')),
          testCase: const _i2.HttpResponseTestCase(
              id: 'RestJsonFooErrorWithDunderTypeUriAndNamespace',
              documentation:
                  'Some services serialize errors using __type, and it might contain a namespace. It also might contain a URI. Clients should just take the last part of the string after \'#\' and before ":". This is a pathalogical case that might not occur in any deployed AWS service.',
              protocol: _i4.ShapeId(namespace: 'aws.protocols', shape: 'restJson1'),
              authScheme: null,
              body: '{\n    "__type": "aws.protocoltests.restjson#FooError:http://internal.amazon.com/coral/com.amazon.coral.validate/"\n}',
              bodyMediaType: 'application/json',
              params: {},
              vendorParamsShape: null,
              vendorParams: {},
              headers: {'Content-Type': 'application/json'},
              forbidHeaders: [],
              requireHeaders: [],
              tags: [],
              appliesTo: _i2.AppliesTo.client,
              code: 500),
          errorSerializers: const [FooErrorRestJson1Serializer()]);
    },
  );
  _i1.test(
    'RestJsonInvalidGreetingError (error)',
    () async {
      await _i2.httpErrorResponseTest<
              _i4.Unit,
              _i4.Unit,
              _i5.GreetingWithErrorsOutputPayload,
              _i5.GreetingWithErrorsOutput,
              _i8.InvalidGreeting>(
          operation: _i3.GreetingWithErrorsOperation(
              region: 'us-east-1', baseUri: Uri.parse('https://example.com')),
          testCase: const _i2.HttpResponseTestCase(
              id: 'RestJsonInvalidGreetingError',
              documentation: 'Parses simple JSON errors',
              protocol:
                  _i4.ShapeId(namespace: 'aws.protocols', shape: 'restJson1'),
              authScheme: null,
              body: '{\n    "Message": "Hi"\n}',
              bodyMediaType: 'application/json',
              params: {'Message': 'Hi'},
              vendorParamsShape: null,
              vendorParams: {},
              headers: {
                'Content-Type': 'application/json',
                'X-Amzn-Errortype': 'InvalidGreeting'
              },
              forbidHeaders: [],
              requireHeaders: [],
              tags: [],
              appliesTo: null,
              code: 400),
          errorSerializers: const [InvalidGreetingRestJson1Serializer()]);
    },
  );
}

class GreetingWithErrorsOutputRestJson1Serializer
    extends _i4.StructuredSmithySerializer<_i5.GreetingWithErrorsOutput> {
  const GreetingWithErrorsOutputRestJson1Serializer()
      : super('GreetingWithErrorsOutput');

  @override
  Iterable<Type> get types => const [_i5.GreetingWithErrorsOutput];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols =>
      const [_i4.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  _i5.GreetingWithErrorsOutput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = _i5.GreetingWithErrorsOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'greeting':
          if (value != null) {
            result.greeting = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    throw StateError('Not supported for tests');
  }
}

class ComplexErrorRestJson1Serializer
    extends _i4.StructuredSmithySerializer<_i6.ComplexError> {
  const ComplexErrorRestJson1Serializer() : super('ComplexError');

  @override
  Iterable<Type> get types => const [_i6.ComplexError];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols =>
      const [_i4.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  _i6.ComplexError deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = _i6.ComplexErrorBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'Header':
          if (value != null) {
            result.header = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
        case 'Nested':
          if (value != null) {
            result.nested.replace((serializers.deserialize(value,
                    specifiedType: const FullType(_i9.ComplexNestedErrorData))
                as _i9.ComplexNestedErrorData));
          }
          break;
        case 'TopLevel':
          if (value != null) {
            result.topLevel = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    throw StateError('Not supported for tests');
  }
}

class ComplexNestedErrorDataRestJson1Serializer
    extends _i4.StructuredSmithySerializer<_i9.ComplexNestedErrorData> {
  const ComplexNestedErrorDataRestJson1Serializer()
      : super('ComplexNestedErrorData');

  @override
  Iterable<Type> get types => const [_i9.ComplexNestedErrorData];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols =>
      const [_i4.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  _i9.ComplexNestedErrorData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = _i9.ComplexNestedErrorDataBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'Foo':
          if (value != null) {
            result.foo = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    throw StateError('Not supported for tests');
  }
}

class FooErrorRestJson1Serializer
    extends _i4.StructuredSmithySerializer<_i7.FooError> {
  const FooErrorRestJson1Serializer() : super('FooError');

  @override
  Iterable<Type> get types => const [_i7.FooError];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols =>
      const [_i4.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  _i7.FooError deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return _i7.FooErrorBuilder().build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    throw StateError('Not supported for tests');
  }
}

class InvalidGreetingRestJson1Serializer
    extends _i4.StructuredSmithySerializer<_i8.InvalidGreeting> {
  const InvalidGreetingRestJson1Serializer() : super('InvalidGreeting');

  @override
  Iterable<Type> get types => const [_i8.InvalidGreeting];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols =>
      const [_i4.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  _i8.InvalidGreeting deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = _i8.InvalidGreetingBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'Message':
          if (value != null) {
            result.message = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    throw StateError('Not supported for tests');
  }
}
