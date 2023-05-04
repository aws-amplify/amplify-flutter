// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

// ignore_for_file: unused_element
library rest_xml_v2.s3.test.list_objects_v2_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_signature_v4/aws_signature_v4.dart' as _i10;
import 'package:built_collection/built_collection.dart' as _i15;
import 'package:built_value/serializer.dart';
import 'package:rest_xml_v2/src/s3/model/aws_config.dart' as _i8;
import 'package:rest_xml_v2/src/s3/model/client_config.dart' as _i23;
import 'package:rest_xml_v2/src/s3/model/common_prefix.dart' as _i17;
import 'package:rest_xml_v2/src/s3/model/encoding_type.dart' as _i2;
import 'package:rest_xml_v2/src/s3/model/environment_config.dart' as _i21;
import 'package:rest_xml_v2/src/s3/model/file_config_settings.dart' as _i22;
import 'package:rest_xml_v2/src/s3/model/list_objects_v2_output.dart' as _i14;
import 'package:rest_xml_v2/src/s3/model/list_objects_v2_request.dart' as _i13;
import 'package:rest_xml_v2/src/s3/model/no_such_bucket.dart' as _i19;
import 'package:rest_xml_v2/src/s3/model/object.dart' as _i16;
import 'package:rest_xml_v2/src/s3/model/object_storage_class.dart' as _i6;
import 'package:rest_xml_v2/src/s3/model/operation_config.dart' as _i24;
import 'package:rest_xml_v2/src/s3/model/owner.dart' as _i18;
import 'package:rest_xml_v2/src/s3/model/request_payer.dart' as _i3;
import 'package:rest_xml_v2/src/s3/model/retry_config.dart' as _i26;
import 'package:rest_xml_v2/src/s3/model/retry_mode.dart' as _i4;
import 'package:rest_xml_v2/src/s3/model/s3_addressing_style.dart' as _i5;
import 'package:rest_xml_v2/src/s3/model/s3_config.dart' as _i25;
import 'package:rest_xml_v2/src/s3/model/scoped_config.dart' as _i20;
import 'package:rest_xml_v2/src/s3/operation/list_objects_v2_operation.dart'
    as _i11;
