// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.s3.model.restore_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i7;
import 'package:smoke_test/src/sdk/src/s3/model/glacier_job_parameters.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/s3/model/output_location.dart' as _i6;
import 'package:smoke_test/src/sdk/src/s3/model/restore_request_type.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/s3/model/select_parameters.dart' as _i5;
import 'package:smoke_test/src/sdk/src/s3/model/tier.dart' as _i4;

part 'restore_request.g.dart';

/// Container for restore job parameters.
abstract class RestoreRequest
    with _i1.AWSEquatable<RestoreRequest>
    implements Built<RestoreRequest, RestoreRequestBuilder> {
  /// Container for restore job parameters.
  factory RestoreRequest({
    int? days,
    _i2.GlacierJobParameters? glacierJobParameters,
    _i3.RestoreRequestType? type,
    _i4.Tier? tier,
    String? description,
    _i5.SelectParameters? selectParameters,
    _i6.OutputLocation? outputLocation,
  }) {
    return _$RestoreRequest._(
      days: days,
      glacierJobParameters: glacierJobParameters,
      type: type,
      tier: tier,
      description: description,
      selectParameters: selectParameters,
      outputLocation: outputLocation,
    );
  }

  /// Container for restore job parameters.
  factory RestoreRequest.build([void Function(RestoreRequestBuilder) updates]) =
      _$RestoreRequest;

  const RestoreRequest._();

  static const List<_i7.SmithySerializer<RestoreRequest>> serializers = [
    RestoreRequestRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(RestoreRequestBuilder b) {}

  /// Lifetime of the active copy in days. Do not use with restores that specify `OutputLocation`.
  ///
  /// The Days element is required for regular restores, and must not be provided for select requests.
  int? get days;

  /// S3 Glacier related parameters pertaining to this job. Do not use with restores that specify `OutputLocation`.
  _i2.GlacierJobParameters? get glacierJobParameters;

  /// Type of restore request.
  _i3.RestoreRequestType? get type;

  /// Retrieval tier at which the restore will be processed.
  _i4.Tier? get tier;

  /// The optional description for the job.
  String? get description;

  /// Describes the parameters for Select job types.
  _i5.SelectParameters? get selectParameters;

  /// Describes the location where the restore job's output is stored.
  _i6.OutputLocation? get outputLocation;
  @override
  List<Object?> get props => [
        days,
        glacierJobParameters,
        type,
        tier,
        description,
        selectParameters,
        outputLocation,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('RestoreRequest')
      ..add(
        'days',
        days,
      )
      ..add(
        'glacierJobParameters',
        glacierJobParameters,
      )
      ..add(
        'type',
        type,
      )
      ..add(
        'tier',
        tier,
      )
      ..add(
        'description',
        description,
      )
      ..add(
        'selectParameters',
        selectParameters,
      )
      ..add(
        'outputLocation',
        outputLocation,
      );
    return helper.toString();
  }
}

class RestoreRequestRestXmlSerializer
    extends _i7.StructuredSmithySerializer<RestoreRequest> {
  const RestoreRequestRestXmlSerializer() : super('RestoreRequest');

  @override
  Iterable<Type> get types => const [
        RestoreRequest,
        _$RestoreRequest,
      ];
  @override
  Iterable<_i7.ShapeId> get supportedProtocols => const [
        _i7.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  RestoreRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RestoreRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Days':
          result.days = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'Description':
          result.description = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'GlacierJobParameters':
          result.glacierJobParameters.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.GlacierJobParameters),
          ) as _i2.GlacierJobParameters));
        case 'OutputLocation':
          result.outputLocation.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i6.OutputLocation),
          ) as _i6.OutputLocation));
        case 'SelectParameters':
          result.selectParameters.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i5.SelectParameters),
          ) as _i5.SelectParameters));
        case 'Tier':
          result.tier = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i4.Tier),
          ) as _i4.Tier);
        case 'Type':
          result.type = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.RestoreRequestType),
          ) as _i3.RestoreRequestType);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    RestoreRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i7.XmlElementName(
        'RestoreRequest',
        _i7.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final RestoreRequest(
      :days,
      :description,
      :glacierJobParameters,
      :outputLocation,
      :selectParameters,
      :tier,
      :type
    ) = object;
    if (days != null) {
      result$
        ..add(const _i7.XmlElementName('Days'))
        ..add(serializers.serialize(
          days,
          specifiedType: const FullType.nullable(int),
        ));
    }
    if (description != null) {
      result$
        ..add(const _i7.XmlElementName('Description'))
        ..add(serializers.serialize(
          description,
          specifiedType: const FullType(String),
        ));
    }
    if (glacierJobParameters != null) {
      result$
        ..add(const _i7.XmlElementName('GlacierJobParameters'))
        ..add(serializers.serialize(
          glacierJobParameters,
          specifiedType: const FullType(_i2.GlacierJobParameters),
        ));
    }
    if (outputLocation != null) {
      result$
        ..add(const _i7.XmlElementName('OutputLocation'))
        ..add(serializers.serialize(
          outputLocation,
          specifiedType: const FullType(_i6.OutputLocation),
        ));
    }
    if (selectParameters != null) {
      result$
        ..add(const _i7.XmlElementName('SelectParameters'))
        ..add(serializers.serialize(
          selectParameters,
          specifiedType: const FullType(_i5.SelectParameters),
        ));
    }
    if (tier != null) {
      result$
        ..add(const _i7.XmlElementName('Tier'))
        ..add(serializers.serialize(
          tier,
          specifiedType: const FullType.nullable(_i4.Tier),
        ));
    }
    if (type != null) {
      result$
        ..add(const _i7.XmlElementName('Type'))
        ..add(serializers.serialize(
          type,
          specifiedType: const FullType.nullable(_i3.RestoreRequestType),
        ));
    }
    return result$;
  }
}
