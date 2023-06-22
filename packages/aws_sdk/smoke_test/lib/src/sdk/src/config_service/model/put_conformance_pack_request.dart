// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

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
    required String conformancePackName,
    String? templateS3Uri,
    String? templateBody,
    String? deliveryS3Bucket,
    String? deliveryS3KeyPrefix,
    List<_i3.ConformancePackInputParameter>? conformancePackInputParameters,
    _i4.TemplateSsmDocumentDetails? templateSsmDocumentDetails,
  }) {
    return _$PutConformancePackRequest._(
      conformancePackName: conformancePackName,
      templateS3Uri: templateS3Uri,
      templateBody: templateBody,
      deliveryS3Bucket: deliveryS3Bucket,
      deliveryS3KeyPrefix: deliveryS3KeyPrefix,
      conformancePackInputParameters: conformancePackInputParameters == null
          ? null
          : _i5.BuiltList(conformancePackInputParameters),
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

  static const List<_i1.SmithySerializer<PutConformancePackRequest>>
      serializers = [PutConformancePackRequestAwsJson11Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PutConformancePackRequestBuilder b) {}

  /// The unique name of the conformance pack you want to deploy.
  String get conformancePackName;

  /// The location of the file containing the template body (`s3://bucketname/prefix`). The uri must point to a conformance pack template (max size: 300 KB) that is located in an Amazon S3 bucket in the same Region as the conformance pack.
  ///
  /// You must have access to read Amazon S3 bucket.
  String? get templateS3Uri;

  /// A string containing the full conformance pack template body. The structure containing the template body has a minimum length of 1 byte and a maximum length of 51,200 bytes.
  ///
  /// You can use a YAML template with two resource types: Config rule (`AWS::Config::ConfigRule`) and remediation action (`AWS::Config::RemediationConfiguration`).
  String? get templateBody;

  /// The name of the Amazon S3 bucket where Config stores conformance pack templates.
  ///
  /// This field is optional.
  String? get deliveryS3Bucket;

  /// The prefix for the Amazon S3 bucket.
  ///
  /// This field is optional.
  String? get deliveryS3KeyPrefix;

  /// A list of `ConformancePackInputParameter` objects.
  _i5.BuiltList<_i3.ConformancePackInputParameter>?
      get conformancePackInputParameters;

  /// An object of type `TemplateSSMDocumentDetails`, which contains the name or the Amazon Resource Name (ARN) of the Amazon Web Services Systems Manager document (SSM document) and the version of the SSM document that is used to create a conformance pack.
  _i4.TemplateSsmDocumentDetails? get templateSsmDocumentDetails;
  @override
  PutConformancePackRequest getPayload() => this;
  @override
  List<Object?> get props => [
        conformancePackName,
        templateS3Uri,
        templateBody,
        deliveryS3Bucket,
        deliveryS3KeyPrefix,
        conformancePackInputParameters,
        templateSsmDocumentDetails,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PutConformancePackRequest')
      ..add(
        'conformancePackName',
        conformancePackName,
      )
      ..add(
        'templateS3Uri',
        templateS3Uri,
      )
      ..add(
        'templateBody',
        templateBody,
      )
      ..add(
        'deliveryS3Bucket',
        deliveryS3Bucket,
      )
      ..add(
        'deliveryS3KeyPrefix',
        deliveryS3KeyPrefix,
      )
      ..add(
        'conformancePackInputParameters',
        conformancePackInputParameters,
      )
      ..add(
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
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ConformancePackName':
          result.conformancePackName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'TemplateS3Uri':
          result.templateS3Uri = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'TemplateBody':
          result.templateBody = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'DeliveryS3Bucket':
          result.deliveryS3Bucket = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'DeliveryS3KeyPrefix':
          result.deliveryS3KeyPrefix = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ConformancePackInputParameters':
          result.conformancePackInputParameters
              .replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i5.BuiltList,
              [FullType(_i3.ConformancePackInputParameter)],
            ),
          ) as _i5.BuiltList<_i3.ConformancePackInputParameter>));
        case 'TemplateSSMDocumentDetails':
          result.templateSsmDocumentDetails.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i4.TemplateSsmDocumentDetails),
          ) as _i4.TemplateSsmDocumentDetails));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    PutConformancePackRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final PutConformancePackRequest(
      :conformancePackName,
      :templateS3Uri,
      :templateBody,
      :deliveryS3Bucket,
      :deliveryS3KeyPrefix,
      :conformancePackInputParameters,
      :templateSsmDocumentDetails
    ) = object;
    result$.addAll([
      'ConformancePackName',
      serializers.serialize(
        conformancePackName,
        specifiedType: const FullType(String),
      ),
    ]);
    if (templateS3Uri != null) {
      result$
        ..add('TemplateS3Uri')
        ..add(serializers.serialize(
          templateS3Uri,
          specifiedType: const FullType(String),
        ));
    }
    if (templateBody != null) {
      result$
        ..add('TemplateBody')
        ..add(serializers.serialize(
          templateBody,
          specifiedType: const FullType(String),
        ));
    }
    if (deliveryS3Bucket != null) {
      result$
        ..add('DeliveryS3Bucket')
        ..add(serializers.serialize(
          deliveryS3Bucket,
          specifiedType: const FullType(String),
        ));
    }
    if (deliveryS3KeyPrefix != null) {
      result$
        ..add('DeliveryS3KeyPrefix')
        ..add(serializers.serialize(
          deliveryS3KeyPrefix,
          specifiedType: const FullType(String),
        ));
    }
    if (conformancePackInputParameters != null) {
      result$
        ..add('ConformancePackInputParameters')
        ..add(serializers.serialize(
          conformancePackInputParameters,
          specifiedType: const FullType(
            _i5.BuiltList,
            [FullType(_i3.ConformancePackInputParameter)],
          ),
        ));
    }
    if (templateSsmDocumentDetails != null) {
      result$
        ..add('TemplateSSMDocumentDetails')
        ..add(serializers.serialize(
          templateSsmDocumentDetails,
          specifiedType: const FullType(_i4.TemplateSsmDocumentDetails),
        ));
    }
    return result$;
  }
}
