// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.restore_managed_prefix_list_version_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'restore_managed_prefix_list_version_request.g.dart';

abstract class RestoreManagedPrefixListVersionRequest
    with
        _i1.HttpInput<RestoreManagedPrefixListVersionRequest>,
        _i2.AWSEquatable<RestoreManagedPrefixListVersionRequest>
    implements
        Built<RestoreManagedPrefixListVersionRequest,
            RestoreManagedPrefixListVersionRequestBuilder> {
  factory RestoreManagedPrefixListVersionRequest({
    bool? dryRun,
    String? prefixListId,
    _i3.Int64? previousVersion,
    _i3.Int64? currentVersion,
  }) {
    dryRun ??= false;
    previousVersion ??= _i3.Int64.ZERO;
    currentVersion ??= _i3.Int64.ZERO;
    return _$RestoreManagedPrefixListVersionRequest._(
      dryRun: dryRun,
      prefixListId: prefixListId,
      previousVersion: previousVersion,
      currentVersion: currentVersion,
    );
  }

  factory RestoreManagedPrefixListVersionRequest.build(
      [void Function(RestoreManagedPrefixListVersionRequestBuilder)
          updates]) = _$RestoreManagedPrefixListVersionRequest;

  const RestoreManagedPrefixListVersionRequest._();

  factory RestoreManagedPrefixListVersionRequest.fromRequest(
    RestoreManagedPrefixListVersionRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<
          _i1.SmithySerializer<RestoreManagedPrefixListVersionRequest>>
      serializers = [
    RestoreManagedPrefixListVersionRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(RestoreManagedPrefixListVersionRequestBuilder b) {
    b
      ..dryRun = false
      ..previousVersion = _i3.Int64.ZERO
      ..currentVersion = _i3.Int64.ZERO;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The ID of the prefix list.
  String? get prefixListId;

  /// The version to restore.
  _i3.Int64 get previousVersion;

  /// The current version number for the prefix list.
  _i3.Int64 get currentVersion;
  @override
  RestoreManagedPrefixListVersionRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        prefixListId,
        previousVersion,
        currentVersion,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('RestoreManagedPrefixListVersionRequest')
          ..add(
            'dryRun',
            dryRun,
          )
          ..add(
            'prefixListId',
            prefixListId,
          )
          ..add(
            'previousVersion',
            previousVersion,
          )
          ..add(
            'currentVersion',
            currentVersion,
          );
    return helper.toString();
  }
}

class RestoreManagedPrefixListVersionRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<RestoreManagedPrefixListVersionRequest> {
  const RestoreManagedPrefixListVersionRequestEc2QuerySerializer()
      : super('RestoreManagedPrefixListVersionRequest');

  @override
  Iterable<Type> get types => const [
        RestoreManagedPrefixListVersionRequest,
        _$RestoreManagedPrefixListVersionRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  RestoreManagedPrefixListVersionRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RestoreManagedPrefixListVersionRequestBuilder();
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
        case 'PrefixListId':
          result.prefixListId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'PreviousVersion':
          result.previousVersion = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.Int64),
          ) as _i3.Int64);
        case 'CurrentVersion':
          result.currentVersion = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.Int64),
          ) as _i3.Int64);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    RestoreManagedPrefixListVersionRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'RestoreManagedPrefixListVersionRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final RestoreManagedPrefixListVersionRequest(
      :dryRun,
      :prefixListId,
      :previousVersion,
      :currentVersion
    ) = object;
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    if (prefixListId != null) {
      result$
        ..add(const _i1.XmlElementName('PrefixListId'))
        ..add(serializers.serialize(
          prefixListId,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('PreviousVersion'))
      ..add(serializers.serialize(
        previousVersion,
        specifiedType: const FullType(_i3.Int64),
      ));
    result$
      ..add(const _i1.XmlElementName('CurrentVersion'))
      ..add(serializers.serialize(
        currentVersion,
        specifiedType: const FullType(_i3.Int64),
      ));
    return result$;
  }
}
