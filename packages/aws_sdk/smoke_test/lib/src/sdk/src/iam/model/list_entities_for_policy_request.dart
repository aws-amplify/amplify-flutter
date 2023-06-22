// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.list_entities_for_policy_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/iam/model/entity_type.dart' as _i3;
import 'package:smoke_test/src/sdk/src/iam/model/policy_usage_type.dart' as _i4;

part 'list_entities_for_policy_request.g.dart';

abstract class ListEntitiesForPolicyRequest
    with
        _i1.HttpInput<ListEntitiesForPolicyRequest>,
        _i2.AWSEquatable<ListEntitiesForPolicyRequest>
    implements
        Built<ListEntitiesForPolicyRequest,
            ListEntitiesForPolicyRequestBuilder> {
  factory ListEntitiesForPolicyRequest({
    required String policyArn,
    _i3.EntityType? entityFilter,
    String? pathPrefix,
    _i4.PolicyUsageType? policyUsageFilter,
    String? marker,
    int? maxItems,
  }) {
    return _$ListEntitiesForPolicyRequest._(
      policyArn: policyArn,
      entityFilter: entityFilter,
      pathPrefix: pathPrefix,
      policyUsageFilter: policyUsageFilter,
      marker: marker,
      maxItems: maxItems,
    );
  }

  factory ListEntitiesForPolicyRequest.build(
          [void Function(ListEntitiesForPolicyRequestBuilder) updates]) =
      _$ListEntitiesForPolicyRequest;

  const ListEntitiesForPolicyRequest._();

  factory ListEntitiesForPolicyRequest.fromRequest(
    ListEntitiesForPolicyRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<ListEntitiesForPolicyRequest>>
      serializers = [ListEntitiesForPolicyRequestAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ListEntitiesForPolicyRequestBuilder b) {}

  /// The Amazon Resource Name (ARN) of the IAM policy for which you want the versions.
  ///
  /// For more information about ARNs, see [Amazon Resource Names (ARNs)](https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html) in the _Amazon Web Services General Reference_.
  String get policyArn;

  /// The entity type to use for filtering the results.
  ///
  /// For example, when `EntityFilter` is `Role`, only the roles that are attached to the specified policy are returned. This parameter is optional. If it is not included, all attached entities (users, groups, and roles) are returned. The argument for this parameter must be one of the valid values listed below.
  _i3.EntityType? get entityFilter;

  /// The path prefix for filtering the results. This parameter is optional. If it is not included, it defaults to a slash (/), listing all entities.
  ///
  /// This parameter allows (through its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of either a forward slash (/) by itself or a string that must begin and end with forward slashes. In addition, it can contain any ASCII character from the ! (`\\u0021`) through the DEL character (`\\u007F`), including most punctuation characters, digits, and upper and lowercased letters.
  String? get pathPrefix;

  /// The policy usage method to use for filtering the results.
  ///
  /// To list only permissions policies, set `PolicyUsageFilter` to `PermissionsPolicy`. To list only the policies used to set permissions boundaries, set the value to `PermissionsBoundary`.
  ///
  /// This parameter is optional. If it is not included, all policies are returned.
  _i4.PolicyUsageType? get policyUsageFilter;

  /// Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the `Marker` element in the response that you received to indicate where the next call should start.
  String? get marker;

  /// Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the `IsTruncated` response element is `true`.
  ///
  /// If you do not include this parameter, the number of items defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the `IsTruncated` response element returns `true`, and `Marker` contains a value to include in the subsequent call that tells the service where to continue from.
  int? get maxItems;
  @override
  ListEntitiesForPolicyRequest getPayload() => this;
  @override
  List<Object?> get props => [
        policyArn,
        entityFilter,
        pathPrefix,
        policyUsageFilter,
        marker,
        maxItems,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ListEntitiesForPolicyRequest')
      ..add(
        'policyArn',
        policyArn,
      )
      ..add(
        'entityFilter',
        entityFilter,
      )
      ..add(
        'pathPrefix',
        pathPrefix,
      )
      ..add(
        'policyUsageFilter',
        policyUsageFilter,
      )
      ..add(
        'marker',
        marker,
      )
      ..add(
        'maxItems',
        maxItems,
      );
    return helper.toString();
  }
}

class ListEntitiesForPolicyRequestAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<ListEntitiesForPolicyRequest> {
  const ListEntitiesForPolicyRequestAwsQuerySerializer()
      : super('ListEntitiesForPolicyRequest');

  @override
  Iterable<Type> get types => const [
        ListEntitiesForPolicyRequest,
        _$ListEntitiesForPolicyRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  ListEntitiesForPolicyRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListEntitiesForPolicyRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'PolicyArn':
          result.policyArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'EntityFilter':
          result.entityFilter = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.EntityType),
          ) as _i3.EntityType);
        case 'PathPrefix':
          result.pathPrefix = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'PolicyUsageFilter':
          result.policyUsageFilter = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i4.PolicyUsageType),
          ) as _i4.PolicyUsageType);
        case 'Marker':
          result.marker = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'MaxItems':
          result.maxItems = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ListEntitiesForPolicyRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'ListEntitiesForPolicyRequestResponse',
        _i1.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final ListEntitiesForPolicyRequest(
      :policyArn,
      :entityFilter,
      :pathPrefix,
      :policyUsageFilter,
      :marker,
      :maxItems
    ) = object;
    result$
      ..add(const _i1.XmlElementName('PolicyArn'))
      ..add(serializers.serialize(
        policyArn,
        specifiedType: const FullType(String),
      ));
    if (entityFilter != null) {
      result$
        ..add(const _i1.XmlElementName('EntityFilter'))
        ..add(serializers.serialize(
          entityFilter,
          specifiedType: const FullType.nullable(_i3.EntityType),
        ));
    }
    if (pathPrefix != null) {
      result$
        ..add(const _i1.XmlElementName('PathPrefix'))
        ..add(serializers.serialize(
          pathPrefix,
          specifiedType: const FullType(String),
        ));
    }
    if (policyUsageFilter != null) {
      result$
        ..add(const _i1.XmlElementName('PolicyUsageFilter'))
        ..add(serializers.serialize(
          policyUsageFilter,
          specifiedType: const FullType.nullable(_i4.PolicyUsageType),
        ));
    }
    if (marker != null) {
      result$
        ..add(const _i1.XmlElementName('Marker'))
        ..add(serializers.serialize(
          marker,
          specifiedType: const FullType(String),
        ));
    }
    if (maxItems != null) {
      result$
        ..add(const _i1.XmlElementName('MaxItems'))
        ..add(serializers.serialize(
          maxItems,
          specifiedType: const FullType.nullable(int),
        ));
    }
    return result$;
  }
}
