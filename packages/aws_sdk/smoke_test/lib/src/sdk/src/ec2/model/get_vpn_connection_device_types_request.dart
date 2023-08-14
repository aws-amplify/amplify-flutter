// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.get_vpn_connection_device_types_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'get_vpn_connection_device_types_request.g.dart';

abstract class GetVpnConnectionDeviceTypesRequest
    with
        _i1.HttpInput<GetVpnConnectionDeviceTypesRequest>,
        _i2.AWSEquatable<GetVpnConnectionDeviceTypesRequest>
    implements
        Built<GetVpnConnectionDeviceTypesRequest,
            GetVpnConnectionDeviceTypesRequestBuilder> {
  factory GetVpnConnectionDeviceTypesRequest({
    int? maxResults,
    String? nextToken,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$GetVpnConnectionDeviceTypesRequest._(
      maxResults: maxResults,
      nextToken: nextToken,
      dryRun: dryRun,
    );
  }

  factory GetVpnConnectionDeviceTypesRequest.build(
          [void Function(GetVpnConnectionDeviceTypesRequestBuilder) updates]) =
      _$GetVpnConnectionDeviceTypesRequest;

  const GetVpnConnectionDeviceTypesRequest._();

  factory GetVpnConnectionDeviceTypesRequest.fromRequest(
    GetVpnConnectionDeviceTypesRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<GetVpnConnectionDeviceTypesRequest>>
      serializers = [GetVpnConnectionDeviceTypesRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetVpnConnectionDeviceTypesRequestBuilder b) {
    b.dryRun = false;
  }

  /// The maximum number of results returned by `GetVpnConnectionDeviceTypes` in paginated output. When this parameter is used, `GetVpnConnectionDeviceTypes` only returns `MaxResults` results in a single page along with a `NextToken` response element. The remaining results of the initial request can be seen by sending another `GetVpnConnectionDeviceTypes` request with the returned `NextToken` value. This value can be between 200 and 1000. If this parameter is not used, then `GetVpnConnectionDeviceTypes` returns all results.
  int? get maxResults;

  /// The `NextToken` value returned from a previous paginated `GetVpnConnectionDeviceTypes` request where `MaxResults` was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the `NextToken` value. This value is null when there are no more results to return.
  String? get nextToken;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  GetVpnConnectionDeviceTypesRequest getPayload() => this;
  @override
  List<Object?> get props => [
        maxResults,
        nextToken,
        dryRun,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GetVpnConnectionDeviceTypesRequest')
          ..add(
            'maxResults',
            maxResults,
          )
          ..add(
            'nextToken',
            nextToken,
          )
          ..add(
            'dryRun',
            dryRun,
          );
    return helper.toString();
  }
}

class GetVpnConnectionDeviceTypesRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<GetVpnConnectionDeviceTypesRequest> {
  const GetVpnConnectionDeviceTypesRequestEc2QuerySerializer()
      : super('GetVpnConnectionDeviceTypesRequest');

  @override
  Iterable<Type> get types => const [
        GetVpnConnectionDeviceTypesRequest,
        _$GetVpnConnectionDeviceTypesRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  GetVpnConnectionDeviceTypesRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetVpnConnectionDeviceTypesRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
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
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GetVpnConnectionDeviceTypesRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'GetVpnConnectionDeviceTypesRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final GetVpnConnectionDeviceTypesRequest(:maxResults, :nextToken, :dryRun) =
        object;
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
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}
