// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

// ignore_for_file: unused_element
library rest_xml_v2.s3.test.delete_object_tagging_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_signature_v4/aws_signature_v4.dart' as _i4;
import 'package:built_collection/built_collection.dart' as _i6;
import 'package:built_value/serializer.dart';
import 'package:rest_xml_v2/src/s3/model/aws_config.dart';
import 'package:rest_xml_v2/src/s3/model/client_config.dart';
import 'package:rest_xml_v2/src/s3/model/delete_object_tagging_output.dart';
import 'package:rest_xml_v2/src/s3/model/delete_object_tagging_request.dart';
import 'package:rest_xml_v2/src/s3/model/environment_config.dart';
import 'package:rest_xml_v2/src/s3/model/file_config_settings.dart';
import 'package:rest_xml_v2/src/s3/model/operation_config.dart';
import 'package:rest_xml_v2/src/s3/model/retry_config.dart';
import 'package:rest_xml_v2/src/s3/model/retry_mode.dart';
import 'package:rest_xml_v2/src/s3/model/s3_addressing_style.dart';
import 'package:rest_xml_v2/src/s3/model/s3_config.dart';
import 'package:rest_xml_v2/src/s3/model/scoped_config.dart';
import 'package:rest_xml_v2/src/s3/operation/delete_object_tagging_operation.dart';
import 'package:smithy/smithy.dart' as _i5;
import 'package:smithy_aws/smithy_aws.dart' as _i3;
import 'package:smithy_test/smithy_test.dart' as _i1;
import 'package:test/test.dart' as _i2;

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
          ...RetryMode.serializers,
          ...S3AddressingStyle.serializers,
        ]))
      .build();

  _i2.test(
    'S3EscapeObjectKeyInUriLabel (request)',
    () async {
      final config = (vendorSerializers.deserialize(
        {
          'scopedConfig': {
            'client': {'region': 'us-west-2'}
          }
        },
        specifiedType: const FullType(AwsConfig),
      ) as AwsConfig);
      final s3ClientConfig = _i3.S3ClientConfig(
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
            S3AddressingStyle.path,
        signerConfiguration: _i4.S3ServiceConfiguration(
          signPayload: false,
          chunked: false,
        ),
      );
      await _i1.httpRequestTest(
        operation: DeleteObjectTaggingOperation(
          region: config.scopedConfig?.client?.region ?? 'us-east-1',
          baseUri: Uri.parse('https://s3.us-west-2.amazonaws.com'),
          s3ClientConfig: s3ClientConfig,
          credentialsProvider:
              const _i4.AWSCredentialsProvider(_i4.AWSCredentials(
            'DUMMY-ACCESS-KEY-ID',
            'DUMMY-SECRET-ACCESS-KEY',
          )),
        ),
        testCase: const _i1.HttpRequestTestCase(
          id: 'S3EscapeObjectKeyInUriLabel',
          documentation:
              '    S3 clients should escape special characters in Object Keys\n    when the Object Key is used as a URI label binding.\n',
          protocol: _i5.ShapeId(
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
          vendorParamsShape: _i5.ShapeId(
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
  _i2.test(
    'S3EscapePathObjectKeyInUriLabel (request)',
    () async {
      final config = (vendorSerializers.deserialize(
        {
          'scopedConfig': {
            'client': {'region': 'us-west-2'}
          }
        },
        specifiedType: const FullType(AwsConfig),
      ) as AwsConfig);
      final s3ClientConfig = _i3.S3ClientConfig(
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
            S3AddressingStyle.path,
        signerConfiguration: _i4.S3ServiceConfiguration(
          signPayload: false,
          chunked: false,
        ),
      );
      await _i1.httpRequestTest(
        operation: DeleteObjectTaggingOperation(
          region: config.scopedConfig?.client?.region ?? 'us-east-1',
          baseUri: Uri.parse('https://s3.us-west-2.amazonaws.com'),
          s3ClientConfig: s3ClientConfig,
          credentialsProvider:
              const _i4.AWSCredentialsProvider(_i4.AWSCredentials(
            'DUMMY-ACCESS-KEY-ID',
            'DUMMY-SECRET-ACCESS-KEY',
          )),
        ),
        testCase: const _i1.HttpRequestTestCase(
          id: 'S3EscapePathObjectKeyInUriLabel',
          documentation:
              '    S3 clients should preserve an Object Key representing a path\n    when the Object Key is used as a URI label binding, but still\n    escape special characters.\n',
          protocol: _i5.ShapeId(
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
          vendorParamsShape: _i5.ShapeId(
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
    extends _i5.StructuredSmithySerializer<DeleteObjectTaggingRequest> {
  const DeleteObjectTaggingRequestRestXmlSerializer()
      : super('DeleteObjectTaggingRequest');

  @override
  Iterable<Type> get types => const [DeleteObjectTaggingRequest];

  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];

  @override
  DeleteObjectTaggingRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteObjectTaggingRequestBuilder();
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
    DeleteObjectTaggingRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}

class DeleteObjectTaggingOutputRestXmlSerializer
    extends _i5.StructuredSmithySerializer<DeleteObjectTaggingOutput> {
  const DeleteObjectTaggingOutputRestXmlSerializer()
      : super('DeleteObjectTaggingOutput');

  @override
  Iterable<Type> get types => const [DeleteObjectTaggingOutput];

  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];

  @override
  DeleteObjectTaggingOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteObjectTaggingOutputBuilder();
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
    DeleteObjectTaggingOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}

class AwsConfigSerializer extends _i5.StructuredSmithySerializer<AwsConfig> {
  const AwsConfigSerializer() : super('AwsConfig');

  @override
  Iterable<Type> get types => const [AwsConfig];

  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'smithy.dart',
          shape: 'genericProtocol',
        )
      ];

  @override
  AwsConfig deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AwsConfigBuilder();
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
            specifiedType: const FullType(ScopedConfig),
          ) as ScopedConfig));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    AwsConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}

class ScopedConfigSerializer
    extends _i5.StructuredSmithySerializer<ScopedConfig> {
  const ScopedConfigSerializer() : super('ScopedConfig');

  @override
  Iterable<Type> get types => const [ScopedConfig];

  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'smithy.dart',
          shape: 'genericProtocol',
        )
      ];

  @override
  ScopedConfig deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ScopedConfigBuilder();
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
            specifiedType: const FullType(EnvironmentConfig),
          ) as EnvironmentConfig));
        case 'configFile':
          result.configFile.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i6.BuiltMap,
              [
                FullType(String),
                FullType(FileConfigSettings),
              ],
            ),
          ) as _i6.BuiltMap<String, FileConfigSettings>));
        case 'credentialsFile':
          result.credentialsFile.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i6.BuiltMap,
              [
                FullType(String),
                FullType(FileConfigSettings),
              ],
            ),
          ) as _i6.BuiltMap<String, FileConfigSettings>));
        case 'client':
          result.client.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(ClientConfig),
          ) as ClientConfig));
        case 'operation':
          result.operation.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(OperationConfig),
          ) as OperationConfig));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ScopedConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}

