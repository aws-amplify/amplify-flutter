// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.bundle_instance_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/bundle_task.dart';

part 'bundle_instance_result.g.dart';

/// Contains the output of BundleInstance.
abstract class BundleInstanceResult
    with _i1.AWSEquatable<BundleInstanceResult>
    implements Built<BundleInstanceResult, BundleInstanceResultBuilder> {
  /// Contains the output of BundleInstance.
  factory BundleInstanceResult({BundleTask? bundleTask}) {
    return _$BundleInstanceResult._(bundleTask: bundleTask);
  }

  /// Contains the output of BundleInstance.
  factory BundleInstanceResult.build(
          [void Function(BundleInstanceResultBuilder) updates]) =
      _$BundleInstanceResult;

  const BundleInstanceResult._();

  /// Constructs a [BundleInstanceResult] from a [payload] and [response].
  factory BundleInstanceResult.fromResponse(
    BundleInstanceResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<BundleInstanceResult>> serializers = [
    BundleInstanceResultEc2QuerySerializer()
  ];

  /// Information about the bundle task.
  BundleTask? get bundleTask;
  @override
  List<Object?> get props => [bundleTask];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('BundleInstanceResult')
      ..add(
        'bundleTask',
        bundleTask,
      );
    return helper.toString();
  }
}

class BundleInstanceResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<BundleInstanceResult> {
  const BundleInstanceResultEc2QuerySerializer()
      : super('BundleInstanceResult');

  @override
  Iterable<Type> get types => const [
        BundleInstanceResult,
        _$BundleInstanceResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  BundleInstanceResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BundleInstanceResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'bundleInstanceTask':
          result.bundleTask.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(BundleTask),
          ) as BundleTask));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    BundleInstanceResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'BundleInstanceResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final BundleInstanceResult(:bundleTask) = object;
    if (bundleTask != null) {
      result$
        ..add(const _i2.XmlElementName('BundleInstanceTask'))
        ..add(serializers.serialize(
          bundleTask,
          specifiedType: const FullType(BundleTask),
        ));
    }
    return result$;
  }
}
