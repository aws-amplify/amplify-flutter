// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.config_service.model.put_organization_conformance_pack_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/config_service/model/conformance_pack_input_parameter.dart'
    as _i3;

part 'put_organization_conformance_pack_request.g.dart';

abstract class PutOrganizationConformancePackRequest
    with
        _i1.HttpInput<PutOrganizationConformancePackRequest>,
        _i2.AWSEquatable<PutOrganizationConformancePackRequest>
    implements
        Built<PutOrganizationConformancePackRequest,
            PutOrganizationConformancePackRequestBuilder> {
  factory PutOrganizationConformancePackRequest({
    List<_i3.ConformancePackInputParameter>? conformancePackInputParameters,
    String? deliveryS3Bucket,
    String? deliveryS3KeyPrefix,
    List<String>? excludedAccounts,
    required String organizationConformancePackName,
    String? templateBody,
    String? templateS3Uri,
  }) {
    return _$PutOrganizationConformancePackRequest._(
      conformancePackInputParameters: conformancePackInputParameters == null
          ? null
          : _i4.BuiltList(conformancePackInputParameters),
      deliveryS3Bucket: deliveryS3Bucket,
      deliveryS3KeyPrefix: deliveryS3KeyPrefix,
      excludedAccounts:
          excludedAccounts == null ? null : _i4.BuiltList(excludedAccounts),
      organizationConformancePackName: organizationConformancePackName,
      templateBody: templateBody,
      templateS3Uri: templateS3Uri,
    );
  }

  factory PutOrganizationConformancePackRequest.build(
      [void Function(PutOrganizationConformancePackRequestBuilder)
          updates]) = _$PutOrganizationConformancePackRequest;

  const PutOrganizationConformancePackRequest._();

  factory PutOrganizationConformancePackRequest.fromRequest(
    PutOrganizationConformancePackRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    PutOrganizationConformancePackRequestAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PutOrganizationConformancePackRequestBuilder b) {}

  /// A list of `ConformancePackInputParameter` objects.
  _i4.BuiltList<_i3.ConformancePackInputParameter>?
      get conformancePackInputParameters;

  /// The name of the Amazon S3 bucket where Config stores conformance pack templates.
  ///
  /// This field is optional. If used, it must be prefixed with `awsconfigconforms`.
  String? get deliveryS3Bucket;

  /// The prefix for the Amazon S3 bucket.
  ///
  /// This field is optional.
  String? get deliveryS3KeyPrefix;

  /// A list of Amazon Web Services accounts to be excluded from an organization conformance pack while deploying a conformance pack.
  _i4.BuiltList<String>? get excludedAccounts;

  /// Name of the organization conformance pack you want to create.
  String get organizationConformancePackName;

  /// A string containing full conformance pack template body. Structure containing the template body with a minimum length of 1 byte and a maximum length of 51,200 bytes.
  String? get templateBody;

  /// Location of file containing the template body. The uri must point to the conformance pack template (max size: 300 KB).
  ///
  /// You must have access to read Amazon S3 bucket.
  String? get templateS3Uri;
  @override
  PutOrganizationConformancePackRequest getPayload() => this;
  @override
  List<Object?> get props => [
        conformancePackInputParameters,
        deliveryS3Bucket,
        deliveryS3KeyPrefix,
        excludedAccounts,
        organizationConformancePackName,
        templateBody,
        templateS3Uri,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('PutOrganizationConformancePackRequest');
    helper.add(
      'conformancePackInputParameters',
      conformancePackInputParameters,
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
      'excludedAccounts',
      excludedAccounts,
    );
    helper.add(
      'organizationConformancePackName',
      organizationConformancePackName,
    );
    helper.add(
      'templateBody',
      templateBody,
    );
    helper.add(
      'templateS3Uri',
      templateS3Uri,
    );
    return helper.toString();
  }
}

class PutOrganizationConformancePackRequestAwsJson11Serializer extends _i1
    .StructuredSmithySerializer<PutOrganizationConformancePackRequest> {
  const PutOrganizationConformancePackRequestAwsJson11Serializer()
      : super('PutOrganizationConformancePackRequest');

  @override
  Iterable<Type> get types => const [
        PutOrganizationConformancePackRequest,
        _$PutOrganizationConformancePackRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  PutOrganizationConformancePackRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PutOrganizationConformancePackRequestBuilder();
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
                _i4.BuiltList,
                [FullType(_i3.ConformancePackInputParameter)],
              ),
            ) as _i4.BuiltList<_i3.ConformancePackInputParameter>));
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
        case 'ExcludedAccounts':
          if (value != null) {
            result.excludedAccounts.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i4.BuiltList,
                [FullType(String)],
              ),
            ) as _i4.BuiltList<String>));
          }
          break;
        case 'OrganizationConformancePackName':
          result.organizationConformancePackName = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
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
    final payload = (object as PutOrganizationConformancePackRequest);
    final result = <Object?>[
      'OrganizationConformancePackName',
      serializers.serialize(
        payload.organizationConformancePackName,
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
    if (payload.excludedAccounts != null) {
      result
        ..add('ExcludedAccounts')
        ..add(serializers.serialize(
          payload.excludedAccounts!,
          specifiedType: const FullType(
            _i4.BuiltList,
            [FullType(String)],
          ),
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
    return result;
  }
}
