// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.config_service.model.put_configuration_aggregator_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/config_service/model/account_aggregation_source.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/organization_aggregation_source.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/tag.dart';

part 'put_configuration_aggregator_request.g.dart';

abstract class PutConfigurationAggregatorRequest
    with
        _i1.HttpInput<PutConfigurationAggregatorRequest>,
        _i2.AWSEquatable<PutConfigurationAggregatorRequest>
    implements
        Built<PutConfigurationAggregatorRequest,
            PutConfigurationAggregatorRequestBuilder> {
  factory PutConfigurationAggregatorRequest({
    required String configurationAggregatorName,
    List<AccountAggregationSource>? accountAggregationSources,
    OrganizationAggregationSource? organizationAggregationSource,
    List<Tag>? tags,
  }) {
    return _$PutConfigurationAggregatorRequest._(
      configurationAggregatorName: configurationAggregatorName,
      accountAggregationSources: accountAggregationSources == null
          ? null
          : _i3.BuiltList(accountAggregationSources),
      organizationAggregationSource: organizationAggregationSource,
      tags: tags == null ? null : _i3.BuiltList(tags),
    );
  }

  factory PutConfigurationAggregatorRequest.build(
          [void Function(PutConfigurationAggregatorRequestBuilder) updates]) =
      _$PutConfigurationAggregatorRequest;

  const PutConfigurationAggregatorRequest._();

  factory PutConfigurationAggregatorRequest.fromRequest(
    PutConfigurationAggregatorRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<PutConfigurationAggregatorRequest>>
      serializers = [PutConfigurationAggregatorRequestAwsJson11Serializer()];

  /// The name of the configuration aggregator.
  String get configurationAggregatorName;

  /// A list of AccountAggregationSource object.
  _i3.BuiltList<AccountAggregationSource>? get accountAggregationSources;

  /// An OrganizationAggregationSource object.
  OrganizationAggregationSource? get organizationAggregationSource;

  /// An array of tag object.
  _i3.BuiltList<Tag>? get tags;
  @override
  PutConfigurationAggregatorRequest getPayload() => this;
  @override
  List<Object?> get props => [
        configurationAggregatorName,
        accountAggregationSources,
        organizationAggregationSource,
        tags,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('PutConfigurationAggregatorRequest')
          ..add(
            'configurationAggregatorName',
            configurationAggregatorName,
          )
          ..add(
            'accountAggregationSources',
            accountAggregationSources,
          )
          ..add(
            'organizationAggregationSource',
            organizationAggregationSource,
          )
          ..add(
            'tags',
            tags,
          );
    return helper.toString();
  }
}

class PutConfigurationAggregatorRequestAwsJson11Serializer
    extends _i1.StructuredSmithySerializer<PutConfigurationAggregatorRequest> {
  const PutConfigurationAggregatorRequestAwsJson11Serializer()
      : super('PutConfigurationAggregatorRequest');

  @override
  Iterable<Type> get types => const [
        PutConfigurationAggregatorRequest,
        _$PutConfigurationAggregatorRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  PutConfigurationAggregatorRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PutConfigurationAggregatorRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ConfigurationAggregatorName':
          result.configurationAggregatorName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'AccountAggregationSources':
          result.accountAggregationSources.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(AccountAggregationSource)],
            ),
          ) as _i3.BuiltList<AccountAggregationSource>));
        case 'OrganizationAggregationSource':
          result.organizationAggregationSource.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(OrganizationAggregationSource),
          ) as OrganizationAggregationSource));
        case 'Tags':
          result.tags.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(Tag)],
            ),
          ) as _i3.BuiltList<Tag>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    PutConfigurationAggregatorRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final PutConfigurationAggregatorRequest(
      :configurationAggregatorName,
      :accountAggregationSources,
      :organizationAggregationSource,
      :tags
    ) = object;
    result$.addAll([
      'ConfigurationAggregatorName',
      serializers.serialize(
        configurationAggregatorName,
        specifiedType: const FullType(String),
      ),
    ]);
    if (accountAggregationSources != null) {
      result$
        ..add('AccountAggregationSources')
        ..add(serializers.serialize(
          accountAggregationSources,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(AccountAggregationSource)],
          ),
        ));
    }
    if (organizationAggregationSource != null) {
      result$
        ..add('OrganizationAggregationSource')
        ..add(serializers.serialize(
          organizationAggregationSource,
          specifiedType: const FullType(OrganizationAggregationSource),
        ));
    }
    if (tags != null) {
      result$
        ..add('Tags')
        ..add(serializers.serialize(
          tags,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(Tag)],
          ),
        ));
    }
    return result$;
  }
}
