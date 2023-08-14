// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_ipam_address_history_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetIpamAddressHistoryRequest extends GetIpamAddressHistoryRequest {
  @override
  final bool dryRun;
  @override
  final String? cidr;
  @override
  final String? ipamScopeId;
  @override
  final String? vpcId;
  @override
  final DateTime? startTime;
  @override
  final DateTime? endTime;
  @override
  final int maxResults;
  @override
  final String? nextToken;

  factory _$GetIpamAddressHistoryRequest(
          [void Function(GetIpamAddressHistoryRequestBuilder)? updates]) =>
      (new GetIpamAddressHistoryRequestBuilder()..update(updates))._build();

  _$GetIpamAddressHistoryRequest._(
      {required this.dryRun,
      this.cidr,
      this.ipamScopeId,
      this.vpcId,
      this.startTime,
      this.endTime,
      required this.maxResults,
      this.nextToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'GetIpamAddressHistoryRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(
        maxResults, r'GetIpamAddressHistoryRequest', 'maxResults');
  }

  @override
  GetIpamAddressHistoryRequest rebuild(
          void Function(GetIpamAddressHistoryRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetIpamAddressHistoryRequestBuilder toBuilder() =>
      new GetIpamAddressHistoryRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetIpamAddressHistoryRequest &&
        dryRun == other.dryRun &&
        cidr == other.cidr &&
        ipamScopeId == other.ipamScopeId &&
        vpcId == other.vpcId &&
        startTime == other.startTime &&
        endTime == other.endTime &&
        maxResults == other.maxResults &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, cidr.hashCode);
    _$hash = $jc(_$hash, ipamScopeId.hashCode);
    _$hash = $jc(_$hash, vpcId.hashCode);
    _$hash = $jc(_$hash, startTime.hashCode);
    _$hash = $jc(_$hash, endTime.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetIpamAddressHistoryRequestBuilder
    implements
        Builder<GetIpamAddressHistoryRequest,
            GetIpamAddressHistoryRequestBuilder> {
  _$GetIpamAddressHistoryRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _cidr;
  String? get cidr => _$this._cidr;
  set cidr(String? cidr) => _$this._cidr = cidr;

  String? _ipamScopeId;
  String? get ipamScopeId => _$this._ipamScopeId;
  set ipamScopeId(String? ipamScopeId) => _$this._ipamScopeId = ipamScopeId;

  String? _vpcId;
  String? get vpcId => _$this._vpcId;
  set vpcId(String? vpcId) => _$this._vpcId = vpcId;

  DateTime? _startTime;
  DateTime? get startTime => _$this._startTime;
  set startTime(DateTime? startTime) => _$this._startTime = startTime;

  DateTime? _endTime;
  DateTime? get endTime => _$this._endTime;
  set endTime(DateTime? endTime) => _$this._endTime = endTime;

  int? _maxResults;
  int? get maxResults => _$this._maxResults;
  set maxResults(int? maxResults) => _$this._maxResults = maxResults;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  GetIpamAddressHistoryRequestBuilder() {
    GetIpamAddressHistoryRequest._init(this);
  }

  GetIpamAddressHistoryRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _cidr = $v.cidr;
      _ipamScopeId = $v.ipamScopeId;
      _vpcId = $v.vpcId;
      _startTime = $v.startTime;
      _endTime = $v.endTime;
      _maxResults = $v.maxResults;
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetIpamAddressHistoryRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetIpamAddressHistoryRequest;
  }

  @override
  void update(void Function(GetIpamAddressHistoryRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetIpamAddressHistoryRequest build() => _build();

  _$GetIpamAddressHistoryRequest _build() {
    final _$result = _$v ??
        new _$GetIpamAddressHistoryRequest._(
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'GetIpamAddressHistoryRequest', 'dryRun'),
            cidr: cidr,
            ipamScopeId: ipamScopeId,
            vpcId: vpcId,
            startTime: startTime,
            endTime: endTime,
            maxResults: BuiltValueNullFieldError.checkNotNull(
                maxResults, r'GetIpamAddressHistoryRequest', 'maxResults'),
            nextToken: nextToken);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
