// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

// ignore_for_file: unused_element
library aws_json1_0_v1.json_rpc_10.test.greeting_with_errors_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_json1_0_v1/src/json_rpc_10/model/complex_error.dart';
import 'package:aws_json1_0_v1/src/json_rpc_10/model/complex_nested_error_data.dart';
import 'package:aws_json1_0_v1/src/json_rpc_10/model/foo_error.dart';
import 'package:aws_json1_0_v1/src/json_rpc_10/model/greeting_with_errors_input.dart';
import 'package:aws_json1_0_v1/src/json_rpc_10/model/greeting_with_errors_output.dart';
import 'package:aws_json1_0_v1/src/json_rpc_10/model/invalid_greeting.dart';
import 'package:aws_json1_0_v1/src/json_rpc_10/operation/greeting_with_errors_operation.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'AwsJson10ComplexError (error)',
    () async {
      await _i2.httpErrorResponseTest<
          GreetingWithErrorsInput,
          GreetingWithErrorsInput,
          GreetingWithErrorsOutput,
          GreetingWithErrorsOutput,
          ComplexError>(
        operation: GreetingWithErrorsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'AwsJson10ComplexError',
          documentation: 'Parses a complex error with no message member',
          protocol: _i3.ShapeId(
            namespace: 'aws.protocols',
            shape: 'awsJson1_0',
          ),
          authScheme: null,
          body:
              '{\n    "__type": "aws.protocoltests.json10#ComplexError",\n    "TopLevel": "Top level",\n    "Nested": {\n        "Foo": "bar"\n    }\n}',
          bodyMediaType: 'application/json',
          params: {
            'TopLevel': 'Top level',
            'Nested': {'Foo': 'bar'},
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/x-amz-json-1.0'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          code: 400,
        ),
        errorSerializers: const [
          ComplexErrorAwsJson10Serializer(),
          ComplexNestedErrorDataAwsJson10Serializer(),
        ],
      );
    },
  );
  _i1.test(
    'AwsJson10EmptyComplexError (error)',
    () async {
      await _i2.httpErrorResponseTest<
          GreetingWithErrorsInput,
          GreetingWithErrorsInput,
          GreetingWithErrorsOutput,
          GreetingWithErrorsOutput,
          ComplexError>(
        operation: GreetingWithErrorsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'AwsJson10EmptyComplexError',
          documentation: 'Parses a complex error with an empty body',
          protocol: _i3.ShapeId(
            namespace: 'aws.protocols',
            shape: 'awsJson1_0',
          ),
          authScheme: null,
          body: '{\n    "__type": "aws.protocoltests.json10#ComplexError"\n}',
          bodyMediaType: 'application/json',
          params: {},
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/x-amz-json-1.0'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          code: 400,
        ),
        errorSerializers: const [
          ComplexErrorAwsJson10Serializer(),
          ComplexNestedErrorDataAwsJson10Serializer(),
        ],
      );
    },
  );
  _i1.test(
    'AwsJson10FooErrorUsingXAmznErrorType (error)',
    () async {
      await _i2.httpErrorResponseTest<
          GreetingWithErrorsInput,
          GreetingWithErrorsInput,
          GreetingWithErrorsOutput,
          GreetingWithErrorsOutput,
          FooError>(
        operation: GreetingWithErrorsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'AwsJson10FooErrorUsingXAmznErrorType',
          documentation:
              'Serializes the X-Amzn-ErrorType header. For an example service, see Amazon EKS.',
          protocol: _i3.ShapeId(
            namespace: 'aws.protocols',
            shape: 'awsJson1_0',
          ),
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
          code: 500,
        ),
        errorSerializers: const [FooErrorAwsJson10Serializer()],
      );
    },
  );
  _i1.test(
    'AwsJson10FooErrorUsingXAmznErrorTypeWithUri (error)',
    () async {
      await _i2.httpErrorResponseTest<
          GreetingWithErrorsInput,
          GreetingWithErrorsInput,
          GreetingWithErrorsOutput,
          GreetingWithErrorsOutput,
          FooError>(
        operation: GreetingWithErrorsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'AwsJson10FooErrorUsingXAmznErrorTypeWithUri',
          documentation:
              'Some X-Amzn-Errortype headers contain URLs. Clients need to split the URL on \':\' and take only the first half of the string. For example, \'ValidationException:http://internal.amazon.com/example/com.amazon.example.validate/\'\nis to be interpreted as \'ValidationException\'.\n\nFor an example service see Amazon Polly.',
          protocol: _i3.ShapeId(
            namespace: 'aws.protocols',
            shape: 'awsJson1_0',
          ),
          authScheme: null,
          body: null,
          bodyMediaType: null,
          params: {},
          vendorParamsShape: null,
          vendorParams: {},
          headers: {
            'X-Amzn-Errortype':
                'FooError:http://internal.amazon.com/example/com.amazon.example.validate/'
          },
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: _i2.AppliesTo.client,
          code: 500,
        ),
        errorSerializers: const [FooErrorAwsJson10Serializer()],
      );
    },
  );
  _i1.test(
    'AwsJson10FooErrorUsingXAmznErrorTypeWithUriAndNamespace (error)',
    () async {
      await _i2.httpErrorResponseTest<
          GreetingWithErrorsInput,
          GreetingWithErrorsInput,
          GreetingWithErrorsOutput,
          GreetingWithErrorsOutput,
          FooError>(
        operation: GreetingWithErrorsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'AwsJson10FooErrorUsingXAmznErrorTypeWithUriAndNamespace',
          documentation:
              'X-Amzn-Errortype might contain a URL and a namespace. Client should extract only the shape name. This is a pathalogical case that might not actually happen in any deployed AWS service.',
          protocol: _i3.ShapeId(
            namespace: 'aws.protocols',
            shape: 'awsJson1_0',
          ),
          authScheme: null,
          body: null,
          bodyMediaType: null,
          params: {},
          vendorParamsShape: null,
          vendorParams: {},
          headers: {
            'X-Amzn-Errortype':
                'aws.protocoltests.json10#FooError:http://internal.amazon.com/example/com.amazon.example.validate/'
          },
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: _i2.AppliesTo.client,
          code: 500,
        ),
        errorSerializers: const [FooErrorAwsJson10Serializer()],
      );
    },
  );
  _i1.test(
    'AwsJson10FooErrorUsingCode (error)',
    () async {
      await _i2.httpErrorResponseTest<
          GreetingWithErrorsInput,
          GreetingWithErrorsInput,
          GreetingWithErrorsOutput,
          GreetingWithErrorsOutput,
          FooError>(
        operation: GreetingWithErrorsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'AwsJson10FooErrorUsingCode',
          documentation:
              'This example uses the \'code\' property in the output rather than X-Amzn-Errortype. Some services do this though it\'s preferable to send the X-Amzn-Errortype. Client implementations must first check for the X-Amzn-Errortype and then check for a top-level \'code\' property.\n\nFor example service see Amazon S3 Glacier.',
          protocol: _i3.ShapeId(
            namespace: 'aws.protocols',
            shape: 'awsJson1_0',
          ),
          authScheme: null,
          body: '{\n    "code": "FooError"\n}',
          bodyMediaType: 'application/json',
          params: {},
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/x-amz-json-1.0'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: _i2.AppliesTo.client,
          code: 500,
        ),
        errorSerializers: const [FooErrorAwsJson10Serializer()],
      );
    },
  );
  _i1.test(
    'AwsJson10FooErrorUsingCodeAndNamespace (error)',
    () async {
      await _i2.httpErrorResponseTest<
          GreetingWithErrorsInput,
          GreetingWithErrorsInput,
          GreetingWithErrorsOutput,
          GreetingWithErrorsOutput,
          FooError>(
        operation: GreetingWithErrorsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'AwsJson10FooErrorUsingCodeAndNamespace',
          documentation:
              'Some services serialize errors using code, and it might contain a namespace. Clients should just take the last part of the string after \'#\'.',
          protocol: _i3.ShapeId(
            namespace: 'aws.protocols',
            shape: 'awsJson1_0',
          ),
          authScheme: null,
          body: '{\n    "code": "aws.protocoltests.json10#FooError"\n}',
          bodyMediaType: 'application/json',
          params: {},
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/x-amz-json-1.0'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: _i2.AppliesTo.client,
          code: 500,
        ),
        errorSerializers: const [FooErrorAwsJson10Serializer()],
      );
    },
  );
  _i1.test(
    'AwsJson10FooErrorUsingCodeUriAndNamespace (error)',
    () async {
      await _i2.httpErrorResponseTest<
          GreetingWithErrorsInput,
          GreetingWithErrorsInput,
          GreetingWithErrorsOutput,
          GreetingWithErrorsOutput,
          FooError>(
        operation: GreetingWithErrorsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'AwsJson10FooErrorUsingCodeUriAndNamespace',
          documentation:
              'Some services serialize errors using code, and it might contain a namespace. It also might contain a URI. Clients should just take the last part of the string after \'#\' and before ":". This is a pathalogical case that might not occur in any deployed AWS service.',
          protocol: _i3.ShapeId(
            namespace: 'aws.protocols',
            shape: 'awsJson1_0',
          ),
          authScheme: null,
          body:
              '{\n    "code": "aws.protocoltests.json10#FooError:http://internal.amazon.com/example/com.amazon.example.validate/"\n}',
          bodyMediaType: 'application/json',
          params: {},
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/x-amz-json-1.0'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: _i2.AppliesTo.client,
          code: 500,
        ),
        errorSerializers: const [FooErrorAwsJson10Serializer()],
      );
    },
  );
  _i1.test(
    'AwsJson10FooErrorWithDunderType (error)',
    () async {
      await _i2.httpErrorResponseTest<
          GreetingWithErrorsInput,
          GreetingWithErrorsInput,
          GreetingWithErrorsOutput,
          GreetingWithErrorsOutput,
          FooError>(
        operation: GreetingWithErrorsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'AwsJson10FooErrorWithDunderType',
          documentation: 'Some services serialize errors using __type.',
          protocol: _i3.ShapeId(
            namespace: 'aws.protocols',
            shape: 'awsJson1_0',
          ),
          authScheme: null,
          body: '{\n    "__type": "FooError"\n}',
          bodyMediaType: 'application/json',
          params: {},
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/x-amz-json-1.0'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: _i2.AppliesTo.client,
          code: 500,
        ),
        errorSerializers: const [FooErrorAwsJson10Serializer()],
      );
    },
  );
  _i1.test(
    'AwsJson10FooErrorWithDunderTypeAndNamespace (error)',
    () async {
      await _i2.httpErrorResponseTest<
          GreetingWithErrorsInput,
          GreetingWithErrorsInput,
          GreetingWithErrorsOutput,
          GreetingWithErrorsOutput,
          FooError>(
        operation: GreetingWithErrorsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'AwsJson10FooErrorWithDunderTypeAndNamespace',
          documentation:
              'Some services serialize errors using __type, and it might contain a namespace. Clients should just take the last part of the string after \'#\'.',
          protocol: _i3.ShapeId(
            namespace: 'aws.protocols',
            shape: 'awsJson1_0',
          ),
          authScheme: null,
          body: '{\n    "__type": "aws.protocoltests.json10#FooError"\n}',
          bodyMediaType: 'application/json',
          params: {},
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/x-amz-json-1.0'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: _i2.AppliesTo.client,
          code: 500,
        ),
        errorSerializers: const [FooErrorAwsJson10Serializer()],
      );
    },
  );
  _i1.test(
    'AwsJson10FooErrorWithDunderTypeUriAndNamespace (error)',
    () async {
      await _i2.httpErrorResponseTest<
          GreetingWithErrorsInput,
          GreetingWithErrorsInput,
          GreetingWithErrorsOutput,
          GreetingWithErrorsOutput,
          FooError>(
        operation: GreetingWithErrorsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'AwsJson10FooErrorWithDunderTypeUriAndNamespace',
          documentation:
              'Some services serialize errors using __type, and it might contain a namespace. It also might contain a URI. Clients should just take the last part of the string after \'#\' and before ":". This is a pathalogical case that might not occur in any deployed AWS service.',
          protocol: _i3.ShapeId(
            namespace: 'aws.protocols',
            shape: 'awsJson1_0',
          ),
          authScheme: null,
          body:
              '{\n    "__type": "aws.protocoltests.json10#FooError:http://internal.amazon.com/example/com.amazon.example.validate/"\n}',
          bodyMediaType: 'application/json',
          params: {},
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/x-amz-json-1.0'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: _i2.AppliesTo.client,
          code: 500,
        ),
        errorSerializers: const [FooErrorAwsJson10Serializer()],
      );
    },
  );
  _i1.test(
    'AwsJson10InvalidGreetingError (error)',
    () async {
      await _i2.httpErrorResponseTest<
          GreetingWithErrorsInput,
          GreetingWithErrorsInput,
          GreetingWithErrorsOutput,
          GreetingWithErrorsOutput,
          InvalidGreeting>(
        operation: GreetingWithErrorsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'AwsJson10InvalidGreetingError',
          documentation: 'Parses simple JSON errors',
          protocol: _i3.ShapeId(
            namespace: 'aws.protocols',
            shape: 'awsJson1_0',
          ),
          authScheme: null,
          body:
              '{\n    "__type": "aws.protocoltests.json10#InvalidGreeting",\n    "Message": "Hi"\n}',
          bodyMediaType: 'application/json',
          params: {'Message': 'Hi'},
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/x-amz-json-1.0'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          code: 400,
        ),
        errorSerializers: const [InvalidGreetingAwsJson10Serializer()],
      );
    },
  );
}