import 'package:smithy/smithy.dart' as _i12;
import 'package:smithy_aws/smithy_aws.dart' as _i9;
import 'package:smithy_test/smithy_test.dart' as _i1;
import 'package:test/test.dart' as _i7;

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
          ..._i2.EncodingType.serializers,
          ..._i3.RequestPayer.serializers,
          ..._i4.RetryMode.serializers,
          ..._i5.S3AddressingStyle.serializers,
          ..._i6.ObjectStorageClass.serializers,
        ]))
      .build();

  _i7.test(
    'S3DefaultAddressing (request)',
    () async {
      final config = (vendorSerializers.deserialize(
        {
          'scopedConfig': {
            'client': {'region': 'us-west-2'}
          }
        },
        specifiedType: const FullType(_i8.AwsConfig),
      ) as _i8.AwsConfig);
      final s3ClientConfig = _i9.S3ClientConfig(
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
            _i5.S3AddressingStyle.path,
        signerConfiguration: _i10.S3ServiceConfiguration(
          signPayload: false,
          chunked: false,
        ),
      );
      await _i1.httpRequestTest(
        operation: _i11.ListObjectsV2Operation(
          region: config.scopedConfig?.client?.region ?? 'us-east-1',
          baseUri: Uri.parse('https://s3.us-west-2.amazonaws.com'),
          s3ClientConfig: s3ClientConfig,
          credentialsProvider:
              const _i10.AWSCredentialsProvider(_i10.AWSCredentials(
            'DUMMY-ACCESS-KEY-ID',
            'DUMMY-SECRET-ACCESS-KEY',
          )),
        ),
        testCase: const _i1.HttpRequestTestCase(
          id: 'S3DefaultAddressing',
          documentation:
              'S3 clients should map the default addressing style to virtual host.',
          protocol: _i12.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restXml',
          ),
          authScheme: null,
          body: '',
          bodyMediaType: null,
          params: {'Bucket': 'mybucket'},
          vendorParamsShape: _i12.ShapeId(
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
  _i7.test(
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
        specifiedType: const FullType(_i8.AwsConfig),
      ) as _i8.AwsConfig);
      final s3ClientConfig = _i9.S3ClientConfig(
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
            _i5.S3AddressingStyle.path,
        signerConfiguration: _i10.S3ServiceConfiguration(
          signPayload: false,
          chunked: false,
        ),
      );
      await _i1.httpRequestTest(
        operation: _i11.ListObjectsV2Operation(
          region: config.scopedConfig?.client?.region ?? 'us-east-1',
          baseUri: Uri.parse('https://s3.us-west-2.amazonaws.com'),
          s3ClientConfig: s3ClientConfig,
          credentialsProvider:
              const _i10.AWSCredentialsProvider(_i10.AWSCredentials(
            'DUMMY-ACCESS-KEY-ID',
            'DUMMY-SECRET-ACCESS-KEY',
          )),
        ),
        testCase: const _i1.HttpRequestTestCase(
          id: 'S3VirtualHostAddressing',
          documentation:
              'S3 clients should support the explicit virtual host addressing style.',
          protocol: _i12.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restXml',
          ),
          authScheme: null,
          body: '',
          bodyMediaType: null,
          params: {'Bucket': 'mybucket'},
          vendorParamsShape: _i12.ShapeId(
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
  _i7.test(
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
        specifiedType: const FullType(_i8.AwsConfig),
      ) as _i8.AwsConfig);
      final s3ClientConfig = _i9.S3ClientConfig(
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
            _i5.S3AddressingStyle.path,
        signerConfiguration: _i10.S3ServiceConfiguration(
          signPayload: false,
          chunked: false,
        ),
      );
      await _i1.httpRequestTest(
        operation: _i11.ListObjectsV2Operation(
          region: config.scopedConfig?.client?.region ?? 'us-east-1',
          baseUri: Uri.parse('https://s3.us-west-2.amazonaws.com'),
          s3ClientConfig: s3ClientConfig,
          credentialsProvider:
              const _i10.AWSCredentialsProvider(_i10.AWSCredentials(
            'DUMMY-ACCESS-KEY-ID',
            'DUMMY-SECRET-ACCESS-KEY',
          )),
        ),
        testCase: const _i1.HttpRequestTestCase(
          id: 'S3PathAddressing',
          documentation:
              'S3 clients should support the explicit path addressing style.',
          protocol: _i12.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restXml',
          ),
          authScheme: null,
          body: '',
          bodyMediaType: null,
          params: {'Bucket': 'mybucket'},
          vendorParamsShape: _i12.ShapeId(
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
  _i7.test(
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
        specifiedType: const FullType(_i8.AwsConfig),
      ) as _i8.AwsConfig);
      final s3ClientConfig = _i9.S3ClientConfig(
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
            _i5.S3AddressingStyle.path,
        signerConfiguration: _i10.S3ServiceConfiguration(
          signPayload: false,
          chunked: false,
        ),
      );
      await _i1.httpRequestTest(
        operation: _i11.ListObjectsV2Operation(
          region: config.scopedConfig?.client?.region ?? 'us-east-1',
          baseUri: Uri.parse('https://s3.us-west-2.amazonaws.com'),
          s3ClientConfig: s3ClientConfig,
          credentialsProvider:
              const _i10.AWSCredentialsProvider(_i10.AWSCredentials(
            'DUMMY-ACCESS-KEY-ID',
            'DUMMY-SECRET-ACCESS-KEY',
          )),
        ),
        testCase: const _i1.HttpRequestTestCase(
          id: 'S3VirtualHostDualstackAddressing',
          documentation:
              'S3 clients should support the explicit virtual host\naddressing style with Dualstack.',
          protocol: _i12.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restXml',
          ),
          authScheme: null,
          body: '',
          bodyMediaType: null,
          params: {'Bucket': 'mybucket'},
          vendorParamsShape: _i12.ShapeId(
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
  _i7.test(
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
        specifiedType: const FullType(_i8.AwsConfig),
      ) as _i8.AwsConfig);
      final s3ClientConfig = _i9.S3ClientConfig(
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
            _i5.S3AddressingStyle.path,
        signerConfiguration: _i10.S3ServiceConfiguration(
          signPayload: false,
          chunked: false,
        ),
      );
      await _i1.httpRequestTest(
        operation: _i11.ListObjectsV2Operation(
          region: config.scopedConfig?.client?.region ?? 'us-east-1',
          baseUri: Uri.parse('https://s3.us-west-2.amazonaws.com'),
          s3ClientConfig: s3ClientConfig,
          credentialsProvider:
              const _i10.AWSCredentialsProvider(_i10.AWSCredentials(
            'DUMMY-ACCESS-KEY-ID',
            'DUMMY-SECRET-ACCESS-KEY',
          )),
        ),
        testCase: const _i1.HttpRequestTestCase(
          id: 'S3VirtualHostAccelerateAddressing',
          documentation:
              'S3 clients should support the explicit virtual host\naddressing style with S3 Accelerate.',
          protocol: _i12.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restXml',
          ),
          authScheme: null,
          body: '',
          bodyMediaType: null,
          params: {'Bucket': 'mybucket'},
          vendorParamsShape: _i12.ShapeId(
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
  _i7.test(
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
        specifiedType: const FullType(_i8.AwsConfig),
      ) as _i8.AwsConfig);
      final s3ClientConfig = _i9.S3ClientConfig(
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
            _i5.S3AddressingStyle.path,
        signerConfiguration: _i10.S3ServiceConfiguration(
          signPayload: false,
          chunked: false,
        ),
      );
      await _i1.httpRequestTest(
        operation: _i11.ListObjectsV2Operation(
          region: config.scopedConfig?.client?.region ?? 'us-east-1',
          baseUri: Uri.parse('https://s3.us-west-2.amazonaws.com'),
          s3ClientConfig: s3ClientConfig,
          credentialsProvider:
              const _i10.AWSCredentialsProvider(_i10.AWSCredentials(
            'DUMMY-ACCESS-KEY-ID',
            'DUMMY-SECRET-ACCESS-KEY',
          )),
        ),
        testCase: const _i1.HttpRequestTestCase(
          id: 'S3VirtualHostDualstackAccelerateAddressing',
          documentation:
              'S3 clients should support the explicit virtual host\naddressing style with Dualstack and S3 Accelerate.',
          protocol: _i12.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restXml',
          ),
          authScheme: null,
          body: '',
          bodyMediaType: null,
          params: {'Bucket': 'mybucket'},
          vendorParamsShape: _i12.ShapeId(
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
  _i7.test(
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
        specifiedType: const FullType(_i8.AwsConfig),
      ) as _i8.AwsConfig);
      final s3ClientConfig = _i9.S3ClientConfig(
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
            _i5.S3AddressingStyle.path,
        signerConfiguration: _i10.S3ServiceConfiguration(
          signPayload: false,
          chunked: false,
        ),
      );
      await _i1.httpRequestTest(
        operation: _i11.ListObjectsV2Operation(
          region: config.scopedConfig?.client?.region ?? 'us-east-1',
          baseUri: Uri.parse('https://s3.us-west-2.amazonaws.com'),
          s3ClientConfig: s3ClientConfig,
          credentialsProvider:
              const _i10.AWSCredentialsProvider(_i10.AWSCredentials(
            'DUMMY-ACCESS-KEY-ID',
            'DUMMY-SECRET-ACCESS-KEY',
          )),
        ),
        testCase: const _i1.HttpRequestTestCase(
          id: 'S3OperationAddressingPreferred',
          documentation:
              'S3 clients should resolve to the addressing style of the\noperation if defined on both the client and operation.',
          protocol: _i12.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restXml',
          ),
          authScheme: null,
          body: '',
          bodyMediaType: null,
          params: {'Bucket': 'mybucket'},
          vendorParamsShape: _i12.ShapeId(
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
    extends _i12.StructuredSmithySerializer<_i13.ListObjectsV2Request> {
  const ListObjectsV2RequestRestXmlSerializer() : super('ListObjectsV2Request');

  @override
  Iterable<Type> get types => const [_i13.ListObjectsV2Request];
  @override
  Iterable<_i12.ShapeId> get supportedProtocols => const [
        _i12.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  _i13.ListObjectsV2Request deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i13.ListObjectsV2RequestBuilder();
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
            specifiedType: const FullType(_i2.EncodingType),
          ) as _i2.EncodingType);
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
            specifiedType: const FullType(_i3.RequestPayer),
          ) as _i3.RequestPayer);
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
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}

class ListObjectsV2OutputRestXmlSerializer
    extends _i12.StructuredSmithySerializer<_i14.ListObjectsV2Output> {
  const ListObjectsV2OutputRestXmlSerializer() : super('ListObjectsV2Output');

  @override
  Iterable<Type> get types => const [_i14.ListObjectsV2Output];
  @override
  Iterable<_i12.ShapeId> get supportedProtocols => const [
        _i12.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  _i14.ListObjectsV2Output deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i14.ListObjectsV2OutputBuilder();
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
              _i15.BuiltList,
              [FullType(_i16.S3Object)],
            ),
          ) as _i15.BuiltList<_i16.S3Object>));
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
              _i15.BuiltList,
              [FullType(_i17.CommonPrefix)],
            ),
          ) as _i15.BuiltList<_i17.CommonPrefix>));
        case 'EncodingType':
          result.encodingType = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.EncodingType),
          ) as _i2.EncodingType);
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
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}

