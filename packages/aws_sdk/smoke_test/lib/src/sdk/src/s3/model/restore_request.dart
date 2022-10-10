// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.s3.model.restore_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i7;
import 'package:smoke_test/src/sdk/src/s3/model/glacier_job_parameters.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/s3/model/output_location.dart' as _i3;
import 'package:smoke_test/src/sdk/src/s3/model/restore_request_type.dart'
    as _i6;
import 'package:smoke_test/src/sdk/src/s3/model/select_parameters.dart' as _i4;
import 'package:smoke_test/src/sdk/src/s3/model/tier.dart' as _i5;

part 'restore_request.g.dart';

/// Container for restore job parameters.
abstract class RestoreRequest
    with _i1.AWSEquatable<RestoreRequest>
    implements Built<RestoreRequest, RestoreRequestBuilder> {
  /// Container for restore job parameters.
  factory RestoreRequest({
    int? days,
    String? description,
    _i2.GlacierJobParameters? glacierJobParameters,
    _i3.OutputLocation? outputLocation,
    _i4.SelectParameters? selectParameters,
    _i5.Tier? tier,
    _i6.RestoreRequestType? type,
  }) {
    return _$RestoreRequest._(
      days: days,
      description: description,
      glacierJobParameters: glacierJobParameters,
      outputLocation: outputLocation,
      selectParameters: selectParameters,
      tier: tier,
      type: type,
    );
  }

  /// Container for restore job parameters.
  factory RestoreRequest.build([void Function(RestoreRequestBuilder) updates]) =
      _$RestoreRequest;

  const RestoreRequest._();

  static const List<_i7.SmithySerializer> serializers = [
    RestoreRequestRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(RestoreRequestBuilder b) {}

  /// Lifetime of the active copy in days. Do not use with restores that specify `OutputLocation`.
  ///
  /// The Days element is required for regular restores, and must not be provided for select requests.
  int? get days;

  /// The optional description for the job.
  String? get description;

  /// S3 Glacier related parameters pertaining to this job. Do not use with restores that specify `OutputLocation`.
  _i2.GlacierJobParameters? get glacierJobParameters;

  /// Describes the location where the restore job's output is stored.
  _i3.OutputLocation? get outputLocation;

  /// Describes the parameters for Select job types.
  _i4.SelectParameters? get selectParameters;

  /// Retrieval tier at which the restore will be processed.
  _i5.Tier? get tier;

  /// Type of restore request.
  _i6.RestoreRequestType? get type;
  @override
  List<Object?> get props => [
        days,
        description,
        glacierJobParameters,
        outputLocation,
        selectParameters,
        tier,
        type,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('RestoreRequest');
    helper.add(
      'days',
      days,
    );
    helper.add(
      'description',
      description,
    );
    helper.add(
      'glacierJobParameters',
      glacierJobParameters,
    );
    helper.add(
      'outputLocation',
      outputLocation,
    );
    helper.add(
      'selectParameters',
      selectParameters,
    );
    helper.add(
      'tier',
      tier,
    );
    helper.add(
      'type',
      type,
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
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'Days':
          if (value != null) {
            result.days = (serializers.deserialize(
              value,
              specifiedType: const FullType(int),
            ) as int);
          }
          break;
        case 'Description':
          if (value != null) {
            result.description = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'GlacierJobParameters':
          if (value != null) {
            result.glacierJobParameters.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.GlacierJobParameters),
            ) as _i2.GlacierJobParameters));
          }
          break;
        case 'OutputLocation':
          if (value != null) {
            result.outputLocation.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.OutputLocation),
            ) as _i3.OutputLocation));
          }
          break;
        case 'SelectParameters':
          if (value != null) {
            result.selectParameters.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i4.SelectParameters),
            ) as _i4.SelectParameters));
          }
          break;
        case 'Tier':
          if (value != null) {
            result.tier = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i5.Tier),
            ) as _i5.Tier);
          }
          break;
        case 'Type':
          if (value != null) {
            result.type = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i6.RestoreRequestType),
            ) as _i6.RestoreRequestType);
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
    final payload = (object as RestoreRequest);
    final result = <Object?>[
      const _i7.XmlElementName(
        'RestoreRequest',
        _i7.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    if (payload.days != null) {
      result
        ..add(const _i7.XmlElementName('Days'))
        ..add(serializers.serialize(
          payload.days!,
          specifiedType: const FullType.nullable(int),
        ));
    }
    if (payload.description != null) {
      result
        ..add(const _i7.XmlElementName('Description'))
        ..add(serializers.serialize(
          payload.description!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.glacierJobParameters != null) {
      result
        ..add(const _i7.XmlElementName('GlacierJobParameters'))
        ..add(serializers.serialize(
          payload.glacierJobParameters!,
          specifiedType: const FullType(_i2.GlacierJobParameters),
        ));
    }
    if (payload.outputLocation != null) {
      result
        ..add(const _i7.XmlElementName('OutputLocation'))
        ..add(serializers.serialize(
          payload.outputLocation!,
          specifiedType: const FullType(_i3.OutputLocation),
        ));
    }
    if (payload.selectParameters != null) {
      result
        ..add(const _i7.XmlElementName('SelectParameters'))
        ..add(serializers.serialize(
          payload.selectParameters!,
          specifiedType: const FullType(_i4.SelectParameters),
        ));
    }
    if (payload.tier != null) {
      result
        ..add(const _i7.XmlElementName('Tier'))
        ..add(serializers.serialize(
          payload.tier!,
          specifiedType: const FullType.nullable(_i5.Tier),
        ));
    }
    if (payload.type != null) {
      result
        ..add(const _i7.XmlElementName('Type'))
        ..add(serializers.serialize(
          payload.type!,
          specifiedType: const FullType.nullable(_i6.RestoreRequestType),
        ));
    }
    return result;
  }
}
