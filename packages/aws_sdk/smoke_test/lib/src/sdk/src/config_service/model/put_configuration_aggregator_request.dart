// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.config_service.model.put_configuration_aggregator_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i6;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/config_service/model/account_aggregation_source.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/config_service/model/organization_aggregation_source.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/config_service/model/tag.dart' as _i5;

part 'put_configuration_aggregator_request.g.dart';

abstract class PutConfigurationAggregatorRequest
    with
        _i1.HttpInput<PutConfigurationAggregatorRequest>,
        _i2.AWSEquatable<PutConfigurationAggregatorRequest>
    implements
        Built<PutConfigurationAggregatorRequest,
            PutConfigurationAggregatorRequestBuilder> {
  factory PutConfigurationAggregatorRequest({
    List<_i3.AccountAggregationSource>? accountAggregationSources,
    required String configurationAggregatorName,
    _i4.OrganizationAggregationSource? organizationAggregationSource,
    List<_i5.Tag>? tags,
  }) {
    return _$PutConfigurationAggregatorRequest._(
      accountAggregationSources: accountAggregationSources == null
          ? null
          : _i6.BuiltList(accountAggregationSources),
      configurationAggregatorName: configurationAggregatorName,
      organizationAggregationSource: organizationAggregationSource,
      tags: tags == null ? null : _i6.BuiltList(tags),
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

  static const List<_i1.SmithySerializer> serializers = [
    PutConfigurationAggregatorRequestAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PutConfigurationAggregatorRequestBuilder b) {}

  /// A list of AccountAggregationSource object.
  _i6.BuiltList<_i3.AccountAggregationSource>? get accountAggregationSources;

  /// The name of the configuration aggregator.
  String get configurationAggregatorName;

  /// An OrganizationAggregationSource object.
  _i4.OrganizationAggregationSource? get organizationAggregationSource;

  /// An array of tag object.
  _i6.BuiltList<_i5.Tag>? get tags;
  @override
  PutConfigurationAggregatorRequest getPayload() => this;
  @override
  List<Object?> get props => [
        accountAggregationSources,
        configurationAggregatorName,
        organizationAggregationSource,
        tags,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('PutConfigurationAggregatorRequest');
    helper.add(
      'accountAggregationSources',
      accountAggregationSources,
    );
    helper.add(
      'configurationAggregatorName',
      configurationAggregatorName,
    );
    helper.add(
      'organizationAggregationSource',
      organizationAggregationSource,
    );
    helper.add(
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
      switch (key) {
        case 'AccountAggregationSources':
          if (value != null) {
            result.accountAggregationSources.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i6.BuiltList,
                [FullType(_i3.AccountAggregationSource)],
              ),
            ) as _i6.BuiltList<_i3.AccountAggregationSource>));
          }
          break;
        case 'ConfigurationAggregatorName':
          result.configurationAggregatorName = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'OrganizationAggregationSource':
          if (value != null) {
            result.organizationAggregationSource
                .replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i4.OrganizationAggregationSource),
            ) as _i4.OrganizationAggregationSource));
          }
          break;
        case 'Tags':
          if (value != null) {
            result.tags.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i6.BuiltList,
                [FullType(_i5.Tag)],
              ),
            ) as _i6.BuiltList<_i5.Tag>));
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
    final payload = (object as PutConfigurationAggregatorRequest);
    final result = <Object?>[
      'ConfigurationAggregatorName',
      serializers.serialize(
        payload.configurationAggregatorName,
        specifiedType: const FullType(String),
      ),
    ];
    if (payload.accountAggregationSources != null) {
      result
        ..add('AccountAggregationSources')
        ..add(serializers.serialize(
          payload.accountAggregationSources!,
          specifiedType: const FullType(
            _i6.BuiltList,
            [FullType(_i3.AccountAggregationSource)],
          ),
        ));
    }
    if (payload.organizationAggregationSource != null) {
      result
        ..add('OrganizationAggregationSource')
        ..add(serializers.serialize(
          payload.organizationAggregationSource!,
          specifiedType: const FullType(_i4.OrganizationAggregationSource),
        ));
    }
    if (payload.tags != null) {
      result
        ..add('Tags')
        ..add(serializers.serialize(
          payload.tags!,
          specifiedType: const FullType(
            _i6.BuiltList,
            [FullType(_i5.Tag)],
          ),
        ));
    }
    return result;
  }
}
