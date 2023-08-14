// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.copy_fpga_image_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'copy_fpga_image_request.g.dart';

abstract class CopyFpgaImageRequest
    with
        _i1.HttpInput<CopyFpgaImageRequest>,
        _i2.AWSEquatable<CopyFpgaImageRequest>
    implements Built<CopyFpgaImageRequest, CopyFpgaImageRequestBuilder> {
  factory CopyFpgaImageRequest({
    bool? dryRun,
    String? sourceFpgaImageId,
    String? description,
    String? name,
    String? sourceRegion,
    String? clientToken,
  }) {
    dryRun ??= false;
    return _$CopyFpgaImageRequest._(
      dryRun: dryRun,
      sourceFpgaImageId: sourceFpgaImageId,
      description: description,
      name: name,
      sourceRegion: sourceRegion,
      clientToken: clientToken,
    );
  }

  factory CopyFpgaImageRequest.build(
          [void Function(CopyFpgaImageRequestBuilder) updates]) =
      _$CopyFpgaImageRequest;

  const CopyFpgaImageRequest._();

  factory CopyFpgaImageRequest.fromRequest(
    CopyFpgaImageRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<CopyFpgaImageRequest>> serializers = [
    CopyFpgaImageRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CopyFpgaImageRequestBuilder b) {
    b.dryRun = false;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The ID of the source AFI.
  String? get sourceFpgaImageId;

  /// The description for the new AFI.
  String? get description;

  /// The name for the new AFI. The default is the name of the source AFI.
  String? get name;

  /// The Region that contains the source AFI.
  String? get sourceRegion;

  /// Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information, see [Ensuring idempotency](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Run_Instance_Idempotency.html).
  String? get clientToken;
  @override
  CopyFpgaImageRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        sourceFpgaImageId,
        description,
        name,
        sourceRegion,
        clientToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CopyFpgaImageRequest')
      ..add(
        'dryRun',
        dryRun,
      )
      ..add(
        'sourceFpgaImageId',
        sourceFpgaImageId,
      )
      ..add(
        'description',
        description,
      )
      ..add(
        'name',
        name,
      )
      ..add(
        'sourceRegion',
        sourceRegion,
      )
      ..add(
        'clientToken',
        clientToken,
      );
    return helper.toString();
  }
}

class CopyFpgaImageRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<CopyFpgaImageRequest> {
  const CopyFpgaImageRequestEc2QuerySerializer()
      : super('CopyFpgaImageRequest');

  @override
  Iterable<Type> get types => const [
        CopyFpgaImageRequest,
        _$CopyFpgaImageRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CopyFpgaImageRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CopyFpgaImageRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'SourceFpgaImageId':
          result.sourceFpgaImageId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Description':
          result.description = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Name':
          result.name = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'SourceRegion':
          result.sourceRegion = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ClientToken':
          result.clientToken = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    CopyFpgaImageRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'CopyFpgaImageRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CopyFpgaImageRequest(
      :dryRun,
      :sourceFpgaImageId,
      :description,
      :name,
      :sourceRegion,
      :clientToken
    ) = object;
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    if (sourceFpgaImageId != null) {
      result$
        ..add(const _i1.XmlElementName('SourceFpgaImageId'))
        ..add(serializers.serialize(
          sourceFpgaImageId,
          specifiedType: const FullType(String),
        ));
    }
    if (description != null) {
      result$
        ..add(const _i1.XmlElementName('Description'))
        ..add(serializers.serialize(
          description,
          specifiedType: const FullType(String),
        ));
    }
    if (name != null) {
      result$
        ..add(const _i1.XmlElementName('Name'))
        ..add(serializers.serialize(
          name,
          specifiedType: const FullType(String),
        ));
    }
    if (sourceRegion != null) {
      result$
        ..add(const _i1.XmlElementName('SourceRegion'))
        ..add(serializers.serialize(
          sourceRegion,
          specifiedType: const FullType(String),
        ));
    }
    if (clientToken != null) {
      result$
        ..add(const _i1.XmlElementName('ClientToken'))
        ..add(serializers.serialize(
          clientToken,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