class EnvironmentConfigSerializer
    extends _i5.StructuredSmithySerializer<EnvironmentConfig> {
  const EnvironmentConfigSerializer() : super('EnvironmentConfig');

  @override
  Iterable<Type> get types => const [EnvironmentConfig];

  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'smithy.dart',
          shape: 'genericProtocol',
        )
      ];

  @override
  EnvironmentConfig deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EnvironmentConfigBuilder();
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
            specifiedType: const FullType(RetryMode),
          ) as RetryMode);
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
    EnvironmentConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}

class FileConfigSettingsSerializer
    extends _i5.StructuredSmithySerializer<FileConfigSettings> {
  const FileConfigSettingsSerializer() : super('FileConfigSettings');

  @override
  Iterable<Type> get types => const [FileConfigSettings];

  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'smithy.dart',
          shape: 'genericProtocol',
        )
      ];

  @override
  FileConfigSettings deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FileConfigSettingsBuilder();
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
            specifiedType: const FullType(S3Config),
          ) as S3Config));
        case 'retry_mode':
          result.retryMode = (serializers.deserialize(
            value,
            specifiedType: const FullType(RetryMode),
          ) as RetryMode);
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
    FileConfigSettings object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}

class S3ConfigSerializer extends _i5.StructuredSmithySerializer<S3Config> {
  const S3ConfigSerializer() : super('S3Config');

  @override
  Iterable<Type> get types => const [S3Config];

  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'smithy.dart',
          shape: 'genericProtocol',
        )
      ];

  @override
  S3Config deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = S3ConfigBuilder();
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
            specifiedType: const FullType(S3AddressingStyle),
          ) as S3AddressingStyle);
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
    S3Config object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}

class ClientConfigSerializer
    extends _i5.StructuredSmithySerializer<ClientConfig> {
  const ClientConfigSerializer() : super('ClientConfig');

  @override
  Iterable<Type> get types => const [ClientConfig];

  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'smithy.dart',
          shape: 'genericProtocol',
        )
      ];

  @override
  ClientConfig deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ClientConfigBuilder();
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
            specifiedType: const FullType(S3Config),
          ) as S3Config));
        case 'retry_config':
          result.retryConfig.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(RetryConfig),
          ) as RetryConfig));
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
    ClientConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}

class RetryConfigSerializer
    extends _i5.StructuredSmithySerializer<RetryConfig> {
  const RetryConfigSerializer() : super('RetryConfig');

  @override
  Iterable<Type> get types => const [RetryConfig];

  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'smithy.dart',
          shape: 'genericProtocol',
        )
      ];

  @override
  RetryConfig deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RetryConfigBuilder();
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
            specifiedType: const FullType(RetryMode),
          ) as RetryMode);
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
    RetryConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}

class OperationConfigSerializer
    extends _i5.StructuredSmithySerializer<OperationConfig> {
  const OperationConfigSerializer() : super('OperationConfig');

  @override
  Iterable<Type> get types => const [OperationConfig];

  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'smithy.dart',
          shape: 'genericProtocol',
        )
      ];

  @override
  OperationConfig deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OperationConfigBuilder();
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
            specifiedType: const FullType(S3Config),
          ) as S3Config));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    OperationConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}