class GreetingWithErrorsInputAwsJson10Serializer
    extends _i3.StructuredSmithySerializer<GreetingWithErrorsInput> {
  const GreetingWithErrorsInputAwsJson10Serializer()
      : super('GreetingWithErrorsInput');

  @override
  Iterable<Type> get types => const [GreetingWithErrorsInput];

  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];

  @override
  GreetingWithErrorsInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GreetingWithErrorsInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'greeting':
          result.greeting = (serializers.deserialize(
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
    GreetingWithErrorsInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}

class GreetingWithErrorsOutputAwsJson10Serializer
    extends _i3.StructuredSmithySerializer<GreetingWithErrorsOutput> {
  const GreetingWithErrorsOutputAwsJson10Serializer()
      : super('GreetingWithErrorsOutput');

  @override
  Iterable<Type> get types => const [GreetingWithErrorsOutput];

  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];

  @override
  GreetingWithErrorsOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GreetingWithErrorsOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'greeting':
          result.greeting = (serializers.deserialize(
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
    GreetingWithErrorsOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}

class ComplexErrorAwsJson10Serializer
    extends _i3.StructuredSmithySerializer<ComplexError> {
  const ComplexErrorAwsJson10Serializer() : super('ComplexError');

  @override
  Iterable<Type> get types => const [ComplexError];

  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];

  @override
  ComplexError deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ComplexErrorBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'TopLevel':
          result.topLevel = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Nested':
          result.nested.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(ComplexNestedErrorData),
          ) as ComplexNestedErrorData));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ComplexError object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}

class ComplexNestedErrorDataAwsJson10Serializer
    extends _i3.StructuredSmithySerializer<ComplexNestedErrorData> {
  const ComplexNestedErrorDataAwsJson10Serializer()
      : super('ComplexNestedErrorData');

  @override
  Iterable<Type> get types => const [ComplexNestedErrorData];

  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];

  @override
  ComplexNestedErrorData deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ComplexNestedErrorDataBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Foo':
          result.foo = (serializers.deserialize(
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
    ComplexNestedErrorData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}

class FooErrorAwsJson10Serializer
    extends _i3.StructuredSmithySerializer<FooError> {
  const FooErrorAwsJson10Serializer() : super('FooError');

  @override
  Iterable<Type> get types => const [FooError];

  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];

  @override
  FooError deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return FooErrorBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    FooError object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}

class InvalidGreetingAwsJson10Serializer
    extends _i3.StructuredSmithySerializer<InvalidGreeting> {
  const InvalidGreetingAwsJson10Serializer() : super('InvalidGreeting');

  @override
  Iterable<Type> get types => const [InvalidGreeting];

  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];

  @override
  InvalidGreeting deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InvalidGreetingBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Message':
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
    InvalidGreeting object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}
