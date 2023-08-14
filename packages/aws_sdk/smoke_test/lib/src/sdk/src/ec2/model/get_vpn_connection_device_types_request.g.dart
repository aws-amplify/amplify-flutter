// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_vpn_connection_device_types_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetVpnConnectionDeviceTypesRequest
    extends GetVpnConnectionDeviceTypesRequest {
  @override
  final int? maxResults;
  @override
  final String? nextToken;
  @override
  final bool dryRun;

  factory _$GetVpnConnectionDeviceTypesRequest(
          [void Function(GetVpnConnectionDeviceTypesRequestBuilder)?
              updates]) =>
      (new GetVpnConnectionDeviceTypesRequestBuilder()..update(updates))
          ._build();

  _$GetVpnConnectionDeviceTypesRequest._(
      {this.maxResults, this.nextToken, required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'GetVpnConnectionDeviceTypesRequest', 'dryRun');
  }

  @override
  GetVpnConnectionDeviceTypesRequest rebuild(
          void Function(GetVpnConnectionDeviceTypesRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetVpnConnectionDeviceTypesRequestBuilder toBuilder() =>
      new GetVpnConnectionDeviceTypesRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetVpnConnectionDeviceTypesRequest &&
        maxResults == other.maxResults &&
        nextToken == other.nextToken &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetVpnConnectionDeviceTypesRequestBuilder
    implements
        Builder<GetVpnConnectionDeviceTypesRequest,
            GetVpnConnectionDeviceTypesRequestBuilder> {
  _$GetVpnConnectionDeviceTypesRequest? _$v;

  int? _maxResults;
  int? get maxResults => _$this._maxResults;
  set maxResults(int? maxResults) => _$this._maxResults = maxResults;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  GetVpnConnectionDeviceTypesRequestBuilder() {
    GetVpnConnectionDeviceTypesRequest._init(this);
  }

  GetVpnConnectionDeviceTypesRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _maxResults = $v.maxResults;
      _nextToken = $v.nextToken;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetVpnConnectionDeviceTypesRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetVpnConnectionDeviceTypesRequest;
  }

  @override
  void update(
      void Function(GetVpnConnectionDeviceTypesRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetVpnConnectionDeviceTypesRequest build() => _build();

  _$GetVpnConnectionDeviceTypesRequest _build() {
    final _$result = _$v ??
        new _$GetVpnConnectionDeviceTypesRequest._(
            maxResults: maxResults,
            nextToken: nextToken,
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'GetVpnConnectionDeviceTypesRequest', 'dryRun'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
