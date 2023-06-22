// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.open_id_connect_provider_list_entry; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'open_id_connect_provider_list_entry.g.dart';

/// Contains the Amazon Resource Name (ARN) for an IAM OpenID Connect provider.
abstract class OpenIdConnectProviderListEntry
    with
        _i1.AWSEquatable<OpenIdConnectProviderListEntry>
    implements
        Built<OpenIdConnectProviderListEntry,
            OpenIdConnectProviderListEntryBuilder> {
  /// Contains the Amazon Resource Name (ARN) for an IAM OpenID Connect provider.
  factory OpenIdConnectProviderListEntry({String? arn}) {
    return _$OpenIdConnectProviderListEntry._(arn: arn);
  }

  /// Contains the Amazon Resource Name (ARN) for an IAM OpenID Connect provider.
  factory OpenIdConnectProviderListEntry.build(
          [void Function(OpenIdConnectProviderListEntryBuilder) updates]) =
      _$OpenIdConnectProviderListEntry;

  const OpenIdConnectProviderListEntry._();

  static const List<_i2.SmithySerializer<OpenIdConnectProviderListEntry>>
      serializers = [OpenIdConnectProviderListEntryAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(OpenIdConnectProviderListEntryBuilder b) {}

  /// The Amazon Resource Name (ARN). ARNs are unique identifiers for Amazon Web Services resources.
  ///
  /// For more information about ARNs, go to [Amazon Resource Names (ARNs)](https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html) in the _Amazon Web Services General Reference_.
  String? get arn;
  @override
  List<Object?> get props => [arn];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('OpenIdConnectProviderListEntry')
      ..add(
        'arn',
        arn,
      );
    return helper.toString();
  }
}

class OpenIdConnectProviderListEntryAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<OpenIdConnectProviderListEntry> {
  const OpenIdConnectProviderListEntryAwsQuerySerializer()
      : super('OpenIdConnectProviderListEntry');

  @override
  Iterable<Type> get types => const [
        OpenIdConnectProviderListEntry,
        _$OpenIdConnectProviderListEntry,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  OpenIdConnectProviderListEntry deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OpenIdConnectProviderListEntryBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Arn':
          result.arn = (serializers.deserialize(
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
    OpenIdConnectProviderListEntry object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'OpenIdConnectProviderListEntryResponse',
        _i2.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final OpenIdConnectProviderListEntry(:arn) = object;
    if (arn != null) {
      result$
        ..add(const _i2.XmlElementName('Arn'))
        ..add(serializers.serialize(
          arn,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
