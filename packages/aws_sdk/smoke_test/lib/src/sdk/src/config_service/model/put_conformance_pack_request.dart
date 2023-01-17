// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.config_service.model.put_conformance_pack_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i5;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/config_service/model/conformance_pack_input_parameter.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/config_service/model/template_ssm_document_details.dart'
    as _i4;

part 'put_conformance_pack_request.g.dart';

abstract class PutConformancePackRequest
    with
        _i1.HttpInput<PutConformancePackRequest>,
        _i2.AWSEquatable<PutConformancePackRequest>
    implements
        Built<PutConformancePackRequest, PutConformancePackRequestBuilder> {
  factory PutConformancePackRequest({
    List<_i3.ConformancePackInputParameter>? conformancePackInputParameters,
    required String conformancePackName,
    String? deliveryS3Bucket,
    String? deliveryS3KeyPrefix,
    String? templateBody,
    String? templateS3Uri,
    _i4.TemplateSsmDocumentDetails? templateSsmDocumentDetails,
  }) {
    return _$PutConformancePackRequest._(
      conformancePackInputParameters: conformancePackInputParameters == null
          ? null
          : _i5.BuiltList(conformancePackInputParameters),
      conformancePackName: conformancePackName,
      deliveryS3Bucket: deliveryS3Bucket,
      deliveryS3KeyPrefix: deliveryS3KeyPrefix,
      templateBody: templateBody,
      templateS3Uri: templateS3Uri,
      templateSsmDocumentDetails: templateSsmDocumentDetails,
    );
  }

  factory PutConformancePackRequest.build(
          [void Function(PutConformancePackRequestBuilder) updates]) =
      _$PutConformancePackRequest;

  const PutConformancePackRequest._();

  factory PutConformancePackRequest.fromRequest(
    PutConformancePackRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    PutConformancePackRequestAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PutConformancePackRequestBuilder b) {}

  /// A list of `ConformancePackInputParameter` objects.
  _i5.BuiltList<_i3.ConformancePackInputParameter>?
      get conformancePackInputParameters;

  /// The unique name of the conformance pack you want to deploy.
  String get conformancePackName;

  /// The name of the Amazon S3 bucket where Config stores conformance pack templates.
  ///
  /// This field is optional.
  String? get deliveryS3Bucket;

  /// The prefix for the Amazon S3 bucket.
  ///
  /// This field is optional.
  String? get deliveryS3KeyPrefix;

  /// A string containing the full conformance pack template body. The structure containing the template body has a minimum length of 1 byte and a maximum length of 51,200 bytes.
  ///
  /// You can only use a YAML template with two resource types: Config rule (`AWS::Config::ConfigRule`) and remediation action (`AWS::Config::RemediationConfiguration`).
  String? get templateBody;

  /// The location of the file containing the template body (`s3://bucketname/prefix`). The uri must point to a conformance pack template (max size: 300 KB) that is located in an Amazon S3 bucket in the same region as the conformance pack.
  ///
  /// You must have access to read Amazon S3 bucket.
  String? get templateS3Uri;

  /// An object of type `TemplateSSMDocumentDetails`, which contains the name or the Amazon Resource Name (ARN) of the Amazon Web Services Systems Manager document (SSM document) and the version of the SSM document that is used to create a conformance pack.
  _i4.TemplateSsmDocumentDetails? get templateSsmDocumentDetails;
  @override
  PutConformancePackRequest getPayload() => this;
  @override
  List<Object?> get props => [
        conformancePackInputParameters,
        conformancePackName,
        deliveryS3Bucket,
        deliveryS3KeyPrefix,
        templateBody,
        templateS3Uri,
        templateSsmDocumentDetails,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PutConformancePackRequest');
    helper.add(
      'conformancePackInputParameters',
      conformancePackInputParameters,
    );
    helper.add(
      'conformancePackName',
      conformancePackName,
    );
    helper.add(
      'deliveryS3Bucket',
      deliveryS3Bucket,
    );
    helper.add(
      'deliveryS3KeyPrefix',
      deliveryS3KeyPrefix,
    );
    helper.add(
      'templateBody',
      templateBody,
    );
    helper.add(
      'templateS3Uri',
      templateS3Uri,
    );
    helper.add(
      'templateSsmDocumentDetails',
      templateSsmDocumentDetails,
    );
    return helper.toString();
  }
}

class PutConformancePackRequestAwsJson11Serializer
    extends _i1.StructuredSmithySerializer<PutConformancePackRequest> {
  const PutConformancePackRequestAwsJson11Serializer()
      : super('PutConformancePackRequest');

  @override
  Iterable<Type> get types => const [
        PutConformancePackRequest,
        _$PutConformancePackRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  PutConformancePackRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PutConformancePackRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'ConformancePackInputParameters':
          if (value != null) {
            result.conformancePackInputParameters
                .replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i5.BuiltList,
                [FullType(_i3.ConformancePackInputParameter)],
              ),
            ) as _i5.BuiltList<_i3.ConformancePackInputParameter>));
          }
          break;
        case 'ConformancePackName':
          result.conformancePackName = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'DeliveryS3Bucket':
          if (value != null) {
            result.deliveryS3Bucket = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'DeliveryS3KeyPrefix':
          if (value != null) {
            result.deliveryS3KeyPrefix = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'TemplateBody':
          if (value != null) {
            result.templateBody = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'TemplateS3Uri':
          if (value != null) {
            result.templateS3Uri = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'TemplateSSMDocumentDetails':
          if (value != null) {
            result.templateSsmDocumentDetails.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i4.TemplateSsmDocumentDetails),
            ) as _i4.TemplateSsmDocumentDetails));
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
    final payload = (object as PutConformancePackRequest);
    final result = <Object?>[
      'ConformancePackName',
      serializers.serialize(
        payload.conformancePackName,
        specifiedType: const FullType(String),
      ),
    ];
    if (payload.conformancePackInputParameters != null) {
      result
        ..add('ConformancePackInputParameters')
        ..add(serializers.serialize(
          payload.conformancePackInputParameters!,
          specifiedType: const FullType(
            _i5.BuiltList,
            [FullType(_i3.ConformancePackInputParameter)],
          ),
        ));
    }
    if (payload.deliveryS3Bucket != null) {
      result
        ..add('DeliveryS3Bucket')
        ..add(serializers.serialize(
          payload.deliveryS3Bucket!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.deliveryS3KeyPrefix != null) {
      result
        ..add('DeliveryS3KeyPrefix')
        ..add(serializers.serialize(
          payload.deliveryS3KeyPrefix!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.templateBody != null) {
      result
        ..add('TemplateBody')
        ..add(serializers.serialize(
          payload.templateBody!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.templateS3Uri != null) {
      result
        ..add('TemplateS3Uri')
        ..add(serializers.serialize(
          payload.templateS3Uri!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.templateSsmDocumentDetails != null) {
      result
        ..add('TemplateSSMDocumentDetails')
        ..add(serializers.serialize(
          payload.templateSsmDocumentDetails!,
          specifiedType: const FullType(_i4.TemplateSsmDocumentDetails),
        ));
    }
    return result;
  }
}
