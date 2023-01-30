// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.config_service.model.conformance_pack_detail; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;
import 'package:smoke_test/src/sdk/src/config_service/model/conformance_pack_input_parameter.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/config_service/model/template_ssm_document_details.dart'
    as _i3;

part 'conformance_pack_detail.g.dart';

/// Returns details of a conformance pack. A conformance pack is a collection of Config rules and remediation actions that can be easily deployed in an account and a region.
abstract class ConformancePackDetail
    with _i1.AWSEquatable<ConformancePackDetail>
    implements Built<ConformancePackDetail, ConformancePackDetailBuilder> {
  /// Returns details of a conformance pack. A conformance pack is a collection of Config rules and remediation actions that can be easily deployed in an account and a region.
  factory ConformancePackDetail({
    required String conformancePackArn,
    required String conformancePackId,
    List<_i2.ConformancePackInputParameter>? conformancePackInputParameters,
    required String conformancePackName,
    String? createdBy,
    String? deliveryS3Bucket,
    String? deliveryS3KeyPrefix,
    DateTime? lastUpdateRequestedTime,
    _i3.TemplateSsmDocumentDetails? templateSsmDocumentDetails,
  }) {
    return _$ConformancePackDetail._(
      conformancePackArn: conformancePackArn,
      conformancePackId: conformancePackId,
      conformancePackInputParameters: conformancePackInputParameters == null
          ? null
          : _i4.BuiltList(conformancePackInputParameters),
      conformancePackName: conformancePackName,
      createdBy: createdBy,
      deliveryS3Bucket: deliveryS3Bucket,
      deliveryS3KeyPrefix: deliveryS3KeyPrefix,
      lastUpdateRequestedTime: lastUpdateRequestedTime,
      templateSsmDocumentDetails: templateSsmDocumentDetails,
    );
  }

  /// Returns details of a conformance pack. A conformance pack is a collection of Config rules and remediation actions that can be easily deployed in an account and a region.
  factory ConformancePackDetail.build(
          [void Function(ConformancePackDetailBuilder) updates]) =
      _$ConformancePackDetail;

  const ConformancePackDetail._();

  static const List<_i5.SmithySerializer> serializers = [
    ConformancePackDetailAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ConformancePackDetailBuilder b) {}

  /// Amazon Resource Name (ARN) of the conformance pack.
  String get conformancePackArn;

  /// ID of the conformance pack.
  String get conformancePackId;

  /// A list of `ConformancePackInputParameter` objects.
  _i4.BuiltList<_i2.ConformancePackInputParameter>?
      get conformancePackInputParameters;

  /// Name of the conformance pack.
  String get conformancePackName;

  /// The Amazon Web Services service that created the conformance pack.
  String? get createdBy;

  /// The name of the Amazon S3 bucket where Config stores conformance pack templates.
  ///
  /// This field is optional.
  String? get deliveryS3Bucket;

  /// The prefix for the Amazon S3 bucket.
  ///
  /// This field is optional.
  String? get deliveryS3KeyPrefix;

  /// The last time a conformation pack update was requested.
  DateTime? get lastUpdateRequestedTime;

  /// An object that contains the name or Amazon Resource Name (ARN) of the Amazon Web Services Systems Manager document (SSM document) and the version of the SSM document that is used to create a conformance pack.
  _i3.TemplateSsmDocumentDetails? get templateSsmDocumentDetails;
  @override
  List<Object?> get props => [
        conformancePackArn,
        conformancePackId,
        conformancePackInputParameters,
        conformancePackName,
        createdBy,
        deliveryS3Bucket,
        deliveryS3KeyPrefix,
        lastUpdateRequestedTime,
        templateSsmDocumentDetails,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ConformancePackDetail');
    helper.add(
      'conformancePackArn',
      conformancePackArn,
    );
    helper.add(
      'conformancePackId',
      conformancePackId,
    );
    helper.add(
      'conformancePackInputParameters',
      conformancePackInputParameters,
    );
    helper.add(
      'conformancePackName',
      conformancePackName,
    );
    helper.add(
      'createdBy',
      createdBy,
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
      'lastUpdateRequestedTime',
      lastUpdateRequestedTime,
    );
    helper.add(
      'templateSsmDocumentDetails',
      templateSsmDocumentDetails,
    );
    return helper.toString();
  }
}

class ConformancePackDetailAwsJson11Serializer
    extends _i5.StructuredSmithySerializer<ConformancePackDetail> {
  const ConformancePackDetailAwsJson11Serializer()
      : super('ConformancePackDetail');

  @override
  Iterable<Type> get types => const [
        ConformancePackDetail,
        _$ConformancePackDetail,
      ];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  ConformancePackDetail deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConformancePackDetailBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'ConformancePackArn':
          result.conformancePackArn = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'ConformancePackId':
          result.conformancePackId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'ConformancePackInputParameters':
          if (value != null) {
            result.conformancePackInputParameters
                .replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i4.BuiltList,
                [FullType(_i2.ConformancePackInputParameter)],
              ),
            ) as _i4.BuiltList<_i2.ConformancePackInputParameter>));
          }
          break;
        case 'ConformancePackName':
          result.conformancePackName = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'CreatedBy':
          if (value != null) {
            result.createdBy = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
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
        case 'LastUpdateRequestedTime':
          if (value != null) {
            result.lastUpdateRequestedTime = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'TemplateSSMDocumentDetails':
          if (value != null) {
            result.templateSsmDocumentDetails.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.TemplateSsmDocumentDetails),
            ) as _i3.TemplateSsmDocumentDetails));
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
    final payload = (object as ConformancePackDetail);
    final result = <Object?>[
      'ConformancePackArn',
      serializers.serialize(
        payload.conformancePackArn,
        specifiedType: const FullType(String),
      ),
      'ConformancePackId',
      serializers.serialize(
        payload.conformancePackId,
        specifiedType: const FullType(String),
      ),
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
            _i4.BuiltList,
            [FullType(_i2.ConformancePackInputParameter)],
          ),
        ));
    }
    if (payload.createdBy != null) {
      result
        ..add('CreatedBy')
        ..add(serializers.serialize(
          payload.createdBy!,
          specifiedType: const FullType(String),
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
    if (payload.lastUpdateRequestedTime != null) {
      result
        ..add('LastUpdateRequestedTime')
        ..add(serializers.serialize(
          payload.lastUpdateRequestedTime!,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (payload.templateSsmDocumentDetails != null) {
      result
        ..add('TemplateSSMDocumentDetails')
        ..add(serializers.serialize(
          payload.templateSsmDocumentDetails!,
          specifiedType: const FullType(_i3.TemplateSsmDocumentDetails),
        ));
    }
    return result;
  }
}
