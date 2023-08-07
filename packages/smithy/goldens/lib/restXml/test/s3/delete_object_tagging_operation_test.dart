// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

// ignore_for_file: unused_element
library rest_xml_v1.s3.test.delete_object_tagging_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_signature_v4/aws_signature_v4.dart' as _i7;
import 'package:built_collection/built_collection.dart' as _i14;
import 'package:built_value/serializer.dart';
import 'package:rest_xml_v1/src/s3/model/aws_config.dart' as _i5;
import 'package:rest_xml_v1/src/s3/model/client_config.dart' as _i16;
import 'package:rest_xml_v1/src/s3/model/delete_object_tagging_output.dart'
    as _i11;
import 'package:rest_xml_v1/src/s3/model/delete_object_tagging_request.dart'
    as _i10;
import 'package:rest_xml_v1/src/s3/model/environment_config.dart' as _i13;
import 'package:rest_xml_v1/src/s3/model/file_config_settings.dart' as _i15;
import 'package:rest_xml_v1/src/s3/model/operation_config.dart' as _i17;
import 'package:rest_xml_v1/src/s3/model/retry_config.dart' as _i19;
import 'package:rest_xml_v1/src/s3/model/retry_mode.dart' as _i2;
import 'package:rest_xml_v1/src/s3/model/s3_addressing_style.dart' as _i3;
import 'package:rest_xml_v1/src/s3/model/s3_config.dart' as _i18;
import 'package:rest_xml_v1/src/s3/model/scoped_config.dart' as _i12;
import 'package:rest_xml_v1/src/s3/operation/delete_object_tagging_operation.dart'
    as _i8;
import 'package:smithy/smithy.dart' as _i9;
import 'package:smithy_aws/smithy_aws.dart' as _i6;
import 'package:smithy_test/smithy_test.dart' as _i1;
import 'package:test/test.dart' as _i4;

