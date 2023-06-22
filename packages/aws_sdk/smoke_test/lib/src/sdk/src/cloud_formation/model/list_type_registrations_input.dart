// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.list_type_registrations_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/registration_status.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/registry_type.dart'
    as _i3;

part 'list_type_registrations_input.g.dart';

abstract class ListTypeRegistrationsInput
    with
        _i1.HttpInput<ListTypeRegistrationsInput>,
        _i2.AWSEquatable<ListTypeRegistrationsInput>
    implements
        Built<ListTypeRegistrationsInput, ListTypeRegistrationsInputBuilder> {
  factory ListTypeRegistrationsInput({
    _i3.RegistryType? type,
    String? typeName,
    String? typeArn,
    _i4.RegistrationStatus? registrationStatusFilter,
    int? maxResults,
    String? nextToken,
  }) {
    return _$ListTypeRegistrationsInput._(
      type: type,
      typeName: typeName,
      typeArn: typeArn,
      registrationStatusFilter: registrationStatusFilter,
      maxResults: maxResults,
      nextToken: nextToken,
    );
  }

  factory ListTypeRegistrationsInput.build(
          [void Function(ListTypeRegistrationsInputBuilder) updates]) =
      _$ListTypeRegistrationsInput;

  const ListTypeRegistrationsInput._();

  factory ListTypeRegistrationsInput.fromRequest(
    ListTypeRegistrationsInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<ListTypeRegistrationsInput>>
      serializers = [ListTypeRegistrationsInputAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ListTypeRegistrationsInputBuilder b) {}

  /// The kind of extension.
  ///
  /// Conditional: You must specify either `TypeName` and `Type`, or `Arn`.
  _i3.RegistryType? get type;

  /// The name of the extension.
  ///
  /// Conditional: You must specify either `TypeName` and `Type`, or `Arn`.
  String? get typeName;

  /// The Amazon Resource Name (ARN) of the extension.
  ///
  /// Conditional: You must specify either `TypeName` and `Type`, or `Arn`.
  String? get typeArn;

  /// The current status of the extension registration request.
  ///
  /// The default is `IN_PROGRESS`.
  _i4.RegistrationStatus? get registrationStatusFilter;

  /// The maximum number of results to be returned with a single call. If the number of available results exceeds this maximum, the response includes a `NextToken` value that you can assign to the `NextToken` request parameter to get the next set of results.
  int? get maxResults;

  /// If the previous paginated request didn't return all the remaining results, the response object's `NextToken` parameter value is set to a token. To retrieve the next set of results, call this action again and assign that token to the request object's `NextToken` parameter. If there are no remaining results, the previous response object's `NextToken` parameter is set to `null`.
  String? get nextToken;
  @override
  ListTypeRegistrationsInput getPayload() => this;
  @override
  List<Object?> get props => [
        type,
        typeName,
        typeArn,
        registrationStatusFilter,
        maxResults,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ListTypeRegistrationsInput')
      ..add(
        'type',
        type,
      )
      ..add(
        'typeName',
        typeName,
      )
      ..add(
        'typeArn',
        typeArn,
      )
      ..add(
        'registrationStatusFilter',
        registrationStatusFilter,
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

class ListTypeRegistrationsInputAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<ListTypeRegistrationsInput> {
  const ListTypeRegistrationsInputAwsQuerySerializer()
      : super('ListTypeRegistrationsInput');

  @override
  Iterable<Type> get types => const [
        ListTypeRegistrationsInput,
        _$ListTypeRegistrationsInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  ListTypeRegistrationsInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListTypeRegistrationsInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Type':
          result.type = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.RegistryType),
          ) as _i3.RegistryType);
        case 'TypeName':
          result.typeName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'TypeArn':
          result.typeArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'RegistrationStatusFilter':
          result.registrationStatusFilter = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i4.RegistrationStatus),
          ) as _i4.RegistrationStatus);
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
    ListTypeRegistrationsInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'ListTypeRegistrationsInputResponse',
        _i1.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final ListTypeRegistrationsInput(
      :type,
      :typeName,
      :typeArn,
      :registrationStatusFilter,
      :maxResults,
      :nextToken
    ) = object;
    if (type != null) {
      result$
        ..add(const _i1.XmlElementName('Type'))
        ..add(serializers.serialize(
          type,
          specifiedType: const FullType.nullable(_i3.RegistryType),
        ));
    }
    if (typeName != null) {
      result$
        ..add(const _i1.XmlElementName('TypeName'))
        ..add(serializers.serialize(
          typeName,
          specifiedType: const FullType(String),
        ));
    }
    if (typeArn != null) {
      result$
        ..add(const _i1.XmlElementName('TypeArn'))
        ..add(serializers.serialize(
          typeArn,
          specifiedType: const FullType(String),
        ));
    }
    if (registrationStatusFilter != null) {
      result$
        ..add(const _i1.XmlElementName('RegistrationStatusFilter'))
        ..add(serializers.serialize(
          registrationStatusFilter,
          specifiedType: const FullType.nullable(_i4.RegistrationStatus),
        ));
    }
    if (maxResults != null) {
      result$
        ..add(const _i1.XmlElementName('MaxResults'))
        ..add(serializers.serialize(
          maxResults,
          specifiedType: const FullType.nullable(int),
        ));
    }
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
