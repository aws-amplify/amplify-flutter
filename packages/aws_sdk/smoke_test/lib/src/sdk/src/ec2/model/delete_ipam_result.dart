// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.delete_ipam_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/ipam.dart';

part 'delete_ipam_result.g.dart';

abstract class DeleteIpamResult
    with _i1.AWSEquatable<DeleteIpamResult>
    implements Built<DeleteIpamResult, DeleteIpamResultBuilder> {
  factory DeleteIpamResult({Ipam? ipam}) {
    return _$DeleteIpamResult._(ipam: ipam);
  }

  factory DeleteIpamResult.build(
      [void Function(DeleteIpamResultBuilder) updates]) = _$DeleteIpamResult;

  const DeleteIpamResult._();

  /// Constructs a [DeleteIpamResult] from a [payload] and [response].
  factory DeleteIpamResult.fromResponse(
    DeleteIpamResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<DeleteIpamResult>> serializers = [
    DeleteIpamResultEc2QuerySerializer()
  ];

  /// Information about the results of the deletion.
  Ipam? get ipam;
  @override
  List<Object?> get props => [ipam];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteIpamResult')
      ..add(
        'ipam',
        ipam,
      );
    return helper.toString();
  }
}

class DeleteIpamResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<DeleteIpamResult> {
  const DeleteIpamResultEc2QuerySerializer() : super('DeleteIpamResult');

  @override
  Iterable<Type> get types => const [
        DeleteIpamResult,
        _$DeleteIpamResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteIpamResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteIpamResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ipam':
          result.ipam.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(Ipam),
          ) as Ipam));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DeleteIpamResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'DeleteIpamResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DeleteIpamResult(:ipam) = object;
    if (ipam != null) {
      result$
        ..add(const _i2.XmlElementName('Ipam'))
        ..add(serializers.serialize(
          ipam,
          specifiedType: const FullType(Ipam),
        ));
    }
    return result$;
  }
}
