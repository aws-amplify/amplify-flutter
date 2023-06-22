// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

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
    required String conformancePackName,
    required String conformancePackArn,
    required String conformancePackId,
    String? deliveryS3Bucket,
    String? deliveryS3KeyPrefix,
    List<_i2.ConformancePackInputParameter>? conformancePackInputParameters,
    DateTime? lastUpdateRequestedTime,
    String? createdBy,
    _i3.TemplateSsmDocumentDetails? templateSsmDocumentDetails,
  }) {
    return _$ConformancePackDetail._(
      conformancePackName: conformancePackName,
      conformancePackArn: conformancePackArn,
      conformancePackId: conformancePackId,
      deliveryS3Bucket: deliveryS3Bucket,
      deliveryS3KeyPrefix: deliveryS3KeyPrefix,
      conformancePackInputParameters: conformancePackInputParameters == null
          ? null
          : _i4.BuiltList(conformancePackInputParameters),
      lastUpdateRequestedTime: lastUpdateRequestedTime,
      createdBy: createdBy,
      templateSsmDocumentDetails: templateSsmDocumentDetails,
    );
  }

  /// Returns details of a conformance pack. A conformance pack is a collection of Config rules and remediation actions that can be easily deployed in an account and a region.
  factory ConformancePackDetail.build(
          [void Function(ConformancePackDetailBuilder) updates]) =
      _$ConformancePackDetail;

  const ConformancePackDetail._();

  static const List<_i5.SmithySerializer<ConformancePackDetail>> serializers = [
    ConformancePackDetailAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ConformancePackDetailBuilder b) {}

  /// Name of the conformance pack.
  String get conformancePackName;

  /// Amazon Resource Name (ARN) of the conformance pack.
  String get conformancePackArn;

  /// ID of the conformance pack.
  String get conformancePackId;

  /// The name of the Amazon S3 bucket where Config stores conformance pack templates.
  ///
  /// This field is optional.
  String? get deliveryS3Bucket;

  /// The prefix for the Amazon S3 bucket.
  ///
  /// This field is optional.
  String? get deliveryS3KeyPrefix;

  /// A list of `ConformancePackInputParameter` objects.
  _i4.BuiltList<_i2.ConformancePackInputParameter>?
      get conformancePackInputParameters;

  /// The last time a conformation pack update was requested.
  DateTime? get lastUpdateRequestedTime;

  /// The Amazon Web Services service that created the conformance pack.
  String? get createdBy;

  /// An object that contains the name or Amazon Resource Name (ARN) of the Amazon Web Services Systems Manager document (SSM document) and the version of the SSM document that is used to create a conformance pack.
  _i3.TemplateSsmDocumentDetails? get templateSsmDocumentDetails;
  @override
  List<Object?> get props => [
        conformancePackName,
        conformancePackArn,
        conformancePackId,
        deliveryS3Bucket,
        deliveryS3KeyPrefix,
        conformancePackInputParameters,
        lastUpdateRequestedTime,
        createdBy,
        templateSsmDocumentDetails,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ConformancePackDetail')
      ..add(
        'conformancePackName',
        conformancePackName,
      )
      ..add(
        'conformancePackArn',
        conformancePackArn,
      )
      ..add(
        'conformancePackId',
        conformancePackId,
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
        'lastUpdateRequestedTime',
        lastUpdateRequestedTime,
      )
      ..add(
        'createdBy',
        createdBy,
      )
      ..add(
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
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ConformancePackName':
          result.conformancePackName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ConformancePackArn':
          result.conformancePackArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ConformancePackId':
          result.conformancePackId = (serializers.deserialize(
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
              _i4.BuiltList,
              [FullType(_i2.ConformancePackInputParameter)],
            ),
          ) as _i4.BuiltList<_i2.ConformancePackInputParameter>));
        case 'LastUpdateRequestedTime':
          result.lastUpdateRequestedTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'CreatedBy':
          result.createdBy = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'TemplateSSMDocumentDetails':
          result.templateSsmDocumentDetails.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.TemplateSsmDocumentDetails),
          ) as _i3.TemplateSsmDocumentDetails));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ConformancePackDetail object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final ConformancePackDetail(
      :conformancePackName,
      :conformancePackArn,
      :conformancePackId,
      :deliveryS3Bucket,
      :deliveryS3KeyPrefix,
      :conformancePackInputParameters,
      :lastUpdateRequestedTime,
      :createdBy,
      :templateSsmDocumentDetails
    ) = object;
    result$.addAll([
      'ConformancePackName',
      serializers.serialize(
        conformancePackName,
        specifiedType: const FullType(String),
      ),
      'ConformancePackArn',
      serializers.serialize(
        conformancePackArn,
        specifiedType: const FullType(String),
      ),
      'ConformancePackId',
      serializers.serialize(
        conformancePackId,
        specifiedType: const FullType(String),
      ),
    ]);
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
            _i4.BuiltList,
            [FullType(_i2.ConformancePackInputParameter)],
          ),
        ));
    }
    if (lastUpdateRequestedTime != null) {
      result$
        ..add('LastUpdateRequestedTime')
        ..add(serializers.serialize(
          lastUpdateRequestedTime,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (createdBy != null) {
      result$
        ..add('CreatedBy')
        ..add(serializers.serialize(
          createdBy,
          specifiedType: const FullType(String),
        ));
    }
    if (templateSsmDocumentDetails != null) {
      result$
        ..add('TemplateSSMDocumentDetails')
        ..add(serializers.serialize(
          templateSsmDocumentDetails,
          specifiedType: const FullType(_i3.TemplateSsmDocumentDetails),
        ));
    }
    return result$;
  }
}
