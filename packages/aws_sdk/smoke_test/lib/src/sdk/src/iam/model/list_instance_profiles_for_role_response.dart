// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.iam.model.list_instance_profiles_for_role_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/iam/model/instance_profile.dart';

part 'list_instance_profiles_for_role_response.g.dart';

/// Contains the response to a successful ListInstanceProfilesForRole request.
abstract class ListInstanceProfilesForRoleResponse
    with
        _i1.AWSEquatable<ListInstanceProfilesForRoleResponse>
    implements
        Built<ListInstanceProfilesForRoleResponse,
            ListInstanceProfilesForRoleResponseBuilder> {
  /// Contains the response to a successful ListInstanceProfilesForRole request.
  factory ListInstanceProfilesForRoleResponse({
    required List<InstanceProfile> instanceProfiles,
    bool? isTruncated,
    String? marker,
  }) {
    isTruncated ??= false;
    return _$ListInstanceProfilesForRoleResponse._(
      instanceProfiles: _i2.BuiltList(instanceProfiles),
      isTruncated: isTruncated,
      marker: marker,
    );
  }

  /// Contains the response to a successful ListInstanceProfilesForRole request.
  factory ListInstanceProfilesForRoleResponse.build(
          [void Function(ListInstanceProfilesForRoleResponseBuilder) updates]) =
      _$ListInstanceProfilesForRoleResponse;

  const ListInstanceProfilesForRoleResponse._();

  /// Constructs a [ListInstanceProfilesForRoleResponse] from a [payload] and [response].
  factory ListInstanceProfilesForRoleResponse.fromResponse(
    ListInstanceProfilesForRoleResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<ListInstanceProfilesForRoleResponse>>
      serializers = [ListInstanceProfilesForRoleResponseAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ListInstanceProfilesForRoleResponseBuilder b) {
    b.isTruncated = false;
  }

  /// A list of instance profiles.
  _i2.BuiltList<InstanceProfile> get instanceProfiles;

  /// A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the `Marker` request parameter to retrieve more items. Note that IAM might return fewer than the `MaxItems` number of results even when there are more results available. We recommend that you check `IsTruncated` after every call to ensure that you receive all your results.
  bool get isTruncated;

  /// When `IsTruncated` is `true`, this element is present and contains the value to use for the `Marker` parameter in a subsequent pagination request.
  String? get marker;
  @override
  List<Object?> get props => [
        instanceProfiles,
        isTruncated,
        marker,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ListInstanceProfilesForRoleResponse')
          ..add(
            'instanceProfiles',
            instanceProfiles,
          )
          ..add(
            'isTruncated',
            isTruncated,
          )
          ..add(
            'marker',
            marker,
          );
    return helper.toString();
  }
}

class ListInstanceProfilesForRoleResponseAwsQuerySerializer extends _i3
    .StructuredSmithySerializer<ListInstanceProfilesForRoleResponse> {
  const ListInstanceProfilesForRoleResponseAwsQuerySerializer()
      : super('ListInstanceProfilesForRoleResponse');

  @override
  Iterable<Type> get types => const [
        ListInstanceProfilesForRoleResponse,
        _$ListInstanceProfilesForRoleResponse,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  ListInstanceProfilesForRoleResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListInstanceProfilesForRoleResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'InstanceProfiles':
          result.instanceProfiles.replace((const _i3.XmlBuiltListSerializer(
                  indexer: _i3.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(InstanceProfile)],
            ),
          ) as _i2.BuiltList<InstanceProfile>));
        case 'IsTruncated':
          result.isTruncated = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'Marker':
          result.marker = (serializers.deserialize(
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
    ListInstanceProfilesForRoleResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'ListInstanceProfilesForRoleResponseResponse',
        _i3.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final ListInstanceProfilesForRoleResponse(
      :instanceProfiles,
      :isTruncated,
      :marker
    ) = object;
    result$
      ..add(const _i3.XmlElementName('InstanceProfiles'))
      ..add(
          const _i3.XmlBuiltListSerializer(indexer: _i3.XmlIndexer.awsQueryList)
              .serialize(
        serializers,
        instanceProfiles,
        specifiedType: const FullType.nullable(
          _i2.BuiltList,
          [FullType(InstanceProfile)],
        ),
      ));
    result$
      ..add(const _i3.XmlElementName('IsTruncated'))
      ..add(serializers.serialize(
        isTruncated,
        specifiedType: const FullType(bool),
      ));
    if (marker != null) {
      result$
        ..add(const _i3.XmlElementName('Marker'))
        ..add(serializers.serialize(
          marker,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
