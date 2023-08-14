// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.client_data; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'client_data.g.dart';

/// Describes the client-specific data.
abstract class ClientData
    with _i1.AWSEquatable<ClientData>
    implements Built<ClientData, ClientDataBuilder> {
  /// Describes the client-specific data.
  factory ClientData({
    String? comment,
    DateTime? uploadEnd,
    double? uploadSize,
    DateTime? uploadStart,
  }) {
    uploadSize ??= 0;
    return _$ClientData._(
      comment: comment,
      uploadEnd: uploadEnd,
      uploadSize: uploadSize,
      uploadStart: uploadStart,
    );
  }

  /// Describes the client-specific data.
  factory ClientData.build([void Function(ClientDataBuilder) updates]) =
      _$ClientData;

  const ClientData._();

  static const List<_i2.SmithySerializer<ClientData>> serializers = [
    ClientDataEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ClientDataBuilder b) {
    b.uploadSize = 0;
  }

  /// A user-defined comment about the disk upload.
  String? get comment;

  /// The time that the disk upload ends.
  DateTime? get uploadEnd;

  /// The size of the uploaded disk image, in GiB.
  double get uploadSize;

  /// The time that the disk upload starts.
  DateTime? get uploadStart;
  @override
  List<Object?> get props => [
        comment,
        uploadEnd,
        uploadSize,
        uploadStart,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ClientData')
      ..add(
        'comment',
        comment,
      )
      ..add(
        'uploadEnd',
        uploadEnd,
      )
      ..add(
        'uploadSize',
        uploadSize,
      )
      ..add(
        'uploadStart',
        uploadStart,
      );
    return helper.toString();
  }
}

class ClientDataEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<ClientData> {
  const ClientDataEc2QuerySerializer() : super('ClientData');

  @override
  Iterable<Type> get types => const [
        ClientData,
        _$ClientData,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ClientData deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ClientDataBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Comment':
          result.comment = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'UploadEnd':
          result.uploadEnd = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'UploadSize':
          result.uploadSize = (serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double);
        case 'UploadStart':
          result.uploadStart = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ClientData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'ClientDataResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ClientData(:comment, :uploadEnd, :uploadSize, :uploadStart) = object;
    if (comment != null) {
      result$
        ..add(const _i2.XmlElementName('Comment'))
        ..add(serializers.serialize(
          comment,
          specifiedType: const FullType(String),
        ));
    }
    if (uploadEnd != null) {
      result$
        ..add(const _i2.XmlElementName('UploadEnd'))
        ..add(serializers.serialize(
          uploadEnd,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    result$
      ..add(const _i2.XmlElementName('UploadSize'))
      ..add(serializers.serialize(
        uploadSize,
        specifiedType: const FullType(double),
      ));
    if (uploadStart != null) {
      result$
        ..add(const _i2.XmlElementName('UploadStart'))
        ..add(serializers.serialize(
          uploadStart,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    return result$;
  }
}