void main() {
  final vendorSerializers = (_i1.testSerializers.toBuilder()
        ..addAll(const [
          AwsConfigSerializer(),
          ScopedConfigSerializer(),
          EnvironmentConfigSerializer(),
          FileConfigSettingsSerializer(),
          S3ConfigSerializer(),
          ClientConfigSerializer(),
          RetryConfigSerializer(),
          OperationConfigSerializer(),
          ..._i2.RetryMode.serializers,
          ..._i3.S3AddressingStyle.serializers,
        ]))
      .build();

  _i4.test(
    'S3EscapeObjectKeyInUriLabel (request)',
    () async {
      final config = (vendorSerializers.deserialize(
        {
          'scopedConfig': {
            'client': {'region': 'us-west-2'}
          }
        },
        specifiedType: const FullType(_i5.AwsConfig),
      ) as _i5.AwsConfig);
      final s3ClientConfig = _i6.S3ClientConfig(
        useAcceleration:
            config.scopedConfig?.operation?.s3?.useAccelerateEndpoint ??
                config.scopedConfig?.client?.s3?.useAccelerateEndpoint ??
                false,
        useDualStack:
            config.scopedConfig?.operation?.s3?.useDualstackEndpoint ??
                config.scopedConfig?.client?.s3?.useDualstackEndpoint ??
                false,
        usePathStyle: (config.scopedConfig?.operation?.s3?.addressingStyle ??
                config.scopedConfig?.client?.s3?.addressingStyle) ==
            _i3.S3AddressingStyle.path,
        signerConfiguration: _i7.S3ServiceConfiguration(
          signPayload: false,
          chunked: false,
        ),
      );
      await _i1.httpRequestTest(
        operation: _i8.DeleteObjectTaggingOperation(
          region: config.scopedConfig?.client?.region ?? 'us-east-1',
          baseUri: Uri.parse('https://s3.us-west-2.amazonaws.com'),
          s3ClientConfig: s3ClientConfig,
          credentialsProvider:
              const _i7.AWSCredentialsProvider(_i7.AWSCredentials(
            'DUMMY-ACCESS-KEY-ID',
            'DUMMY-SECRET-ACCESS-KEY',
          )),
        ),
        testCase: const _i1.HttpRequestTestCase(
          id: 'S3EscapeObjectKeyInUriLabel',
          documentation:
              '    S3 clients should escape special characters in Object Keys\n    when the Object Key is used as a URI label binding.\n',
          protocol: _i9.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restXml',
          ),
          authScheme: null,
          body: '',
          bodyMediaType: null,
          params: {
            'Bucket': 'mybucket',
            'Key': 'my key.txt',
          },
          vendorParamsShape: _i9.ShapeId(
            namespace: 'aws.protocoltests.config',
            shape: 'AwsConfig',
          ),
          vendorParams: {
            'scopedConfig': {
              'client': {'region': 'us-west-2'}
            }
          },
          headers: {},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          method: 'DELETE',
          uri: '/my%20key.txt',
          host: 's3.us-west-2.amazonaws.com',
          resolvedHost: 'mybucket.s3.us-west-2.amazonaws.com',
          queryParams: ['tagging'],
          forbidQueryParams: [],
          requireQueryParams: [],
        ),
        inputSerializers: const [DeleteObjectTaggingRequestRestXmlSerializer()],
      );
    },
  );
  _i4.test(
    'S3EscapePathObjectKeyInUriLabel (request)',
    () async {
      final config = (vendorSerializers.deserialize(
        {
          'scopedConfig': {
            'client': {'region': 'us-west-2'}
          }
        },
        specifiedType: const FullType(_i5.AwsConfig),
      ) as _i5.AwsConfig);
      final s3ClientConfig = _i6.S3ClientConfig(
        useAcceleration:
            config.scopedConfig?.operation?.s3?.useAccelerateEndpoint ??
                config.scopedConfig?.client?.s3?.useAccelerateEndpoint ??
                false,
        useDualStack:
            config.scopedConfig?.operation?.s3?.useDualstackEndpoint ??
                config.scopedConfig?.client?.s3?.useDualstackEndpoint ??
                false,
        usePathStyle: (config.scopedConfig?.operation?.s3?.addressingStyle ??
                config.scopedConfig?.client?.s3?.addressingStyle) ==
            _i3.S3AddressingStyle.path,
        signerConfiguration: _i7.S3ServiceConfiguration(
          signPayload: false,
          chunked: false,
        ),
      );
      await _i1.httpRequestTest(
        operation: _i8.DeleteObjectTaggingOperation(
          region: config.scopedConfig?.client?.region ?? 'us-east-1',
          baseUri: Uri.parse('https://s3.us-west-2.amazonaws.com'),
          s3ClientConfig: s3ClientConfig,
          credentialsProvider:
              const _i7.AWSCredentialsProvider(_i7.AWSCredentials(
            'DUMMY-ACCESS-KEY-ID',
            'DUMMY-SECRET-ACCESS-KEY',
          )),
        ),
        testCase: const _i1.HttpRequestTestCase(
          id: 'S3EscapePathObjectKeyInUriLabel',
          documentation:
              '    S3 clients should preserve an Object Key representing a path\n    when the Object Key is used as a URI label binding, but still\n    escape special characters.\n',
          protocol: _i9.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restXml',
          ),
          authScheme: null,
          body: '',
          bodyMediaType: null,
          params: {
            'Bucket': 'mybucket',
            'Key': 'foo/bar/my key.txt',
          },
          vendorParamsShape: _i9.ShapeId(
            namespace: 'aws.protocoltests.config',
            shape: 'AwsConfig',
          ),
          vendorParams: {
            'scopedConfig': {
              'client': {'region': 'us-west-2'}
            }
          },
          headers: {},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          method: 'DELETE',
          uri: '/foo/bar/my%20key.txt',
          host: 's3.us-west-2.amazonaws.com',
          resolvedHost: 'mybucket.s3.us-west-2.amazonaws.com',
          queryParams: ['tagging'],
          forbidQueryParams: [],
          requireQueryParams: [],
        ),
        inputSerializers: const [DeleteObjectTaggingRequestRestXmlSerializer()],
      );
    },
  );
}

