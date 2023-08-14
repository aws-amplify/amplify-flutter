// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.get_ipam_address_history_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'get_ipam_address_history_request.g.dart';

abstract class GetIpamAddressHistoryRequest
    with
        _i1.HttpInput<GetIpamAddressHistoryRequest>,
        _i2.AWSEquatable<GetIpamAddressHistoryRequest>
    implements
        Built<GetIpamAddressHistoryRequest,
            GetIpamAddressHistoryRequestBuilder> {
  factory GetIpamAddressHistoryRequest({
    bool? dryRun,
    String? cidr,
    String? ipamScopeId,
    String? vpcId,
    DateTime? startTime,
    DateTime? endTime,
    int? maxResults,
    String? nextToken,
  }) {
    dryRun ??= false;
    maxResults ??= 0;
    return _$GetIpamAddressHistoryRequest._(
      dryRun: dryRun,
      cidr: cidr,
      ipamScopeId: ipamScopeId,
      vpcId: vpcId,
      startTime: startTime,
      endTime: endTime,
      maxResults: maxResults,
      nextToken: nextToken,
    );
  }

  factory GetIpamAddressHistoryRequest.build(
          [void Function(GetIpamAddressHistoryRequestBuilder) updates]) =
      _$GetIpamAddressHistoryRequest;

  const GetIpamAddressHistoryRequest._();

  factory GetIpamAddressHistoryRequest.fromRequest(
    GetIpamAddressHistoryRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<GetIpamAddressHistoryRequest>>
      serializers = [GetIpamAddressHistoryRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetIpamAddressHistoryRequestBuilder b) {
    b
      ..dryRun = false
      ..maxResults = 0;
  }

  /// A check for whether you have the required permissions for the action without actually making the request and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The CIDR you want the history of. The CIDR can be an IPv4 or IPv6 IP address range. If you enter a /16 IPv4 CIDR, you will get records that match it exactly. You will not get records for any subnets within the /16 CIDR.
  String? get cidr;

  /// The ID of the IPAM scope that the CIDR is in.
  String? get ipamScopeId;

  /// The ID of the VPC you want your history records filtered by.
  String? get vpcId;

  /// The start of the time period for which you are looking for history. If you omit this option, it will default to the value of EndTime.
  DateTime? get startTime;

  /// The end of the time period for which you are looking for history. If you omit this option, it will default to the current time.
  DateTime? get endTime;

  /// The maximum number of historical results you would like returned per page. Defaults to 100.
  int get maxResults;

  /// The token for the next page of results.
  String? get nextToken;
  @override
  GetIpamAddressHistoryRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        cidr,
        ipamScopeId,
        vpcId,
        startTime,
        endTime,
        maxResults,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetIpamAddressHistoryRequest')
      ..add(
        'dryRun',
        dryRun,
      )
      ..add(
        'cidr',
        cidr,
      )
      ..add(
        'ipamScopeId',
        ipamScopeId,
      )
      ..add(
        'vpcId',
        vpcId,
      )
      ..add(
        'startTime',
        startTime,
      )
      ..add(
        'endTime',
        endTime,
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

class GetIpamAddressHistoryRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<GetIpamAddressHistoryRequest> {
  const GetIpamAddressHistoryRequestEc2QuerySerializer()
      : super('GetIpamAddressHistoryRequest');

  @override
  Iterable<Type> get types => const [
        GetIpamAddressHistoryRequest,
        _$GetIpamAddressHistoryRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  GetIpamAddressHistoryRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetIpamAddressHistoryRequestBuilder();
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
        case 'Cidr':
          result.cidr = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'IpamScopeId':
          result.ipamScopeId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'VpcId':
          result.vpcId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'StartTime':
          result.startTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'EndTime':
          result.endTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
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
    GetIpamAddressHistoryRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'GetIpamAddressHistoryRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final GetIpamAddressHistoryRequest(
      :dryRun,
      :cidr,
      :ipamScopeId,
      :vpcId,
      :startTime,
      :endTime,
      :maxResults,
      :nextToken
    ) = object;
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    if (cidr != null) {
      result$
        ..add(const _i1.XmlElementName('Cidr'))
        ..add(serializers.serialize(
          cidr,
          specifiedType: const FullType(String),
        ));
    }
    if (ipamScopeId != null) {
      result$
        ..add(const _i1.XmlElementName('IpamScopeId'))
        ..add(serializers.serialize(
          ipamScopeId,
          specifiedType: const FullType(String),
        ));
    }
    if (vpcId != null) {
      result$
        ..add(const _i1.XmlElementName('VpcId'))
        ..add(serializers.serialize(
          vpcId,
          specifiedType: const FullType(String),
        ));
    }
    if (startTime != null) {
      result$
        ..add(const _i1.XmlElementName('StartTime'))
        ..add(serializers.serialize(
          startTime,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (endTime != null) {
      result$
        ..add(const _i1.XmlElementName('EndTime'))
        ..add(serializers.serialize(
          endTime,
          specifiedType: const FullType.nullable(DateTime),
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
