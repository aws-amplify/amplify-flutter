// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.bundle_instance_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/storage.dart';

part 'bundle_instance_request.g.dart';

/// Contains the parameters for BundleInstance.
abstract class BundleInstanceRequest
    with
        _i1.HttpInput<BundleInstanceRequest>,
        _i2.AWSEquatable<BundleInstanceRequest>
    implements Built<BundleInstanceRequest, BundleInstanceRequestBuilder> {
  /// Contains the parameters for BundleInstance.
  factory BundleInstanceRequest({
    String? instanceId,
    Storage? storage,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$BundleInstanceRequest._(
      instanceId: instanceId,
      storage: storage,
      dryRun: dryRun,
    );
  }

  /// Contains the parameters for BundleInstance.
  factory BundleInstanceRequest.build(
          [void Function(BundleInstanceRequestBuilder) updates]) =
      _$BundleInstanceRequest;

  const BundleInstanceRequest._();

  factory BundleInstanceRequest.fromRequest(
    BundleInstanceRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<BundleInstanceRequest>> serializers = [
    BundleInstanceRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(BundleInstanceRequestBuilder b) {
    b.dryRun = false;
  }

  /// The ID of the instance to bundle.
  ///
  /// Type: String
  ///
  /// Default: None
  ///
  /// Required: Yes
  String? get instanceId;

  /// The bucket in which to store the AMI. You can specify a bucket that you already own or a new bucket that Amazon EC2 creates on your behalf. If you specify a bucket that belongs to someone else, Amazon EC2 returns an error.
  Storage? get storage;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  BundleInstanceRequest getPayload() => this;
  @override
  List<Object?> get props => [
        instanceId,
        storage,
        dryRun,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('BundleInstanceRequest')
      ..add(
        'instanceId',
        instanceId,
      )
      ..add(
        'storage',
        storage,
      )
      ..add(
        'dryRun',
        dryRun,
      );
    return helper.toString();
  }
}

class BundleInstanceRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<BundleInstanceRequest> {
  const BundleInstanceRequestEc2QuerySerializer()
      : super('BundleInstanceRequest');

  @override
  Iterable<Type> get types => const [
        BundleInstanceRequest,
        _$BundleInstanceRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  BundleInstanceRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BundleInstanceRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'InstanceId':
          result.instanceId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Storage':
          result.storage.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(Storage),
          ) as Storage));
        case 'dryRun':
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
    BundleInstanceRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'BundleInstanceRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final BundleInstanceRequest(:instanceId, :storage, :dryRun) = object;
    if (instanceId != null) {
      result$
        ..add(const _i1.XmlElementName('InstanceId'))
        ..add(serializers.serialize(
          instanceId,
          specifiedType: const FullType(String),
        ));
    }
    if (storage != null) {
      result$
        ..add(const _i1.XmlElementName('Storage'))
        ..add(serializers.serialize(
          storage,
          specifiedType: const FullType(Storage),
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
