// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

// ignore_for_file: unused_element
library rest_xml_v2.s3.test.list_objects_v2_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_signature_v4/aws_signature_v4.dart' as _i4;
import 'package:built_collection/built_collection.dart' as _i6;
import 'package:built_value/serializer.dart';
import 'package:rest_xml_v2/src/s3/model/aws_config.dart';
import 'package:rest_xml_v2/src/s3/model/client_config.dart';
import 'package:rest_xml_v2/src/s3/model/common_prefix.dart';
import 'package:rest_xml_v2/src/s3/model/encoding_type.dart';
import 'package:rest_xml_v2/src/s3/model/environment_config.dart';
import 'package:rest_xml_v2/src/s3/model/file_config_settings.dart';
import 'package:rest_xml_v2/src/s3/model/list_objects_v2_output.dart';
import 'package:rest_xml_v2/src/s3/model/list_objects_v2_request.dart';
import 'package:rest_xml_v2/src/s3/model/no_such_bucket.dart';
import 'package:rest_xml_v2/src/s3/model/object.dart';
import 'package:rest_xml_v2/src/s3/model/object_storage_class.dart';
import 'package:rest_xml_v2/src/s3/model/operation_config.dart';
import 'package:rest_xml_v2/src/s3/model/owner.dart';
import 'package:rest_xml_v2/src/s3/model/request_payer.dart';
import 'package:rest_xml_v2/src/s3/model/retry_config.dart';
import 'package:rest_xml_v2/src/s3/model/retry_mode.dart';
import 'package:rest_xml_v2/src/s3/model/s3_addressing_style.dart';
import 'package:rest_xml_v2/src/s3/model/s3_config.dart';
import 'package:rest_xml_v2/src/s3/model/scoped_config.dart';
import 'package:rest_xml_v2/src/s3/operation/list_objects_v2_operation.dart';
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
          ...EncodingType.serializers,
          ...RequestPayer.serializers,
          ...RetryMode.serializers,
          ...S3AddressingStyle.serializers,
          ...ObjectStorageClass.serializers,
        ]))
      .build();

  _i2.test(
    'S3DefaultAddressing (request)',
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
        operation: ListObjectsV2Operation(
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
          id: 'S3DefaultAddressing',
          documentation:
              'S3 clients should map the default addressing style to virtual host.',
          protocol: _i5.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restXml',
          ),
          authScheme: null,
          body: '',
          bodyMediaType: null,
          params: {'Bucket': 'mybucket'},
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
          method: 'GET',
          uri: '/',
          host: 's3.us-west-2.amazonaws.com',
          resolvedHost: 'mybucket.s3.us-west-2.amazonaws.com',
          queryParams: ['list-type=2'],
          forbidQueryParams: [],
          requireQueryParams: [],
        ),
        inputSerializers: const [ListObjectsV2RequestRestXmlSerializer()],
      );
    },
  );
  _i2.test(
    'S3VirtualHostAddressing (request)',
    () async {
      final config = (vendorSerializers.deserialize(
        {
          'scopedConfig': {
            'client': {
              'region': 'us-west-2',
              's3': {'addressing_style': 'virtual'},
            }
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
        operation: ListObjectsV2Operation(
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
          id: 'S3VirtualHostAddressing',
          documentation:
              'S3 clients should support the explicit virtual host addressing style.',
          protocol: _i5.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restXml',
          ),
          authScheme: null,
          body: '',
          bodyMediaType: null,
          params: {'Bucket': 'mybucket'},
          vendorParamsShape: _i5.ShapeId(
            namespace: 'aws.protocoltests.config',
            shape: 'AwsConfig',
          ),
          vendorParams: {
            'scopedConfig': {
              'client': {
                'region': 'us-west-2',
                's3': {'addressing_style': 'virtual'},
              }
            }
          },
          headers: {},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          method: 'GET',
          uri: '/',
          host: 's3.us-west-2.amazonaws.com',
          resolvedHost: 'mybucket.s3.us-west-2.amazonaws.com',
          queryParams: ['list-type=2'],
          forbidQueryParams: [],
          requireQueryParams: [],
        ),
        inputSerializers: const [ListObjectsV2RequestRestXmlSerializer()],
      );
    },
  );
  _i2.test(
    'S3PathAddressing (request)',
    () async {
      final config = (vendorSerializers.deserialize(
        {
          'scopedConfig': {
            'client': {
              'region': 'us-west-2',
              's3': {'addressing_style': 'path'},
            }
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
        operation: ListObjectsV2Operation(
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
          id: 'S3PathAddressing',
          documentation:
              'S3 clients should support the explicit path addressing style.',
          protocol: _i5.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restXml',
          ),
          authScheme: null,
          body: '',
          bodyMediaType: null,
          params: {'Bucket': 'mybucket'},
          vendorParamsShape: _i5.ShapeId(
            namespace: 'aws.protocoltests.config',
            shape: 'AwsConfig',
          ),
          vendorParams: {
            'scopedConfig': {
              'client': {
                'region': 'us-west-2',
                's3': {'addressing_style': 'path'},
              }
            }
          },
          headers: {},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          method: 'GET',
          uri: '/mybucket',
          host: 's3.us-west-2.amazonaws.com',
          resolvedHost: 's3.us-west-2.amazonaws.com',
          queryParams: ['list-type=2'],
          forbidQueryParams: [],
          requireQueryParams: [],
        ),
        inputSerializers: const [ListObjectsV2RequestRestXmlSerializer()],
      );
    },
  );
  _i2.test(
    'S3VirtualHostDualstackAddressing (request)',
    () async {
      final config = (vendorSerializers.deserialize(
        {
          'scopedConfig': {
            'client': {
              'region': 'us-west-2',
              's3': {
                'addressing_style': 'virtual',
                'use_dualstack_endpoint': true,
              },
            }
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
        operation: ListObjectsV2Operation(
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
          id: 'S3VirtualHostDualstackAddressing',
          documentation:
              'S3 clients should support the explicit virtual host\naddressing style with Dualstack.',
          protocol: _i5.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restXml',
          ),
          authScheme: null,
          body: '',
          bodyMediaType: null,
          params: {'Bucket': 'mybucket'},
          vendorParamsShape: _i5.ShapeId(
            namespace: 'aws.protocoltests.config',
            shape: 'AwsConfig',
          ),
          vendorParams: {
            'scopedConfig': {
              'client': {
                'region': 'us-west-2',
                's3': {
                  'addressing_style': 'virtual',
                  'use_dualstack_endpoint': true,
                },
              }
            }
          },
          headers: {},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          method: 'GET',
          uri: '/',
          host: 's3.us-west-2.amazonaws.com',
          resolvedHost: 'mybucket.s3.dualstack.us-west-2.amazonaws.com',
          queryParams: ['list-type=2'],
          forbidQueryParams: [],
          requireQueryParams: [],
        ),
        inputSerializers: const [ListObjectsV2RequestRestXmlSerializer()],
      );
    },
  );
  _i2.test(
    'S3VirtualHostAccelerateAddressing (request)',
    () async {
      final config = (vendorSerializers.deserialize(
        {
          'scopedConfig': {
            'client': {
              'region': 'us-west-2',
              's3': {
                'addressing_style': 'virtual',
                'use_accelerate_endpoint': true,
              },
            }
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
        operation: ListObjectsV2Operation(
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
          id: 'S3VirtualHostAccelerateAddressing',
          documentation:
              'S3 clients should support the explicit virtual host\naddressing style with S3 Accelerate.',
          protocol: _i5.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restXml',
          ),
          authScheme: null,
          body: '',
          bodyMediaType: null,
          params: {'Bucket': 'mybucket'},
          vendorParamsShape: _i5.ShapeId(
            namespace: 'aws.protocoltests.config',
            shape: 'AwsConfig',
          ),
          vendorParams: {
            'scopedConfig': {
              'client': {
                'region': 'us-west-2',
                's3': {
                  'addressing_style': 'virtual',
                  'use_accelerate_endpoint': true,
                },
              }
            }
          },
          headers: {},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          method: 'GET',
          uri: '/',
          host: 's3.us-west-2.amazonaws.com',
          resolvedHost: 'mybucket.s3-accelerate.amazonaws.com',
          queryParams: ['list-type=2'],
          forbidQueryParams: [],
          requireQueryParams: [],
        ),
        inputSerializers: const [ListObjectsV2RequestRestXmlSerializer()],
      );
    },
  );
  _i2.test(
    'S3VirtualHostDualstackAccelerateAddressing (request)',
    () async {
      final config = (vendorSerializers.deserialize(
        {
          'scopedConfig': {
            'client': {
              'region': 'us-west-2',
              's3': {
                'addressing_style': 'virtual',
                'use_dualstack_endpoint': true,
                'use_accelerate_endpoint': true,
              },
            }
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
        operation: ListObjectsV2Operation(
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
          id: 'S3VirtualHostDualstackAccelerateAddressing',
          documentation:
              'S3 clients should support the explicit virtual host\naddressing style with Dualstack and S3 Accelerate.',
          protocol: _i5.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restXml',
          ),
          authScheme: null,
          body: '',
          bodyMediaType: null,
          params: {'Bucket': 'mybucket'},
          vendorParamsShape: _i5.ShapeId(
            namespace: 'aws.protocoltests.config',
            shape: 'AwsConfig',
          ),
          vendorParams: {
            'scopedConfig': {
              'client': {
                'region': 'us-west-2',
                's3': {
                  'addressing_style': 'virtual',
                  'use_dualstack_endpoint': true,
                  'use_accelerate_endpoint': true,
                },
              }
            }
          },
          headers: {},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          method: 'GET',
          uri: '/',
          host: 's3.us-west-2.amazonaws.com',
          resolvedHost: 'mybucket.s3-accelerate.dualstack.amazonaws.com',
          queryParams: ['list-type=2'],
          forbidQueryParams: [],
          requireQueryParams: [],
        ),
        inputSerializers: const [ListObjectsV2RequestRestXmlSerializer()],
      );
    },
  );
  _i2.test(
    'S3OperationAddressingPreferred (request)',
    () async {
      final config = (vendorSerializers.deserialize(
        {
          'scopedConfig': {
            'client': {
              'region': 'us-west-2',
              's3': {'addressing_style': 'path'},
            },
            'operation': {
              's3': {'addressing_style': 'virtual'}
            },
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
        operation: ListObjectsV2Operation(
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
          id: 'S3OperationAddressingPreferred',
          documentation:
              'S3 clients should resolve to the addressing style of the\noperation if defined on both the client and operation.',
          protocol: _i5.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restXml',
          ),
          authScheme: null,
          body: '',
          bodyMediaType: null,
          params: {'Bucket': 'mybucket'},
          vendorParamsShape: _i5.ShapeId(
            namespace: 'aws.protocoltests.config',
            shape: 'AwsConfig',
          ),
          vendorParams: {
            'scopedConfig': {
              'client': {
                'region': 'us-west-2',
                's3': {'addressing_style': 'path'},
              },
              'operation': {
                's3': {'addressing_style': 'virtual'}
              },
            }
          },
          headers: {},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          method: 'GET',
          uri: '/',
          host: 's3.us-west-2.amazonaws.com',
          resolvedHost: 'mybucket.s3.us-west-2.amazonaws.com',
          queryParams: ['list-type=2'],
          forbidQueryParams: [],
          requireQueryParams: [],
        ),
        inputSerializers: const [ListObjectsV2RequestRestXmlSerializer()],
      );
    },
  );
}

class ListObjectsV2RequestRestXmlSerializer
    extends _i5.StructuredSmithySerializer<ListObjectsV2Request> {
  const ListObjectsV2RequestRestXmlSerializer() : super('ListObjectsV2Request');

  @override
  Iterable<Type> get types => const [ListObjectsV2Request];

  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];

  @override
  ListObjectsV2Request deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListObjectsV2RequestBuilder();
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
        case 'Delimiter':
          result.delimiter = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'EncodingType':
          result.encodingType = (serializers.deserialize(
            value,
            specifiedType: const FullType(EncodingType),
          ) as EncodingType);
        case 'MaxKeys':
          result.maxKeys = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'Prefix':
          result.prefix = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ContinuationToken':
          result.continuationToken = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'FetchOwner':
          result.fetchOwner = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'StartAfter':
          result.startAfter = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'RequestPayer':
          result.requestPayer = (serializers.deserialize(
            value,
            specifiedType: const FullType(RequestPayer),
          ) as RequestPayer);
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
    ListObjectsV2Request object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}

class ListObjectsV2OutputRestXmlSerializer
    extends _i5.StructuredSmithySerializer<ListObjectsV2Output> {
  const ListObjectsV2OutputRestXmlSerializer() : super('ListObjectsV2Output');

  @override
  Iterable<Type> get types => const [ListObjectsV2Output];

  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];

  @override
  ListObjectsV2Output deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListObjectsV2OutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'IsTruncated':
          result.isTruncated = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'Contents':
          result.contents.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i6.BuiltList,
              [FullType(S3Object)],
            ),
          ) as _i6.BuiltList<S3Object>));
        case 'Name':
          result.name = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Prefix':
          result.prefix = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Delimiter':
          result.delimiter = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'MaxKeys':
          result.maxKeys = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'CommonPrefixes':
          result.commonPrefixes.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i6.BuiltList,
              [FullType(CommonPrefix)],
            ),
          ) as _i6.BuiltList<CommonPrefix>));
        case 'EncodingType':
          result.encodingType = (serializers.deserialize(
            value,
            specifiedType: const FullType(EncodingType),
          ) as EncodingType);
        case 'KeyCount':
          result.keyCount = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'ContinuationToken':
          result.continuationToken = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'NextContinuationToken':
          result.nextContinuationToken = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'StartAfter':
          result.startAfter = (serializers.deserialize(
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
    ListObjectsV2Output object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}

class ObjectRestXmlSerializer extends _i5.StructuredSmithySerializer<S3Object> {
  const ObjectRestXmlSerializer() : super('Object');

  @override
  Iterable<Type> get types => const [S3Object];

  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];

  @override
  S3Object deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = S3ObjectBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Key':
          result.key = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'LastModified':
          result.lastModified =
              _i5.TimestampSerializer.epochSeconds.deserialize(
            serializers,
            value,
          );
        case 'ETag':
          result.eTag = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Size':
          result.size = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'StorageClass':
          result.storageClass = (serializers.deserialize(
            value,
            specifiedType: const FullType(ObjectStorageClass),
          ) as ObjectStorageClass);
        case 'Owner':
          result.owner.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(Owner),
          ) as Owner));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    S3Object object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}

class OwnerRestXmlSerializer extends _i5.StructuredSmithySerializer<Owner> {
  const OwnerRestXmlSerializer() : super('Owner');

  @override
  Iterable<Type> get types => const [Owner];

  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];

  @override
  Owner deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OwnerBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'DisplayName':
          result.displayName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ID':
          result.id = (serializers.deserialize(
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
    Owner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}

class CommonPrefixRestXmlSerializer
    extends _i5.StructuredSmithySerializer<CommonPrefix> {
  const CommonPrefixRestXmlSerializer() : super('CommonPrefix');

  @override
  Iterable<Type> get types => const [CommonPrefix];

  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];

  @override
  CommonPrefix deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CommonPrefixBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Prefix':
          result.prefix = (serializers.deserialize(
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
    CommonPrefix object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}

class NoSuchBucketRestXmlSerializer
    extends _i5.StructuredSmithySerializer<NoSuchBucket> {
  const NoSuchBucketRestXmlSerializer() : super('NoSuchBucket');

  @override
  Iterable<Type> get types => const [NoSuchBucket];

  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];

  @override
  NoSuchBucket deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return NoSuchBucketBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    NoSuchBucket object, {
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
