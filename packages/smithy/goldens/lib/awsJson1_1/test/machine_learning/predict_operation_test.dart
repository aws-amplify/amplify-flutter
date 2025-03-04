// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

// ignore_for_file: unused_element
library aws_json1_1_v1.machine_learning.test.predict_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_json1_1_v1/src/machine_learning/model/details_attributes.dart';
import 'package:aws_json1_1_v1/src/machine_learning/model/internal_server_exception.dart';
import 'package:aws_json1_1_v1/src/machine_learning/model/invalid_input_exception.dart';
import 'package:aws_json1_1_v1/src/machine_learning/model/limit_exceeded_exception.dart';
import 'package:aws_json1_1_v1/src/machine_learning/model/predict_input.dart';
import 'package:aws_json1_1_v1/src/machine_learning/model/predict_output.dart';
import 'package:aws_json1_1_v1/src/machine_learning/model/prediction.dart';
import 'package:aws_json1_1_v1/src/machine_learning/model/predictor_not_mounted_exception.dart';
import 'package:aws_json1_1_v1/src/machine_learning/model/resource_not_found_exception.dart';
import 'package:aws_json1_1_v1/src/machine_learning/operation/predict_operation.dart';
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i3;
import 'package:built_collection/built_collection.dart' as _i5;
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test('MachinelearningPredictEndpoint (request)', () async {
    await _i2.httpRequestTest(
      operation: PredictOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
        credentialsProvider:
            const _i3.AWSCredentialsProvider(_i3.AWSCredentials(
          'DUMMY-ACCESS-KEY-ID',
          'DUMMY-SECRET-ACCESS-KEY',
        )),
      ),
      testCase: const _i2.HttpRequestTestCase(
        id: 'MachinelearningPredictEndpoint',
        documentation:
            'MachineLearning\'s api makes use of generated endpoints that the\ncustomer is then expected to use for the Predict operation. Having\nto alter the endpoint for a specific operation would be cumbersome,\nso an AWS client should be able to do it for them.',
        protocol: _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        ),
        authScheme: null,
        body:
            '{"MLModelId": "foo", "Record": {}, "PredictEndpoint": "https://custom.example.com/"}',
        bodyMediaType: 'application/json',
        params: {
          'MLModelId': 'foo',
          'Record': {},
          'PredictEndpoint': 'https://custom.example.com/',
        },
        vendorParamsShape: null,
        vendorParams: {},
        headers: {'Content-Type': 'application/x-amz-json-1.1'},
        forbidHeaders: [],
        requireHeaders: [],
        tags: [],
        appliesTo: null,
        method: 'POST',
        uri: '/',
        host: 'example.com',
        resolvedHost: 'custom.example.com',
        queryParams: [],
        forbidQueryParams: [],
        requireQueryParams: [],
      ),
      inputSerializers: const [PredictInputAwsJson11Serializer()],
    );
  }, skip: 'ML Predict is not supported yet');
}

class PredictInputAwsJson11Serializer
    extends _i4.StructuredSmithySerializer<PredictInput> {
  const PredictInputAwsJson11Serializer() : super('PredictInput');

  @override
  Iterable<Type> get types => const [PredictInput];

  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];

  @override
  PredictInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PredictInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'MLModelId':
          result.mlModelId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Record':
          result.record.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i5.BuiltMap,
              [
                FullType(String),
                FullType(String),
              ],
            ),
          ) as _i5.BuiltMap<String, String>));
        case 'PredictEndpoint':
          result.predictEndpoint = (serializers.deserialize(
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
    PredictInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}

class PredictOutputAwsJson11Serializer
    extends _i4.StructuredSmithySerializer<PredictOutput> {
  const PredictOutputAwsJson11Serializer() : super('PredictOutput');

  @override
  Iterable<Type> get types => const [PredictOutput];

  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];

  @override
  PredictOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PredictOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Prediction':
          result.prediction.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(Prediction),
          ) as Prediction));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    PredictOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}

class PredictionAwsJson11Serializer
    extends _i4.StructuredSmithySerializer<Prediction> {
  const PredictionAwsJson11Serializer() : super('Prediction');

  @override
  Iterable<Type> get types => const [Prediction];

  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];

  @override
  Prediction deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PredictionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'predictedLabel':
          result.predictedLabel = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'predictedValue':
          result.predictedValue = (serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double);
        case 'predictedScores':
          result.predictedScores.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i5.BuiltMap,
              [
                FullType(String),
                FullType(double),
              ],
            ),
          ) as _i5.BuiltMap<String, double>));
        case 'details':
          result.details.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i5.BuiltMap,
              [
                FullType(DetailsAttributes),
                FullType(String),
              ],
            ),
          ) as _i5.BuiltMap<DetailsAttributes, String>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Prediction object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}

class InternalServerExceptionAwsJson11Serializer
    extends _i4.StructuredSmithySerializer<InternalServerException> {
  const InternalServerExceptionAwsJson11Serializer()
      : super('InternalServerException');

  @override
  Iterable<Type> get types => const [InternalServerException];

  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];

  @override
  InternalServerException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InternalServerExceptionBuilder();
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
        case 'code':
          result.code = (serializers.deserialize(
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
    InternalServerException object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}

class InvalidInputExceptionAwsJson11Serializer
    extends _i4.StructuredSmithySerializer<InvalidInputException> {
  const InvalidInputExceptionAwsJson11Serializer()
      : super('InvalidInputException');

  @override
  Iterable<Type> get types => const [InvalidInputException];

  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];

  @override
  InvalidInputException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InvalidInputExceptionBuilder();
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
        case 'code':
          result.code = (serializers.deserialize(
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
    InvalidInputException object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}

class LimitExceededExceptionAwsJson11Serializer
    extends _i4.StructuredSmithySerializer<LimitExceededException> {
  const LimitExceededExceptionAwsJson11Serializer()
      : super('LimitExceededException');

  @override
  Iterable<Type> get types => const [LimitExceededException];

  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];

  @override
  LimitExceededException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LimitExceededExceptionBuilder();
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
        case 'code':
          result.code = (serializers.deserialize(
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
    LimitExceededException object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}

class PredictorNotMountedExceptionAwsJson11Serializer
    extends _i4.StructuredSmithySerializer<PredictorNotMountedException> {
  const PredictorNotMountedExceptionAwsJson11Serializer()
      : super('PredictorNotMountedException');

  @override
  Iterable<Type> get types => const [PredictorNotMountedException];

  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];

  @override
  PredictorNotMountedException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PredictorNotMountedExceptionBuilder();
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
    PredictorNotMountedException object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}

class ResourceNotFoundExceptionAwsJson11Serializer
    extends _i4.StructuredSmithySerializer<ResourceNotFoundException> {
  const ResourceNotFoundExceptionAwsJson11Serializer()
      : super('ResourceNotFoundException');

  @override
  Iterable<Type> get types => const [ResourceNotFoundException];

  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];

  @override
  ResourceNotFoundException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ResourceNotFoundExceptionBuilder();
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
        case 'code':
          result.code = (serializers.deserialize(
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
    ResourceNotFoundException object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}
