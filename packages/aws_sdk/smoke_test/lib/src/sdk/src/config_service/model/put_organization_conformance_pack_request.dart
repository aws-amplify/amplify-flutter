// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

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
    required String organizationConformancePackName,
    String? templateS3Uri,
    String? templateBody,
    String? deliveryS3Bucket,
    String? deliveryS3KeyPrefix,
    List<_i3.ConformancePackInputParameter>? conformancePackInputParameters,
    List<String>? excludedAccounts,
  }) {
    return _$PutOrganizationConformancePackRequest._(
      organizationConformancePackName: organizationConformancePackName,
      templateS3Uri: templateS3Uri,
      templateBody: templateBody,
      deliveryS3Bucket: deliveryS3Bucket,
      deliveryS3KeyPrefix: deliveryS3KeyPrefix,
      conformancePackInputParameters: conformancePackInputParameters == null
          ? null
          : _i4.BuiltList(conformancePackInputParameters),
      excludedAccounts:
          excludedAccounts == null ? null : _i4.BuiltList(excludedAccounts),
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

  static const List<_i1.SmithySerializer<PutOrganizationConformancePackRequest>>
      serializers = [
    PutOrganizationConformancePackRequestAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PutOrganizationConformancePackRequestBuilder b) {}

  /// Name of the organization conformance pack you want to create.
  String get organizationConformancePackName;

  /// Location of file containing the template body. The uri must point to the conformance pack template (max size: 300 KB).
  ///
  /// You must have access to read Amazon S3 bucket.
  String? get templateS3Uri;

  /// A string containing full conformance pack template body. Structure containing the template body with a minimum length of 1 byte and a maximum length of 51,200 bytes.
  String? get templateBody;

  /// The name of the Amazon S3 bucket where Config stores conformance pack templates.
  ///
  /// This field is optional. If used, it must be prefixed with `awsconfigconforms`.
  String? get deliveryS3Bucket;

  /// The prefix for the Amazon S3 bucket.
  ///
  /// This field is optional.
  String? get deliveryS3KeyPrefix;

  /// A list of `ConformancePackInputParameter` objects.
  _i4.BuiltList<_i3.ConformancePackInputParameter>?
      get conformancePackInputParameters;

  /// A list of Amazon Web Services accounts to be excluded from an organization conformance pack while deploying a conformance pack.
  _i4.BuiltList<String>? get excludedAccounts;
  @override
  PutOrganizationConformancePackRequest getPayload() => this;
  @override
  List<Object?> get props => [
        organizationConformancePackName,
        templateS3Uri,
        templateBody,
        deliveryS3Bucket,
        deliveryS3KeyPrefix,
        conformancePackInputParameters,
        excludedAccounts,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('PutOrganizationConformancePackRequest')
          ..add(
            'organizationConformancePackName',
            organizationConformancePackName,
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
            'excludedAccounts',
            excludedAccounts,
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
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'OrganizationConformancePackName':
          result.organizationConformancePackName = (serializers.deserialize(
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
              _i4.BuiltList,
              [FullType(_i3.ConformancePackInputParameter)],
            ),
          ) as _i4.BuiltList<_i3.ConformancePackInputParameter>));
        case 'ExcludedAccounts':
          result.excludedAccounts.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(String)],
            ),
          ) as _i4.BuiltList<String>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    PutOrganizationConformancePackRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final PutOrganizationConformancePackRequest(
      :organizationConformancePackName,
      :templateS3Uri,
      :templateBody,
      :deliveryS3Bucket,
      :deliveryS3KeyPrefix,
      :conformancePackInputParameters,
      :excludedAccounts
    ) = object;
    result$.addAll([
      'OrganizationConformancePackName',
      serializers.serialize(
        organizationConformancePackName,
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
            _i4.BuiltList,
            [FullType(_i3.ConformancePackInputParameter)],
          ),
        ));
    }
    if (excludedAccounts != null) {
      result$
        ..add('ExcludedAccounts')
        ..add(serializers.serialize(
          excludedAccounts,
          specifiedType: const FullType(
            _i4.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    return result$;
  }
}