class DeleteObjectTaggingRequestRestXmlSerializer
    extends _i9.StructuredSmithySerializer<_i10.DeleteObjectTaggingRequest> {
  const DeleteObjectTaggingRequestRestXmlSerializer()
      : super('DeleteObjectTaggingRequest');

  @override
  Iterable<Type> get types => const [_i10.DeleteObjectTaggingRequest];
  @override
  Iterable<_i9.ShapeId> get supportedProtocols => const [
        _i9.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  _i10.DeleteObjectTaggingRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i10.DeleteObjectTaggingRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Bucket':
          result.bucket = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Key':
          result.key = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'VersionId':
          result.versionId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ExpectedBucketOwner':
          result.expectedBucketOwner = (serializers.deserialize(
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
    _i10.DeleteObjectTaggingRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}

class DeleteObjectTaggingOutputRestXmlSerializer
    extends _i9.StructuredSmithySerializer<_i11.DeleteObjectTaggingOutput> {
  const DeleteObjectTaggingOutputRestXmlSerializer()
      : super('DeleteObjectTaggingOutput');

  @override
  Iterable<Type> get types => const [_i11.DeleteObjectTaggingOutput];
  @override
  Iterable<_i9.ShapeId> get supportedProtocols => const [
        _i9.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  _i11.DeleteObjectTaggingOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i11.DeleteObjectTaggingOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'VersionId':
          result.versionId = (serializers.deserialize(
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
    _i11.DeleteObjectTaggingOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}

class AwsConfigSerializer
    extends _i9.StructuredSmithySerializer<_i5.AwsConfig> {
  const AwsConfigSerializer() : super('AwsConfig');

  @override
  Iterable<Type> get types => const [_i5.AwsConfig];
  @override
  Iterable<_i9.ShapeId> get supportedProtocols => const [
        _i9.ShapeId(
          namespace: 'smithy.dart',
          shape: 'genericProtocol',
        )
      ];
  @override
  _i5.AwsConfig deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i5.AwsConfigBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'clockTime':
          result.clockTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'scopedConfig':
          result.scopedConfig.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i12.ScopedConfig),
          ) as _i12.ScopedConfig));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    _i5.AwsConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}

class ScopedConfigSerializer
    extends _i9.StructuredSmithySerializer<_i12.ScopedConfig> {
  const ScopedConfigSerializer() : super('ScopedConfig');

  @override
  Iterable<Type> get types => const [_i12.ScopedConfig];
  @override
  Iterable<_i9.ShapeId> get supportedProtocols => const [
        _i9.ShapeId(
          namespace: 'smithy.dart',
          shape: 'genericProtocol',
        )
      ];
  @override
  _i12.ScopedConfig deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i12.ScopedConfigBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'environment':
          result.environment.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i13.EnvironmentConfig),
          ) as _i13.EnvironmentConfig));
        case 'configFile':
          result.configFile.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i14.BuiltMap,
              [
                FullType(String),
                FullType(_i15.FileConfigSettings),
              ],
            ),
          ) as _i14.BuiltMap<String, _i15.FileConfigSettings>));
        case 'credentialsFile':
          result.credentialsFile.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i14.BuiltMap,
              [
                FullType(String),
                FullType(_i15.FileConfigSettings),
              ],
            ),
          ) as _i14.BuiltMap<String, _i15.FileConfigSettings>));
        case 'client':
          result.client.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i16.ClientConfig),
          ) as _i16.ClientConfig));
        case 'operation':
          result.operation.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i17.OperationConfig),
          ) as _i17.OperationConfig));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    _i12.ScopedConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}

