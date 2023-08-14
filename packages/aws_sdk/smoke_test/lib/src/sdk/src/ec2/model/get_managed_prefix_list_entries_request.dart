// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.get_managed_prefix_list_entries_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'get_managed_prefix_list_entries_request.g.dart';

abstract class GetManagedPrefixListEntriesRequest
    with
        _i1.HttpInput<GetManagedPrefixListEntriesRequest>,
        _i2.AWSEquatable<GetManagedPrefixListEntriesRequest>
    implements
        Built<GetManagedPrefixListEntriesRequest,
            GetManagedPrefixListEntriesRequestBuilder> {
  factory GetManagedPrefixListEntriesRequest({
    bool? dryRun,
    String? prefixListId,
    _i3.Int64? targetVersion,
    int? maxResults,
    String? nextToken,
  }) {
    dryRun ??= false;
    targetVersion ??= _i3.Int64.ZERO;
    maxResults ??= 0;
    return _$GetManagedPrefixListEntriesRequest._(
      dryRun: dryRun,
      prefixListId: prefixListId,
      targetVersion: targetVersion,
      maxResults: maxResults,
      nextToken: nextToken,
    );
  }

  factory GetManagedPrefixListEntriesRequest.build(
          [void Function(GetManagedPrefixListEntriesRequestBuilder) updates]) =
      _$GetManagedPrefixListEntriesRequest;

  const GetManagedPrefixListEntriesRequest._();

  factory GetManagedPrefixListEntriesRequest.fromRequest(
    GetManagedPrefixListEntriesRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<GetManagedPrefixListEntriesRequest>>
      serializers = [GetManagedPrefixListEntriesRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetManagedPrefixListEntriesRequestBuilder b) {
    b
      ..dryRun = false
      ..targetVersion = _i3.Int64.ZERO
      ..maxResults = 0;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The ID of the prefix list.
  String? get prefixListId;

  /// The version of the prefix list for which to return the entries. The default is the current version.
  _i3.Int64 get targetVersion;

  /// The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned `nextToken` value.
  int get maxResults;

  /// The token for the next page of results.
  String? get nextToken;
  @override
  GetManagedPrefixListEntriesRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        prefixListId,
        targetVersion,
        maxResults,
        nextToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GetManagedPrefixListEntriesRequest')
          ..add(
            'dryRun',
            dryRun,
          )
          ..add(
            'prefixListId',
            prefixListId,
          )
          ..add(
            'targetVersion',
            targetVersion,
          )
          ..add(
            'maxResults',
            maxResults,
          )
          ..add(
            'nextToken',
            nextToken,
          );
    return helper.toString();
  }
}

class GetManagedPrefixListEntriesRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<GetManagedPrefixListEntriesRequest> {
  const GetManagedPrefixListEntriesRequestEc2QuerySerializer()
      : super('GetManagedPrefixListEntriesRequest');

  @override
  Iterable<Type> get types => const [
        GetManagedPrefixListEntriesRequest,
        _$GetManagedPrefixListEntriesRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  GetManagedPrefixListEntriesRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetManagedPrefixListEntriesRequestBuilder();
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
        case 'TargetVersion':
          result.targetVersion = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.Int64),
          ) as _i3.Int64);
        case 'MaxResults':
          result.maxResults = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'NextToken':
          result.nextToken = (serializers.deserialize(
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
    GetManagedPrefixListEntriesRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'GetManagedPrefixListEntriesRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final GetManagedPrefixListEntriesRequest(
      :dryRun,
      :prefixListId,
      :targetVersion,
      :maxResults,
      :nextToken
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
      ..add(const _i1.XmlElementName('TargetVersion'))
      ..add(serializers.serialize(
        targetVersion,
        specifiedType: const FullType(_i3.Int64),
      ));
    result$
      ..add(const _i1.XmlElementName('MaxResults'))
      ..add(serializers.serialize(
        maxResults,
        specifiedType: const FullType(int),
      ));
    if (nextToken != null) {
      result$
        ..add(const _i1.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          nextToken,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
