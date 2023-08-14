// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'accept_vpc_endpoint_connections_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AcceptVpcEndpointConnectionsRequest
    extends AcceptVpcEndpointConnectionsRequest {
  @override
  final bool dryRun;
  @override
  final String? serviceId;
  @override
  final _i3.BuiltList<String>? vpcEndpointIds;

  factory _$AcceptVpcEndpointConnectionsRequest(
          [void Function(AcceptVpcEndpointConnectionsRequestBuilder)?
              updates]) =>
      (new AcceptVpcEndpointConnectionsRequestBuilder()..update(updates))
          ._build();

  _$AcceptVpcEndpointConnectionsRequest._(
      {required this.dryRun, this.serviceId, this.vpcEndpointIds})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'AcceptVpcEndpointConnectionsRequest', 'dryRun');
  }

  @override
  AcceptVpcEndpointConnectionsRequest rebuild(
          void Function(AcceptVpcEndpointConnectionsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AcceptVpcEndpointConnectionsRequestBuilder toBuilder() =>
      new AcceptVpcEndpointConnectionsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AcceptVpcEndpointConnectionsRequest &&
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

class AcceptVpcEndpointConnectionsRequestBuilder
    implements
        Builder<AcceptVpcEndpointConnectionsRequest,
            AcceptVpcEndpointConnectionsRequestBuilder> {
  _$AcceptVpcEndpointConnectionsRequest? _$v;

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

  AcceptVpcEndpointConnectionsRequestBuilder() {
    AcceptVpcEndpointConnectionsRequest._init(this);
  }

  AcceptVpcEndpointConnectionsRequestBuilder get _$this {
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
  void replace(AcceptVpcEndpointConnectionsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AcceptVpcEndpointConnectionsRequest;
  }

  @override
  void update(
      void Function(AcceptVpcEndpointConnectionsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AcceptVpcEndpointConnectionsRequest build() => _build();

  _$AcceptVpcEndpointConnectionsRequest _build() {
    _$AcceptVpcEndpointConnectionsRequest _$result;
    try {
      _$result = _$v ??
          new _$AcceptVpcEndpointConnectionsRequest._(
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'AcceptVpcEndpointConnectionsRequest', 'dryRun'),
              serviceId: serviceId,
              vpcEndpointIds: _vpcEndpointIds?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vpcEndpointIds';
        _vpcEndpointIds?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AcceptVpcEndpointConnectionsRequest',
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
