// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.cloud_formation.model.list_types_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/deprecated_status.dart'
    as _i5;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/provisioning_type.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/registry_type.dart'
    as _i6;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/type_filters.dart'
    as _i7;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/visibility.dart'
    as _i3;

part 'list_types_input.g.dart';

abstract class ListTypesInput
    with _i1.HttpInput<ListTypesInput>, _i2.AWSEquatable<ListTypesInput>
    implements Built<ListTypesInput, ListTypesInputBuilder> {
  factory ListTypesInput({
    _i3.Visibility? visibility,
    _i4.ProvisioningType? provisioningType,
    _i5.DeprecatedStatus? deprecatedStatus,
    _i6.RegistryType? type,
    _i7.TypeFilters? filters,
    int? maxResults,
    String? nextToken,
  }) {
    return _$ListTypesInput._(
      visibility: visibility,
      provisioningType: provisioningType,
      deprecatedStatus: deprecatedStatus,
      type: type,
      filters: filters,
      maxResults: maxResults,
      nextToken: nextToken,
    );
  }

  factory ListTypesInput.build([void Function(ListTypesInputBuilder) updates]) =
      _$ListTypesInput;

  const ListTypesInput._();

  factory ListTypesInput.fromRequest(
    ListTypesInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    ListTypesInputAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ListTypesInputBuilder b) {}

  /// The scope at which the extensions are visible and usable in CloudFormation operations.
  ///
  /// Valid values include:
  ///
  /// *   `PRIVATE`: Extensions that are visible and usable within this account and region. This includes:
  ///
  ///     *   Private extensions you have registered in this account and region.
  ///
  ///     *   Public extensions that you have activated in this account and region.
  ///
  /// *   `PUBLIC`: Extensions that are publicly visible and available to be activated within any Amazon Web Services account. This includes extensions from Amazon Web Services, in addition to third-party publishers.
  ///
  ///
  /// The default is `PRIVATE`.
  _i3.Visibility? get visibility;

  /// For resource types, the provisioning behavior of the resource type. CloudFormation determines the provisioning type during registration, based on the types of handlers in the schema handler package submitted.
  ///
  /// Valid values include:
  ///
  /// *   `FULLY_MUTABLE`: The resource type includes an update handler to process updates to the type during stack update operations.
  ///
  /// *   `IMMUTABLE`: The resource type doesn't include an update handler, so the type can't be updated and must instead be replaced during stack update operations.
  ///
  /// *   `NON_PROVISIONABLE`: The resource type doesn't include create, read, and delete handlers, and therefore can't actually be provisioned.
  ///
  ///
  /// The default is `FULLY_MUTABLE`.
  _i4.ProvisioningType? get provisioningType;

  /// The deprecation status of the extension that you want to get summary information about.
  ///
  /// Valid values include:
  ///
  /// *   `LIVE`: The extension is registered for use in CloudFormation operations.
  ///
  /// *   `DEPRECATED`: The extension has been deregistered and can no longer be used in CloudFormation operations.
  _i5.DeprecatedStatus? get deprecatedStatus;

  /// The type of extension.
  _i6.RegistryType? get type;

  /// Filter criteria to use in determining which extensions to return.
  ///
  /// Filters must be compatible with `Visibility` to return valid results. For example, specifying `AWS_TYPES` for `Category` and `PRIVATE` for `Visibility` returns an empty list of types, but specifying `PUBLIC` for `Visibility` returns the desired list.
  _i7.TypeFilters? get filters;

  /// The maximum number of results to be returned with a single call. If the number of available results exceeds this maximum, the response includes a `NextToken` value that you can assign to the `NextToken` request parameter to get the next set of results.
  int? get maxResults;

  /// If the previous paginated request didn't return all the remaining results, the response object's `NextToken` parameter value is set to a token. To retrieve the next set of results, call this action again and assign that token to the request object's `NextToken` parameter. If there are no remaining results, the previous response object's `NextToken` parameter is set to `null`.
  String? get nextToken;
  @override
  ListTypesInput getPayload() => this;
  @override
  List<Object?> get props => [
        visibility,
        provisioningType,
        deprecatedStatus,
        type,
        filters,
        maxResults,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ListTypesInput');
    helper.add(
      'visibility',
      visibility,
    );
    helper.add(
      'provisioningType',
      provisioningType,
    );
    helper.add(
      'deprecatedStatus',
      deprecatedStatus,
    );
    helper.add(
      'type',
      type,
    );
    helper.add(
      'filters',
      filters,
    );
    helper.add(
      'maxResults',
      maxResults,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class ListTypesInputAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<ListTypesInput> {
  const ListTypesInputAwsQuerySerializer() : super('ListTypesInput');

  @override
  Iterable<Type> get types => const [
        ListTypesInput,
        _$ListTypesInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  ListTypesInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListTypesInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'Visibility':
          if (value != null) {
            result.visibility = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.Visibility),
            ) as _i3.Visibility);
          }
          break;
        case 'ProvisioningType':
          if (value != null) {
            result.provisioningType = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i4.ProvisioningType),
            ) as _i4.ProvisioningType);
          }
          break;
        case 'DeprecatedStatus':
          if (value != null) {
            result.deprecatedStatus = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i5.DeprecatedStatus),
            ) as _i5.DeprecatedStatus);
          }
          break;
        case 'Type':
          if (value != null) {
            result.type = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i6.RegistryType),
            ) as _i6.RegistryType);
          }
          break;
        case 'Filters':
          if (value != null) {
            result.filters.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i7.TypeFilters),
            ) as _i7.TypeFilters));
          }
          break;
        case 'MaxResults':
          if (value != null) {
            result.maxResults = (serializers.deserialize(
              value,
              specifiedType: const FullType(int),
            ) as int);
          }
          break;
        case 'NextToken':
          if (value != null) {
            result.nextToken = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = (object as ListTypesInput);
    final result = <Object?>[
      const _i1.XmlElementName(
        'ListTypesInputResponse',
        _i1.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    if (payload.visibility != null) {
      result
        ..add(const _i1.XmlElementName('Visibility'))
        ..add(serializers.serialize(
          payload.visibility!,
          specifiedType: const FullType.nullable(_i3.Visibility),
        ));
    }
    if (payload.provisioningType != null) {
      result
        ..add(const _i1.XmlElementName('ProvisioningType'))
        ..add(serializers.serialize(
          payload.provisioningType!,
          specifiedType: const FullType.nullable(_i4.ProvisioningType),
        ));
    }
    if (payload.deprecatedStatus != null) {
      result
        ..add(const _i1.XmlElementName('DeprecatedStatus'))
        ..add(serializers.serialize(
          payload.deprecatedStatus!,
          specifiedType: const FullType.nullable(_i5.DeprecatedStatus),
        ));
    }
    if (payload.type != null) {
      result
        ..add(const _i1.XmlElementName('Type'))
        ..add(serializers.serialize(
          payload.type!,
          specifiedType: const FullType.nullable(_i6.RegistryType),
        ));
    }
    if (payload.filters != null) {
      result
        ..add(const _i1.XmlElementName('Filters'))
        ..add(serializers.serialize(
          payload.filters!,
          specifiedType: const FullType(_i7.TypeFilters),
        ));
    }
    if (payload.maxResults != null) {
      result
        ..add(const _i1.XmlElementName('MaxResults'))
        ..add(serializers.serialize(
          payload.maxResults!,
          specifiedType: const FullType.nullable(int),
        ));
    }
    if (payload.nextToken != null) {
      result
        ..add(const _i1.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          payload.nextToken!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
