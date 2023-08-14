// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_vpn_connections_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeVpnConnectionsRequest extends DescribeVpnConnectionsRequest {
  @override
  final _i3.BuiltList<Filter>? filters;
  @override
  final _i3.BuiltList<String>? vpnConnectionIds;
  @override
  final bool dryRun;

  factory _$DescribeVpnConnectionsRequest(
          [void Function(DescribeVpnConnectionsRequestBuilder)? updates]) =>
      (new DescribeVpnConnectionsRequestBuilder()..update(updates))._build();

  _$DescribeVpnConnectionsRequest._(
      {this.filters, this.vpnConnectionIds, required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DescribeVpnConnectionsRequest', 'dryRun');
  }

  @override
  DescribeVpnConnectionsRequest rebuild(
          void Function(DescribeVpnConnectionsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeVpnConnectionsRequestBuilder toBuilder() =>
      new DescribeVpnConnectionsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeVpnConnectionsRequest &&
        filters == other.filters &&
        vpnConnectionIds == other.vpnConnectionIds &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, vpnConnectionIds.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeVpnConnectionsRequestBuilder
    implements
        Builder<DescribeVpnConnectionsRequest,
            DescribeVpnConnectionsRequestBuilder> {
  _$DescribeVpnConnectionsRequest? _$v;

  _i3.ListBuilder<Filter>? _filters;
  _i3.ListBuilder<Filter> get filters =>
      _$this._filters ??= new _i3.ListBuilder<Filter>();
  set filters(_i3.ListBuilder<Filter>? filters) => _$this._filters = filters;

  _i3.ListBuilder<String>? _vpnConnectionIds;
  _i3.ListBuilder<String> get vpnConnectionIds =>
      _$this._vpnConnectionIds ??= new _i3.ListBuilder<String>();
  set vpnConnectionIds(_i3.ListBuilder<String>? vpnConnectionIds) =>
      _$this._vpnConnectionIds = vpnConnectionIds;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  DescribeVpnConnectionsRequestBuilder() {
    DescribeVpnConnectionsRequest._init(this);
  }

  DescribeVpnConnectionsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _filters = $v.filters?.toBuilder();
      _vpnConnectionIds = $v.vpnConnectionIds?.toBuilder();
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeVpnConnectionsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeVpnConnectionsRequest;
  }

  @override
  void update(void Function(DescribeVpnConnectionsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeVpnConnectionsRequest build() => _build();

  _$DescribeVpnConnectionsRequest _build() {
    _$DescribeVpnConnectionsRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeVpnConnectionsRequest._(
              filters: _filters?.build(),
              vpnConnectionIds: _vpnConnectionIds?.build(),
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'DescribeVpnConnectionsRequest', 'dryRun'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'filters';
        _filters?.build();
        _$failedField = 'vpnConnectionIds';
        _vpnConnectionIds?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeVpnConnectionsRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