class ObjectRestXmlSerializer
    extends _i12.StructuredSmithySerializer<_i16.S3Object> {
  const ObjectRestXmlSerializer() : super('Object');

  @override
  Iterable<Type> get types => const [_i16.S3Object];
  @override
  Iterable<_i12.ShapeId> get supportedProtocols => const [
        _i12.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  _i16.S3Object deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i16.S3ObjectBuilder();
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
              _i12.TimestampSerializer.epochSeconds.deserialize(
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
            specifiedType: const FullType(_i6.ObjectStorageClass),
          ) as _i6.ObjectStorageClass);
        case 'Owner':
          result.owner.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i18.Owner),
          ) as _i18.Owner));
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

class OwnerRestXmlSerializer
    extends _i12.StructuredSmithySerializer<_i18.Owner> {
  const OwnerRestXmlSerializer() : super('Owner');

  @override
  Iterable<Type> get types => const [_i18.Owner];
  @override
  Iterable<_i12.ShapeId> get supportedProtocols => const [
        _i12.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  _i18.Owner deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i18.OwnerBuilder();
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
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}

class CommonPrefixRestXmlSerializer
    extends _i12.StructuredSmithySerializer<_i17.CommonPrefix> {
  const CommonPrefixRestXmlSerializer() : super('CommonPrefix');

  @override
  Iterable<Type> get types => const [_i17.CommonPrefix];
  @override
  Iterable<_i12.ShapeId> get supportedProtocols => const [
        _i12.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  _i17.CommonPrefix deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i17.CommonPrefixBuilder();
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
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}

class NoSuchBucketRestXmlSerializer
    extends _i12.StructuredSmithySerializer<_i19.NoSuchBucket> {
  const NoSuchBucketRestXmlSerializer() : super('NoSuchBucket');

  @override
  Iterable<Type> get types => const [_i19.NoSuchBucket];
  @override
  Iterable<_i12.ShapeId> get supportedProtocols => const [
        _i12.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  _i19.NoSuchBucket deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _i19.NoSuchBucketBuilder().build();
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

class AwsConfigSerializer
    extends _i12.StructuredSmithySerializer<_i8.AwsConfig> {
  const AwsConfigSerializer() : super('AwsConfig');

  @override
  Iterable<Type> get types => const [_i8.AwsConfig];
  @override
  Iterable<_i12.ShapeId> get supportedProtocols => const [
        _i12.ShapeId(
          namespace: 'smithy.dart',
          shape: 'genericProtocol',
        )
      ];
  @override
  _i8.AwsConfig deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i8.AwsConfigBuilder();
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
            specifiedType: const FullType(_i20.ScopedConfig),
          ) as _i20.ScopedConfig));
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

class ScopedConfigSerializer
    extends _i12.StructuredSmithySerializer<_i20.ScopedConfig> {
  const ScopedConfigSerializer() : super('ScopedConfig');

  @override
  Iterable<Type> get types => const [_i20.ScopedConfig];
  @override
  Iterable<_i12.ShapeId> get supportedProtocols => const [
        _i12.ShapeId(
          namespace: 'smithy.dart',
          shape: 'genericProtocol',
        )
      ];
  @override
  _i20.ScopedConfig deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i20.ScopedConfigBuilder();
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
            specifiedType: const FullType(_i21.EnvironmentConfig),
          ) as _i21.EnvironmentConfig));
        case 'configFile':
          result.configFile.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i15.BuiltMap,
              [
                FullType(String),
                FullType(_i22.FileConfigSettings),
              ],
            ),
          ) as _i15.BuiltMap<String, _i22.FileConfigSettings>));
        case 'credentialsFile':
          result.credentialsFile.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i15.BuiltMap,
              [
                FullType(String),
                FullType(_i22.FileConfigSettings),
              ],
            ),
          ) as _i15.BuiltMap<String, _i22.FileConfigSettings>));
        case 'client':
          result.client.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i23.ClientConfig),
          ) as _i23.ClientConfig));
        case 'operation':
          result.operation.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i24.OperationConfig),
          ) as _i24.OperationConfig));
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

