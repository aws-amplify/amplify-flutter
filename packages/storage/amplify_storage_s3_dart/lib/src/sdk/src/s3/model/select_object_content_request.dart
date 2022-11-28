// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library amplify_storage_s3_dart.s3.model.select_object_content_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/expression_type.dart'
    as _i3;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/input_serialization.dart'
    as _i4;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/output_serialization.dart'
    as _i5;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/request_progress.dart'
    as _i6;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/scan_range.dart'
    as _i7;
import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i8;
import 'package:smithy/smithy.dart' as _i1;

part 'select_object_content_request.g.dart';

/// Request to filter the contents of an Amazon S3 object based on a simple Structured Query Language (SQL) statement. In the request, along with the SQL expression, you must specify a data serialization format (JSON or CSV) of the object. Amazon S3 uses this to parse object data into records. It returns only records that match the specified SQL expression. You must also specify the data serialization format for the response. For more information, see [S3Select API Documentation](https://docs.aws.amazon.com/AmazonS3/latest/API/RESTObjectSELECTContent.html).
abstract class SelectObjectContentRequest
    with
        _i1.HttpInput<SelectObjectContentRequestPayload>,
        _i2.AWSEquatable<SelectObjectContentRequest>
    implements
        Built<SelectObjectContentRequest, SelectObjectContentRequestBuilder>,
        _i1.HasPayload<SelectObjectContentRequestPayload> {
  /// Request to filter the contents of an Amazon S3 object based on a simple Structured Query Language (SQL) statement. In the request, along with the SQL expression, you must specify a data serialization format (JSON or CSV) of the object. Amazon S3 uses this to parse object data into records. It returns only records that match the specified SQL expression. You must also specify the data serialization format for the response. For more information, see [S3Select API Documentation](https://docs.aws.amazon.com/AmazonS3/latest/API/RESTObjectSELECTContent.html).
  factory SelectObjectContentRequest({
    required String bucket,
    String? expectedBucketOwner,
    required String expression,
    required _i3.ExpressionType expressionType,
    required _i4.InputSerialization inputSerialization,
    required String key,
    required _i5.OutputSerialization outputSerialization,
    _i6.RequestProgress? requestProgress,
    _i7.ScanRange? scanRange,
    String? sseCustomerAlgorithm,
    String? sseCustomerKey,
    String? sseCustomerKeyMd5,
  }) {
    return _$SelectObjectContentRequest._(
      bucket: bucket,
      expectedBucketOwner: expectedBucketOwner,
      expression: expression,
      expressionType: expressionType,
      inputSerialization: inputSerialization,
      key: key,
      outputSerialization: outputSerialization,
      requestProgress: requestProgress,
      scanRange: scanRange,
      sseCustomerAlgorithm: sseCustomerAlgorithm,
      sseCustomerKey: sseCustomerKey,
      sseCustomerKeyMd5: sseCustomerKeyMd5,
    );
  }

  /// Request to filter the contents of an Amazon S3 object based on a simple Structured Query Language (SQL) statement. In the request, along with the SQL expression, you must specify a data serialization format (JSON or CSV) of the object. Amazon S3 uses this to parse object data into records. It returns only records that match the specified SQL expression. You must also specify the data serialization format for the response. For more information, see [S3Select API Documentation](https://docs.aws.amazon.com/AmazonS3/latest/API/RESTObjectSELECTContent.html).
  factory SelectObjectContentRequest.build(
          [void Function(SelectObjectContentRequestBuilder) updates]) =
      _$SelectObjectContentRequest;

  const SelectObjectContentRequest._();

  factory SelectObjectContentRequest.fromRequest(
    SelectObjectContentRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      SelectObjectContentRequest.build((b) {
        b.expression = payload.expression;
        b.expressionType = payload.expressionType;
        b.inputSerialization.replace(payload.inputSerialization);
        b.outputSerialization.replace(payload.outputSerialization);
        if (payload.requestProgress != null) {
          b.requestProgress.replace(payload.requestProgress!);
        }
        if (payload.scanRange != null) {
          b.scanRange.replace(payload.scanRange!);
        }
        if (request
                .headers['x-amz-server-side-encryption-customer-algorithm'] !=
            null) {
          b.sseCustomerAlgorithm = request
              .headers['x-amz-server-side-encryption-customer-algorithm']!;
        }
        if (request.headers['x-amz-server-side-encryption-customer-key'] !=
            null) {
          b.sseCustomerKey =
              request.headers['x-amz-server-side-encryption-customer-key']!;
        }
        if (request.headers['x-amz-server-side-encryption-customer-key-MD5'] !=
            null) {
          b.sseCustomerKeyMd5 =
              request.headers['x-amz-server-side-encryption-customer-key-MD5']!;
        }
        if (request.headers['x-amz-expected-bucket-owner'] != null) {
          b.expectedBucketOwner =
              request.headers['x-amz-expected-bucket-owner']!;
        }
        if (labels['bucket'] != null) {
          b.bucket = labels['bucket']!;
        }
        if (labels['key'] != null) {
          b.key = labels['key']!;
        }
      });

  static const List<_i1.SmithySerializer> serializers = [
    SelectObjectContentRequestRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(SelectObjectContentRequestBuilder b) {}

  /// The S3 bucket.
  String get bucket;

  /// The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code `403 Forbidden` (access denied).
  String? get expectedBucketOwner;

  /// The expression that is used to query the object.
  String get expression;

  /// The type of the provided expression (for example, SQL).
  _i3.ExpressionType get expressionType;

  /// Describes the format of the data in the object that is being queried.
  _i4.InputSerialization get inputSerialization;

  /// The object key.
  String get key;

  /// Describes the format of the data that you want Amazon S3 to return in response.
  _i5.OutputSerialization get outputSerialization;

  /// Specifies if periodic request progress information should be enabled.
  _i6.RequestProgress? get requestProgress;

  /// Specifies the byte range of the object to get the records from. A record is processed when its first byte is contained by the range. This parameter is optional, but when specified, it must not be empty. See RFC 2616, Section 14.35.1 about how to specify the start and end of the range.
  ///
  /// `ScanRange`may be used in the following ways:
  ///
  /// *   `50100` \- process only the records starting between the bytes 50 and 100 (inclusive, counting from zero)
  ///
  /// *   `50` \- process only the records starting after the byte 50
  ///
  /// *   `50` \- process only the records within the last 50 bytes of the file.
  _i7.ScanRange? get scanRange;

  /// The server-side encryption (SSE) algorithm used to encrypt the object. This parameter is needed only when the object was created using a checksum algorithm. For more information, see [Protecting data using SSE-C keys](https://docs.aws.amazon.com/AmazonS3/latest/dev/ServerSideEncryptionCustomerKeys.html) in the _Amazon S3 User Guide_.
  String? get sseCustomerAlgorithm;

  /// The server-side encryption (SSE) customer managed key. This parameter is needed only when the object was created using a checksum algorithm. For more information, see [Protecting data using SSE-C keys](https://docs.aws.amazon.com/AmazonS3/latest/dev/ServerSideEncryptionCustomerKeys.html) in the _Amazon S3 User Guide_.
  String? get sseCustomerKey;

  /// The MD5 server-side encryption (SSE) customer managed key. This parameter is needed only when the object was created using a checksum algorithm. For more information, see [Protecting data using SSE-C keys](https://docs.aws.amazon.com/AmazonS3/latest/dev/ServerSideEncryptionCustomerKeys.html) in the _Amazon S3 User Guide_.
  String? get sseCustomerKeyMd5;
  @override
  String labelFor(String key) {
    switch (key) {
      case 'Bucket':
        return bucket;
      case 'Key':
        return this.key;
    }
    throw _i1.MissingLabelException(
      this,
      key,
    );
  }

  @override
  SelectObjectContentRequestPayload getPayload() =>
      SelectObjectContentRequestPayload((b) {
        b.expression = expression;
        b.expressionType = expressionType;
        b.inputSerialization.replace(inputSerialization);
        b.outputSerialization.replace(outputSerialization);
        if (requestProgress != null) {
          b.requestProgress.replace(requestProgress!);
        }
        if (scanRange != null) {
          b.scanRange.replace(scanRange!);
        }
      });
  @override
  List<Object?> get props => [
        bucket,
        expectedBucketOwner,
        expression,
        expressionType,
        inputSerialization,
        key,
        outputSerialization,
        requestProgress,
        scanRange,
        sseCustomerAlgorithm,
        sseCustomerKey,
        sseCustomerKeyMd5,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('SelectObjectContentRequest');
    helper.add(
      'bucket',
      bucket,
    );
    helper.add(
      'expectedBucketOwner',
      expectedBucketOwner,
    );
    helper.add(
      'expression',
      expression,
    );
    helper.add(
      'expressionType',
      expressionType,
    );
    helper.add(
      'inputSerialization',
      inputSerialization,
    );
    helper.add(
      'key',
      key,
    );
    helper.add(
      'outputSerialization',
      outputSerialization,
    );
    helper.add(
      'requestProgress',
      requestProgress,
    );
    helper.add(
      'scanRange',
      scanRange,
    );
    helper.add(
      'sseCustomerAlgorithm',
      sseCustomerAlgorithm,
    );
    helper.add(
      'sseCustomerKey',
      '***SENSITIVE***',
    );
    helper.add(
      'sseCustomerKeyMd5',
      sseCustomerKeyMd5,
    );
    return helper.toString();
  }
}

@_i8.internal
abstract class SelectObjectContentRequestPayload
    with
        _i2.AWSEquatable<SelectObjectContentRequestPayload>
    implements
        Built<SelectObjectContentRequestPayload,
            SelectObjectContentRequestPayloadBuilder> {
  factory SelectObjectContentRequestPayload(
          [void Function(SelectObjectContentRequestPayloadBuilder) updates]) =
      _$SelectObjectContentRequestPayload;

  const SelectObjectContentRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(SelectObjectContentRequestPayloadBuilder b) {}

  /// The expression that is used to query the object.
  String get expression;

  /// The type of the provided expression (for example, SQL).
  _i3.ExpressionType get expressionType;

  /// Describes the format of the data in the object that is being queried.
  _i4.InputSerialization get inputSerialization;

  /// Describes the format of the data that you want Amazon S3 to return in response.
  _i5.OutputSerialization get outputSerialization;

  /// Specifies if periodic request progress information should be enabled.
  _i6.RequestProgress? get requestProgress;

  /// Specifies the byte range of the object to get the records from. A record is processed when its first byte is contained by the range. This parameter is optional, but when specified, it must not be empty. See RFC 2616, Section 14.35.1 about how to specify the start and end of the range.
  ///
  /// `ScanRange`may be used in the following ways:
  ///
  /// *   `50100` \- process only the records starting between the bytes 50 and 100 (inclusive, counting from zero)
  ///
  /// *   `50` \- process only the records starting after the byte 50
  ///
  /// *   `50` \- process only the records within the last 50 bytes of the file.
  _i7.ScanRange? get scanRange;
  @override
  List<Object?> get props => [
        expression,
        expressionType,
        inputSerialization,
        outputSerialization,
        requestProgress,
        scanRange,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('SelectObjectContentRequestPayload');
    helper.add(
      'expression',
      expression,
    );
    helper.add(
      'expressionType',
      expressionType,
    );
    helper.add(
      'inputSerialization',
      inputSerialization,
    );
    helper.add(
      'outputSerialization',
      outputSerialization,
    );
    helper.add(
      'requestProgress',
      requestProgress,
    );
    helper.add(
      'scanRange',
      scanRange,
    );
    return helper.toString();
  }
}

class SelectObjectContentRequestRestXmlSerializer
    extends _i1.StructuredSmithySerializer<SelectObjectContentRequestPayload> {
  const SelectObjectContentRequestRestXmlSerializer()
      : super('SelectObjectContentRequest');

  @override
  Iterable<Type> get types => const [
        SelectObjectContentRequest,
        _$SelectObjectContentRequest,
        SelectObjectContentRequestPayload,
        _$SelectObjectContentRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  SelectObjectContentRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SelectObjectContentRequestPayloadBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'Expression':
          result.expression = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'ExpressionType':
          result.expressionType = (serializers.deserialize(
            value!,
            specifiedType: const FullType(_i3.ExpressionType),
          ) as _i3.ExpressionType);
          break;
        case 'InputSerialization':
          result.inputSerialization.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i4.InputSerialization),
          ) as _i4.InputSerialization));
          break;
        case 'OutputSerialization':
          result.outputSerialization.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i5.OutputSerialization),
          ) as _i5.OutputSerialization));
          break;
        case 'RequestProgress':
          if (value != null) {
            result.requestProgress.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i6.RequestProgress),
            ) as _i6.RequestProgress));
          }
          break;
        case 'ScanRange':
          if (value != null) {
            result.scanRange.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i7.ScanRange),
            ) as _i7.ScanRange));
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
    final payload = object is SelectObjectContentRequest
        ? object.getPayload()
        : (object as SelectObjectContentRequestPayload);
    final result = <Object?>[
      const _i1.XmlElementName(
        'SelectObjectContentRequest',
        _i1.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    result
      ..add(const _i1.XmlElementName('Expression'))
      ..add(serializers.serialize(
        payload.expression,
        specifiedType: const FullType(String),
      ));
    result
      ..add(const _i1.XmlElementName('ExpressionType'))
      ..add(serializers.serialize(
        payload.expressionType,
        specifiedType: const FullType.nullable(_i3.ExpressionType),
      ));
    result
      ..add(const _i1.XmlElementName('InputSerialization'))
      ..add(serializers.serialize(
        payload.inputSerialization,
        specifiedType: const FullType(_i4.InputSerialization),
      ));
    result
      ..add(const _i1.XmlElementName('OutputSerialization'))
      ..add(serializers.serialize(
        payload.outputSerialization,
        specifiedType: const FullType(_i5.OutputSerialization),
      ));
    if (payload.requestProgress != null) {
      result
        ..add(const _i1.XmlElementName('RequestProgress'))
        ..add(serializers.serialize(
          payload.requestProgress!,
          specifiedType: const FullType(_i6.RequestProgress),
        ));
    }
    if (payload.scanRange != null) {
      result
        ..add(const _i1.XmlElementName('ScanRange'))
        ..add(serializers.serialize(
          payload.scanRange!,
          specifiedType: const FullType(_i7.ScanRange),
        ));
    }
    return result;
  }
}
