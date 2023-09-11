// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.enable_image_deprecation_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'enable_image_deprecation_request.g.dart';

abstract class EnableImageDeprecationRequest
    with
        _i1.HttpInput<EnableImageDeprecationRequest>,
        _i2.AWSEquatable<EnableImageDeprecationRequest>
    implements
        Built<EnableImageDeprecationRequest,
            EnableImageDeprecationRequestBuilder> {
  factory EnableImageDeprecationRequest({
    String? imageId,
    DateTime? deprecateAt,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$EnableImageDeprecationRequest._(
      imageId: imageId,
      deprecateAt: deprecateAt,
      dryRun: dryRun,
    );
  }

  factory EnableImageDeprecationRequest.build(
          [void Function(EnableImageDeprecationRequestBuilder) updates]) =
      _$EnableImageDeprecationRequest;

  const EnableImageDeprecationRequest._();

  factory EnableImageDeprecationRequest.fromRequest(
    EnableImageDeprecationRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<EnableImageDeprecationRequest>>
      serializers = [EnableImageDeprecationRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(EnableImageDeprecationRequestBuilder b) {
    b.dryRun = false;
  }

  /// The ID of the AMI.
  String? get imageId;

  /// The date and time to deprecate the AMI, in UTC, in the following format: _YYYY_-_MM_-_DD_T_HH_:_MM_:_SS_Z. If you specify a value for seconds, Amazon EC2 rounds the seconds to the nearest minute.
  ///
  /// You can’t specify a date in the past. The upper limit for `DeprecateAt` is 10 years from now, except for public AMIs, where the upper limit is 2 years from the creation date.
  DateTime? get deprecateAt;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  EnableImageDeprecationRequest getPayload() => this;
  @override
  List<Object?> get props => [
        imageId,
        deprecateAt,
        dryRun,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('EnableImageDeprecationRequest')
      ..add(
        'imageId',
        imageId,
      )
      ..add(
        'deprecateAt',
        deprecateAt,
      )
      ..add(
        'dryRun',
        dryRun,
      );
    return helper.toString();
  }
}

class EnableImageDeprecationRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<EnableImageDeprecationRequest> {
  const EnableImageDeprecationRequestEc2QuerySerializer()
      : super('EnableImageDeprecationRequest');

  @override
  Iterable<Type> get types => const [
        EnableImageDeprecationRequest,
        _$EnableImageDeprecationRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  EnableImageDeprecationRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EnableImageDeprecationRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ImageId':
          result.imageId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'DeprecateAt':
          result.deprecateAt = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    EnableImageDeprecationRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'EnableImageDeprecationRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final EnableImageDeprecationRequest(:imageId, :deprecateAt, :dryRun) =
        object;
    if (imageId != null) {
      result$
        ..add(const _i1.XmlElementName('ImageId'))
        ..add(serializers.serialize(
          imageId,
          specifiedType: const FullType(String),
        ));
    }
    if (deprecateAt != null) {
      result$
        ..add(const _i1.XmlElementName('DeprecateAt'))
        ..add(serializers.serialize(
          deprecateAt,
          specifiedType: const FullType(DateTime),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}