class EnvironmentConfigSerializer
    extends _i12.StructuredSmithySerializer<_i21.EnvironmentConfig> {
  const EnvironmentConfigSerializer() : super('EnvironmentConfig');

  @override
  Iterable<Type> get types => const [_i21.EnvironmentConfig];
  @override
  Iterable<_i12.ShapeId> get supportedProtocols => const [
        _i12.ShapeId(
          namespace: 'smithy.dart',
          shape: 'genericProtocol',
        )
      ];
  @override
  _i21.EnvironmentConfig deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i21.EnvironmentConfigBuilder();
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
            specifiedType: const FullType(_i4.RetryMode),
          ) as _i4.RetryMode);
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
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}

class FileConfigSettingsSerializer
    extends _i12.StructuredSmithySerializer<_i22.FileConfigSettings> {
  const FileConfigSettingsSerializer() : super('FileConfigSettings');

  @override
  Iterable<Type> get types => const [_i22.FileConfigSettings];
  @override
  Iterable<_i12.ShapeId> get supportedProtocols => const [
        _i12.ShapeId(
          namespace: 'smithy.dart',
          shape: 'genericProtocol',
        )
      ];
  @override
  _i22.FileConfigSettings deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i22.FileConfigSettingsBuilder();
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
            specifiedType: const FullType(_i25.S3Config),
          ) as _i25.S3Config));
        case 'retry_mode':
          result.retryMode = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i4.RetryMode),
          ) as _i4.RetryMode);
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
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}

