// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reject_vpc_endpoint_connections_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RejectVpcEndpointConnectionsRequest
    extends RejectVpcEndpointConnectionsRequest {
  @override
  final bool dryRun;
  @override
  final String? serviceId;
  @override
  final _i3.BuiltList<String>? vpcEndpointIds;

  factory _$RejectVpcEndpointConnectionsRequest(
          [void Function(RejectVpcEndpointConnectionsRequestBuilder)?
              updates]) =>
      (new RejectVpcEndpointConnectionsRequestBuilder()..update(updates))
          ._build();

  _$RejectVpcEndpointConnectionsRequest._(
      {required this.dryRun, this.serviceId, this.vpcEndpointIds})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'RejectVpcEndpointConnectionsRequest', 'dryRun');
  }

  @override
  RejectVpcEndpointConnectionsRequest rebuild(
          void Function(RejectVpcEndpointConnectionsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RejectVpcEndpointConnectionsRequestBuilder toBuilder() =>
      new RejectVpcEndpointConnectionsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RejectVpcEndpointConnectionsRequest &&
        dryRun == other.dryRun &&
        serviceId == other.serviceId &&
        vpcEndpointIds == other.vpcEndpointIds;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, serviceId.hashCode);
    _$hash = $jc(_$hash, vpcEndpointIds.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class RejectVpcEndpointConnectionsRequestBuilder
    implements
        Builder<RejectVpcEndpointConnectionsRequest,
            RejectVpcEndpointConnectionsRequestBuilder> {
  _$RejectVpcEndpointConnectionsRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _serviceId;
  String? get serviceId => _$this._serviceId;
  set serviceId(String? serviceId) => _$this._serviceId = serviceId;

  _i3.ListBuilder<String>? _vpcEndpointIds;
  _i3.ListBuilder<String> get vpcEndpointIds =>
      _$this._vpcEndpointIds ??= new _i3.ListBuilder<String>();
  set vpcEndpointIds(_i3.ListBuilder<String>? vpcEndpointIds) =>
      _$this._vpcEndpointIds = vpcEndpointIds;

  RejectVpcEndpointConnectionsRequestBuilder() {
    RejectVpcEndpointConnectionsRequest._init(this);
  }

  RejectVpcEndpointConnectionsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _serviceId = $v.serviceId;
      _vpcEndpointIds = $v.vpcEndpointIds?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RejectVpcEndpointConnectionsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RejectVpcEndpointConnectionsRequest;
  }

  @override
  void update(
      void Function(RejectVpcEndpointConnectionsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RejectVpcEndpointConnectionsRequest build() => _build();

  _$RejectVpcEndpointConnectionsRequest _build() {
    _$RejectVpcEndpointConnectionsRequest _$result;
    try {
      _$result = _$v ??
          new _$RejectVpcEndpointConnectionsRequest._(
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'RejectVpcEndpointConnectionsRequest', 'dryRun'),
              serviceId: serviceId,
              vpcEndpointIds: _vpcEndpointIds?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vpcEndpointIds';
        _vpcEndpointIds?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'RejectVpcEndpointConnectionsRequest',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