class EnvironmentConfigSerializer
    extends _i9.StructuredSmithySerializer<_i13.EnvironmentConfig> {
  const EnvironmentConfigSerializer() : super('EnvironmentConfig');

  @override
  Iterable<Type> get types => const [_i13.EnvironmentConfig];
  @override
  Iterable<_i9.ShapeId> get supportedProtocols => const [
        _i9.ShapeId(
          namespace: 'smithy.dart',
          shape: 'genericProtocol',
        )
      ];
  @override
  _i13.EnvironmentConfig deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i13.EnvironmentConfigBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'AWS_ACCESS_KEY_ID':
          result.awsAccessKeyId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'AWS_SECRET_ACCESS_KEY':
          result.awsSecretAccessKey = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'AWS_DEFAULT_REGION':
          result.awsDefaultRegion = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'AWS_RETRY_MODE':
          result.awsRetryMode = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.RetryMode),
          ) as _i2.RetryMode);
        case 'AWS_SESSION_TOKEN':
          result.awsSessionToken = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'AWS_PROFILE':
          result.awsProfile = (serializers.deserialize(
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
    _i13.EnvironmentConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}

class FileConfigSettingsSerializer
    extends _i9.StructuredSmithySerializer<_i15.FileConfigSettings> {
  const FileConfigSettingsSerializer() : super('FileConfigSettings');

  @override
  Iterable<Type> get types => const [_i15.FileConfigSettings];
  @override
  Iterable<_i9.ShapeId> get supportedProtocols => const [
        _i9.ShapeId(
          namespace: 'smithy.dart',
          shape: 'genericProtocol',
        )
      ];
  @override
  _i15.FileConfigSettings deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i15.FileConfigSettingsBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'aws_access_key_id':
          result.awsAccessKeyId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'aws_secret_access_key':
          result.awsSecretAccessKey = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'aws_session_token':
          result.awsSessionToken = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'region':
          result.region = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 's3':
          result.s3.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i18.S3Config),
          ) as _i18.S3Config));
        case 'retry_mode':
          result.retryMode = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.RetryMode),
          ) as _i2.RetryMode);
        case 'max_attempts':
          result.maxAttempts = (serializers.deserialize(
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
    _i15.FileConfigSettings object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}

class S3ConfigSerializer extends _i9.StructuredSmithySerializer<_i18.S3Config> {
  const S3ConfigSerializer() : super('S3Config');

  @override
  Iterable<Type> get types => const [_i18.S3Config];
  @override
  Iterable<_i9.ShapeId> get supportedProtocols => const [
        _i9.ShapeId(
          namespace: 'smithy.dart',
          shape: 'genericProtocol',
        )
      ];
  @override
  _i18.S3Config deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i18.S3ConfigBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'addressing_style':
          result.addressingStyle = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.S3AddressingStyle),
          ) as _i3.S3AddressingStyle);
        case 'use_accelerate_endpoint':
          result.useAccelerateEndpoint = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'use_dualstack_endpoint':
          result.useDualstackEndpoint = (serializers.deserialize(
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
    _i18.S3Config object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}

class ClientConfigSerializer
    extends _i9.StructuredSmithySerializer<_i16.ClientConfig> {
  const ClientConfigSerializer() : super('ClientConfig');

  @override
  Iterable<Type> get types => const [_i16.ClientConfig];
  @override
  Iterable<_i9.ShapeId> get supportedProtocols => const [
        _i9.ShapeId(
          namespace: 'smithy.dart',
          shape: 'genericProtocol',
        )
      ];
  @override
  _i16.ClientConfig deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i16.ClientConfigBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'aws_access_key_id':
          result.awsAccessKeyId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'aws_secret_access_key':
          result.awsSecretAccessKey = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'aws_session_token':
          result.awsSessionToken = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'region':
          result.region = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 's3':
          result.s3.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i18.S3Config),
          ) as _i18.S3Config));
        case 'retry_config':
          result.retryConfig.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i19.RetryConfig),
          ) as _i19.RetryConfig));
        case 'aws_profile':
          result.awsProfile = (serializers.deserialize(
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
    _i16.ClientConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}

class RetryConfigSerializer
    extends _i9.StructuredSmithySerializer<_i19.RetryConfig> {
  const RetryConfigSerializer() : super('RetryConfig');

  @override
  Iterable<Type> get types => const [_i19.RetryConfig];
  @override
  Iterable<_i9.ShapeId> get supportedProtocols => const [
        _i9.ShapeId(
          namespace: 'smithy.dart',
          shape: 'genericProtocol',
        )
      ];
  @override
  _i19.RetryConfig deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i19.RetryConfigBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'mode':
          result.mode = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.RetryMode),
          ) as _i2.RetryMode);
        case 'max_attempts':
          result.maxAttempts = (serializers.deserialize(
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
    _i19.RetryConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}

class OperationConfigSerializer
    extends _i9.StructuredSmithySerializer<_i17.OperationConfig> {
  const OperationConfigSerializer() : super('OperationConfig');

  @override
  Iterable<Type> get types => const [_i17.OperationConfig];
  @override
  Iterable<_i9.ShapeId> get supportedProtocols => const [
        _i9.ShapeId(
          namespace: 'smithy.dart',
          shape: 'genericProtocol',
        )
      ];
  @override
  _i17.OperationConfig deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i17.OperationConfigBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 's3':
          result.s3.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i18.S3Config),
          ) as _i18.S3Config));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    _i17.OperationConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}
