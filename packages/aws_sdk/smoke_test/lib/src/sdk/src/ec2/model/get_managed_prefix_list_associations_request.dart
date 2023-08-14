// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.get_managed_prefix_list_associations_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'get_managed_prefix_list_associations_request.g.dart';

abstract class GetManagedPrefixListAssociationsRequest
    with
        _i1.HttpInput<GetManagedPrefixListAssociationsRequest>,
        _i2.AWSEquatable<GetManagedPrefixListAssociationsRequest>
    implements
        Built<GetManagedPrefixListAssociationsRequest,
            GetManagedPrefixListAssociationsRequestBuilder> {
  factory GetManagedPrefixListAssociationsRequest({
    bool? dryRun,
    String? prefixListId,
    int? maxResults,
    String? nextToken,
  }) {
    dryRun ??= false;
    maxResults ??= 0;
    return _$GetManagedPrefixListAssociationsRequest._(
      dryRun: dryRun,
      prefixListId: prefixListId,
      maxResults: maxResults,
      nextToken: nextToken,
    );
  }

  factory GetManagedPrefixListAssociationsRequest.build(
      [void Function(GetManagedPrefixListAssociationsRequestBuilder)
          updates]) = _$GetManagedPrefixListAssociationsRequest;

  const GetManagedPrefixListAssociationsRequest._();

  factory GetManagedPrefixListAssociationsRequest.fromRequest(
    GetManagedPrefixListAssociationsRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<
          _i1.SmithySerializer<GetManagedPrefixListAssociationsRequest>>
      serializers = [
    GetManagedPrefixListAssociationsRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetManagedPrefixListAssociationsRequestBuilder b) {
    b
      ..dryRun = false
      ..maxResults = 0;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The ID of the prefix list.
  String? get prefixListId;

  /// The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned `nextToken` value.
  int get maxResults;

  /// The token for the next page of results.
  String? get nextToken;
  @override
  GetManagedPrefixListAssociationsRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        prefixListId,
        maxResults,
        nextToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GetManagedPrefixListAssociationsRequest')
          ..add(
            'dryRun',
            dryRun,
          )
          ..add(
            'prefixListId',
            prefixListId,
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

class GetManagedPrefixListAssociationsRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<GetManagedPrefixListAssociationsRequest> {
  const GetManagedPrefixListAssociationsRequestEc2QuerySerializer()
      : super('GetManagedPrefixListAssociationsRequest');

  @override
  Iterable<Type> get types => const [
        GetManagedPrefixListAssociationsRequest,
        _$GetManagedPrefixListAssociationsRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  GetManagedPrefixListAssociationsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetManagedPrefixListAssociationsRequestBuilder();
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
    GetManagedPrefixListAssociationsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'GetManagedPrefixListAssociationsRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final GetManagedPrefixListAssociationsRequest(
      :dryRun,
      :prefixListId,
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
