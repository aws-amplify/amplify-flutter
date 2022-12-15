// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

// ignore_for_file: unused_element
library aws_json1_1_v1.machine_learning.test.predict_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_json1_1_v1/src/machine_learning/model/details_attributes.dart'
    as _i10;
import 'package:aws_json1_1_v1/src/machine_learning/model/internal_server_exception.dart'
    as _i11;
import 'package:aws_json1_1_v1/src/machine_learning/model/invalid_input_exception.dart'
    as _i12;
import 'package:aws_json1_1_v1/src/machine_learning/model/limit_exceeded_exception.dart'
    as _i13;
import 'package:aws_json1_1_v1/src/machine_learning/model/predict_input.dart'
    as _i6;
import 'package:aws_json1_1_v1/src/machine_learning/model/predict_output.dart'
    as _i8;
import 'package:aws_json1_1_v1/src/machine_learning/model/prediction.dart'
    as _i9;
import 'package:aws_json1_1_v1/src/machine_learning/model/predictor_not_mounted_exception.dart'
    as _i14;
import 'package:aws_json1_1_v1/src/machine_learning/model/resource_not_found_exception.dart'
    as _i15;
import 'package:aws_json1_1_v1/src/machine_learning/operation/predict_operation.dart'
    as _i3;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i4;
import 'package:built_collection/built_collection.dart' as _i7;
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test('MachinelearningPredictEndpoint (request)', () async {
    await _i2.httpRequestTest(
      operation: _i3.PredictOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
        credentialsProvider:
            const _i4.AWSCredentialsProvider(_i4.AWSCredentials(
          'DUMMY-ACCESS-KEY-ID',
          'DUMMY-SECRET-ACCESS-KEY',
        )),
      ),
      testCase: const _i2.HttpRequestTestCase(
        id: 'MachinelearningPredictEndpoint',
        documentation:
            'MachineLearning\'s api makes use of generated endpoints that the\ncustomer is then expected to use for the Predict operation. Having\nto alter the endpoint for a specific operation would be cumbersome,\nso an AWS client should be able to do it for them.',
        protocol: _i5.ShapeId(
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
    extends _i5.StructuredSmithySerializer<_i6.PredictInput> {
  const PredictInputAwsJson11Serializer() : super('PredictInput');

  @override
  Iterable<Type> get types => const [_i6.PredictInput];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  _i6.PredictInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i6.PredictInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'MLModelId':
          result.mlModelId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'PredictEndpoint':
          result.predictEndpoint = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'Record':
          result.record.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i7.BuiltMap,
              [
                FullType(String),
                FullType(String),
              ],
            ),
          ) as _i7.BuiltMap<String, String>));
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
    throw StateError('Not supported for tests');
  }
}

class PredictOutputAwsJson11Serializer
    extends _i5.StructuredSmithySerializer<_i8.PredictOutput> {
  const PredictOutputAwsJson11Serializer() : super('PredictOutput');

  @override
  Iterable<Type> get types => const [_i8.PredictOutput];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  _i8.PredictOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i8.PredictOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'Prediction':
          if (value != null) {
            result.prediction.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i9.Prediction),
            ) as _i9.Prediction));
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
    throw StateError('Not supported for tests');
  }
}

class PredictionAwsJson11Serializer
    extends _i5.StructuredSmithySerializer<_i9.Prediction> {
  const PredictionAwsJson11Serializer() : super('Prediction');

  @override
  Iterable<Type> get types => const [_i9.Prediction];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  _i9.Prediction deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i9.PredictionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'details':
          if (value != null) {
            result.details.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i7.BuiltMap,
                [
                  FullType(_i10.DetailsAttributes),
                  FullType(String),
                ],
              ),
            ) as _i7.BuiltMap<_i10.DetailsAttributes, String>));
          }
          break;
        case 'predictedLabel':
          if (value != null) {
            result.predictedLabel = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'predictedScores':
          if (value != null) {
            result.predictedScores.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i7.BuiltMap,
                [
                  FullType(String),
                  FullType(double),
                ],
              ),
            ) as _i7.BuiltMap<String, double>));
          }
          break;
        case 'predictedValue':
          if (value != null) {
            result.predictedValue = (serializers.deserialize(
              value,
              specifiedType: const FullType(double),
            ) as double);
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
    throw StateError('Not supported for tests');
  }
}

class InternalServerExceptionAwsJson11Serializer
    extends _i5.StructuredSmithySerializer<_i11.InternalServerException> {
  const InternalServerExceptionAwsJson11Serializer()
      : super('InternalServerException');

  @override
  Iterable<Type> get types => const [_i11.InternalServerException];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  _i11.InternalServerException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i11.InternalServerExceptionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'code':
          if (value != null) {
            result.code = (serializers.deserialize(
              value,
              specifiedType: const FullType(int),
            ) as int);
          }
          break;
        case 'message':
          if (value != null) {
            result.message = (serializers.deserialize(
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
    throw StateError('Not supported for tests');
  }
}

class InvalidInputExceptionAwsJson11Serializer
    extends _i5.StructuredSmithySerializer<_i12.InvalidInputException> {
  const InvalidInputExceptionAwsJson11Serializer()
      : super('InvalidInputException');

  @override
  Iterable<Type> get types => const [_i12.InvalidInputException];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  _i12.InvalidInputException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i12.InvalidInputExceptionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'code':
          if (value != null) {
            result.code = (serializers.deserialize(
              value,
              specifiedType: const FullType(int),
            ) as int);
          }
          break;
        case 'message':
          if (value != null) {
            result.message = (serializers.deserialize(
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
    throw StateError('Not supported for tests');
  }
}

class LimitExceededExceptionAwsJson11Serializer
    extends _i5.StructuredSmithySerializer<_i13.LimitExceededException> {
  const LimitExceededExceptionAwsJson11Serializer()
      : super('LimitExceededException');

  @override
  Iterable<Type> get types => const [_i13.LimitExceededException];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  _i13.LimitExceededException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i13.LimitExceededExceptionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'code':
          if (value != null) {
            result.code = (serializers.deserialize(
              value,
              specifiedType: const FullType(int),
            ) as int);
          }
          break;
        case 'message':
          if (value != null) {
            result.message = (serializers.deserialize(
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
    throw StateError('Not supported for tests');
  }
}

class PredictorNotMountedExceptionAwsJson11Serializer
    extends _i5.StructuredSmithySerializer<_i14.PredictorNotMountedException> {
  const PredictorNotMountedExceptionAwsJson11Serializer()
      : super('PredictorNotMountedException');

  @override
  Iterable<Type> get types => const [_i14.PredictorNotMountedException];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  _i14.PredictorNotMountedException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i14.PredictorNotMountedExceptionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'message':
          if (value != null) {
            result.message = (serializers.deserialize(
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
    throw StateError('Not supported for tests');
  }
}

class ResourceNotFoundExceptionAwsJson11Serializer
    extends _i5.StructuredSmithySerializer<_i15.ResourceNotFoundException> {
  const ResourceNotFoundExceptionAwsJson11Serializer()
      : super('ResourceNotFoundException');

  @override
  Iterable<Type> get types => const [_i15.ResourceNotFoundException];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  _i15.ResourceNotFoundException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i15.ResourceNotFoundExceptionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'code':
          if (value != null) {
            result.code = (serializers.deserialize(
              value,
              specifiedType: const FullType(int),
            ) as int);
          }
          break;
        case 'message':
          if (value != null) {
            result.message = (serializers.deserialize(
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
    throw StateError('Not supported for tests');
  }
}
