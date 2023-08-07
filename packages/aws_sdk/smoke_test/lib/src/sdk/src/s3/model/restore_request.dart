// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.s3.model.restore_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/s3/model/glacier_job_parameters.dart';
import 'package:smoke_test/src/sdk/src/s3/model/output_location.dart';
import 'package:smoke_test/src/sdk/src/s3/model/restore_request_type.dart';
import 'package:smoke_test/src/sdk/src/s3/model/select_parameters.dart';
import 'package:smoke_test/src/sdk/src/s3/model/tier.dart';

part 'restore_request.g.dart';

/// Container for restore job parameters.
abstract class RestoreRequest
    with _i1.AWSEquatable<RestoreRequest>
    implements Built<RestoreRequest, RestoreRequestBuilder> {
  /// Container for restore job parameters.
  factory RestoreRequest({
    int? days,
    GlacierJobParameters? glacierJobParameters,
    RestoreRequestType? type,
    Tier? tier,
    String? description,
    SelectParameters? selectParameters,
    OutputLocation? outputLocation,
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

  static const List<_i2.SmithySerializer<RestoreRequest>> serializers = [
    RestoreRequestRestXmlSerializer()
  ];

  /// Lifetime of the active copy in days. Do not use with restores that specify `OutputLocation`.
  ///
  /// The Days element is required for regular restores, and must not be provided for select requests.
  int? get days;

  /// S3 Glacier related parameters pertaining to this job. Do not use with restores that specify `OutputLocation`.
  GlacierJobParameters? get glacierJobParameters;

  /// Type of restore request.
  RestoreRequestType? get type;

  /// Retrieval tier at which the restore will be processed.
  Tier? get tier;

  /// The optional description for the job.
  String? get description;

  /// Describes the parameters for Select job types.
  SelectParameters? get selectParameters;

  /// Describes the location where the restore job's output is stored.
  OutputLocation? get outputLocation;
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
    extends _i2.StructuredSmithySerializer<RestoreRequest> {
  const RestoreRequestRestXmlSerializer() : super('RestoreRequest');

  @override
  Iterable<Type> get types => const [
        RestoreRequest,
        _$RestoreRequest,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
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
            specifiedType: const FullType(GlacierJobParameters),
          ) as GlacierJobParameters));
        case 'OutputLocation':
          result.outputLocation.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(OutputLocation),
          ) as OutputLocation));
        case 'SelectParameters':
          result.selectParameters.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(SelectParameters),
          ) as SelectParameters));
        case 'Tier':
          result.tier = (serializers.deserialize(
            value,
            specifiedType: const FullType(Tier),
          ) as Tier);
        case 'Type':
          result.type = (serializers.deserialize(
            value,
            specifiedType: const FullType(RestoreRequestType),
          ) as RestoreRequestType);
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
      const _i2.XmlElementName(
        'RestoreRequest',
        _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
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
        ..add(const _i2.XmlElementName('Days'))
        ..add(serializers.serialize(
          days,
          specifiedType: const FullType.nullable(int),
        ));
    }
    if (description != null) {
      result$
        ..add(const _i2.XmlElementName('Description'))
        ..add(serializers.serialize(
          description,
          specifiedType: const FullType(String),
        ));
    }
    if (glacierJobParameters != null) {
      result$
        ..add(const _i2.XmlElementName('GlacierJobParameters'))
        ..add(serializers.serialize(
          glacierJobParameters,
          specifiedType: const FullType(GlacierJobParameters),
        ));
    }
    if (outputLocation != null) {
      result$
        ..add(const _i2.XmlElementName('OutputLocation'))
        ..add(serializers.serialize(
          outputLocation,
          specifiedType: const FullType(OutputLocation),
        ));
    }
    if (selectParameters != null) {
      result$
        ..add(const _i2.XmlElementName('SelectParameters'))
        ..add(serializers.serialize(
          selectParameters,
          specifiedType: const FullType(SelectParameters),
        ));
    }
    if (tier != null) {
      result$
        ..add(const _i2.XmlElementName('Tier'))
        ..add(serializers.serialize(
          tier,
          specifiedType: const FullType.nullable(Tier),
        ));
    }
    if (type != null) {
      result$
        ..add(const _i2.XmlElementName('Type'))
        ..add(serializers.serialize(
          type,
          specifiedType: const FullType.nullable(RestoreRequestType),
        ));
    }
    return result$;
  }
}
