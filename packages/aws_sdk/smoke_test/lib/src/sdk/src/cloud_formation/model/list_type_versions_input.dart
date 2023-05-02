// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.cloud_formation.model.list_type_versions_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/deprecated_status.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/registry_type.dart'
    as _i3;

part 'list_type_versions_input.g.dart';

abstract class ListTypeVersionsInput
    with
        _i1.HttpInput<ListTypeVersionsInput>,
        _i2.AWSEquatable<ListTypeVersionsInput>
    implements Built<ListTypeVersionsInput, ListTypeVersionsInputBuilder> {
  factory ListTypeVersionsInput({
    _i3.RegistryType? type,
    String? typeName,
    String? arn,
    int? maxResults,
    String? nextToken,
    _i4.DeprecatedStatus? deprecatedStatus,
    String? publisherId,
  }) {
    return _$ListTypeVersionsInput._(
      type: type,
      typeName: typeName,
      arn: arn,
      maxResults: maxResults,
      nextToken: nextToken,
      deprecatedStatus: deprecatedStatus,
      publisherId: publisherId,
    );
  }

  factory ListTypeVersionsInput.build(
          [void Function(ListTypeVersionsInputBuilder) updates]) =
      _$ListTypeVersionsInput;

  const ListTypeVersionsInput._();

  factory ListTypeVersionsInput.fromRequest(
    ListTypeVersionsInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    ListTypeVersionsInputAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ListTypeVersionsInputBuilder b) {}

  /// The kind of the extension.
  ///
  /// Conditional: You must specify either `TypeName` and `Type`, or `Arn`.
  _i3.RegistryType? get type;

  /// The name of the extension for which you want version summary information.
  ///
  /// Conditional: You must specify either `TypeName` and `Type`, or `Arn`.
  String? get typeName;

  /// The Amazon Resource Name (ARN) of the extension for which you want version summary information.
  ///
  /// Conditional: You must specify either `TypeName` and `Type`, or `Arn`.
  String? get arn;

  /// The maximum number of results to be returned with a single call. If the number of available results exceeds this maximum, the response includes a `NextToken` value that you can assign to the `NextToken` request parameter to get the next set of results.
  int? get maxResults;

  /// If the previous paginated request didn't return all of the remaining results, the response object's `NextToken` parameter value is set to a token. To retrieve the next set of results, call this action again and assign that token to the request object's `NextToken` parameter. If there are no remaining results, the previous response object's `NextToken` parameter is set to `null`.
  String? get nextToken;

  /// The deprecation status of the extension versions that you want to get summary information about.
  ///
  /// Valid values include:
  ///
  /// *   `LIVE`: The extension version is registered and can be used in CloudFormation operations, dependent on its provisioning behavior and visibility scope.
  ///
  /// *   `DEPRECATED`: The extension version has been deregistered and can no longer be used in CloudFormation operations.
  ///
  ///
  /// The default is `LIVE`.
  _i4.DeprecatedStatus? get deprecatedStatus;

  /// The publisher ID of the extension publisher.
  ///
  /// Extensions published by Amazon aren't assigned a publisher ID.
  String? get publisherId;
  @override
  ListTypeVersionsInput getPayload() => this;
  @override
  List<Object?> get props => [
        type,
        typeName,
        arn,
        maxResults,
        nextToken,
        deprecatedStatus,
        publisherId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ListTypeVersionsInput');
    helper.add(
      'type',
      type,
    );
    helper.add(
      'typeName',
      typeName,
    );
    helper.add(
      'arn',
      arn,
    );
    helper.add(
      'maxResults',
      maxResults,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    helper.add(
      'deprecatedStatus',
      deprecatedStatus,
    );
    helper.add(
      'publisherId',
      publisherId,
    );
    return helper.toString();
  }
}

class ListTypeVersionsInputAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<ListTypeVersionsInput> {
  const ListTypeVersionsInputAwsQuerySerializer()
      : super('ListTypeVersionsInput');

  @override
  Iterable<Type> get types => const [
        ListTypeVersionsInput,
        _$ListTypeVersionsInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  ListTypeVersionsInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListTypeVersionsInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'Type':
          if (value != null) {
            result.type = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.RegistryType),
            ) as _i3.RegistryType);
          }
          break;
        case 'TypeName':
          if (value != null) {
            result.typeName = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'Arn':
          if (value != null) {
            result.arn = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
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
        case 'DeprecatedStatus':
          if (value != null) {
            result.deprecatedStatus = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i4.DeprecatedStatus),
            ) as _i4.DeprecatedStatus);
          }
          break;
        case 'PublisherId':
          if (value != null) {
            result.publisherId = (serializers.deserialize(
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
    final payload = (object as ListTypeVersionsInput);
    final result = <Object?>[
      const _i1.XmlElementName(
        'ListTypeVersionsInputResponse',
        _i1.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    if (payload.type != null) {
      result
        ..add(const _i1.XmlElementName('Type'))
        ..add(serializers.serialize(
          payload.type!,
          specifiedType: const FullType.nullable(_i3.RegistryType),
        ));
    }
    if (payload.typeName != null) {
      result
        ..add(const _i1.XmlElementName('TypeName'))
        ..add(serializers.serialize(
          payload.typeName!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.arn != null) {
      result
        ..add(const _i1.XmlElementName('Arn'))
        ..add(serializers.serialize(
          payload.arn!,
          specifiedType: const FullType(String),
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
    if (payload.deprecatedStatus != null) {
      result
        ..add(const _i1.XmlElementName('DeprecatedStatus'))
        ..add(serializers.serialize(
          payload.deprecatedStatus!,
          specifiedType: const FullType.nullable(_i4.DeprecatedStatus),
        ));
    }
    if (payload.publisherId != null) {
      result
        ..add(const _i1.XmlElementName('PublisherId'))
        ..add(serializers.serialize(
          payload.publisherId!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