class S3ConfigSerializer
    extends _i12.StructuredSmithySerializer<_i25.S3Config> {
  const S3ConfigSerializer() : super('S3Config');

  @override
  Iterable<Type> get types => const [_i25.S3Config];
  @override
  Iterable<_i12.ShapeId> get supportedProtocols => const [
        _i12.ShapeId(
          namespace: 'smithy.dart',
          shape: 'genericProtocol',
        )
      ];
  @override
  _i25.S3Config deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i25.S3ConfigBuilder();
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
            specifiedType: const FullType(_i5.S3AddressingStyle),
          ) as _i5.S3AddressingStyle);
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
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}

class ClientConfigSerializer
    extends _i12.StructuredSmithySerializer<_i23.ClientConfig> {
  const ClientConfigSerializer() : super('ClientConfig');

  @override
  Iterable<Type> get types => const [_i23.ClientConfig];
  @override
  Iterable<_i12.ShapeId> get supportedProtocols => const [
        _i12.ShapeId(
          namespace: 'smithy.dart',
          shape: 'genericProtocol',
        )
      ];
  @override
  _i23.ClientConfig deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i23.ClientConfigBuilder();
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
            specifiedType: const FullType(_i25.S3Config),
          ) as _i25.S3Config));
        case 'retry_config':
          result.retryConfig.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i26.RetryConfig),
          ) as _i26.RetryConfig));
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
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}

class RetryConfigSerializer
    extends _i12.StructuredSmithySerializer<_i26.RetryConfig> {
  const RetryConfigSerializer() : super('RetryConfig');

  @override
  Iterable<Type> get types => const [_i26.RetryConfig];
  @override
  Iterable<_i12.ShapeId> get supportedProtocols => const [
        _i12.ShapeId(
          namespace: 'smithy.dart',
          shape: 'genericProtocol',
        )
      ];
  @override
  _i26.RetryConfig deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i26.RetryConfigBuilder();
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
            specifiedType: const FullType(_i4.RetryMode),
          ) as _i4.RetryMode);
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
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}

class OperationConfigSerializer
    extends _i12.StructuredSmithySerializer<_i24.OperationConfig> {
  const OperationConfigSerializer() : super('OperationConfig');

  @override
  Iterable<Type> get types => const [_i24.OperationConfig];
  @override
  Iterable<_i12.ShapeId> get supportedProtocols => const [
        _i12.ShapeId(
          namespace: 'smithy.dart',
          shape: 'genericProtocol',
        )
      ];
  @override
  _i24.OperationConfig deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i24.OperationConfigBuilder();
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
            specifiedType: const FullType(_i25.S3Config),
          ) as _i25.S3Config));
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
