// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_network_insights_access_scope_content_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetNetworkInsightsAccessScopeContentRequest
    extends GetNetworkInsightsAccessScopeContentRequest {
  @override
  final String? networkInsightsAccessScopeId;
  @override
  final bool dryRun;

  factory _$GetNetworkInsightsAccessScopeContentRequest(
          [void Function(GetNetworkInsightsAccessScopeContentRequestBuilder)?
              updates]) =>
      (new GetNetworkInsightsAccessScopeContentRequestBuilder()
            ..update(updates))
          ._build();

  _$GetNetworkInsightsAccessScopeContentRequest._(
      {this.networkInsightsAccessScopeId, required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'GetNetworkInsightsAccessScopeContentRequest', 'dryRun');
  }

  @override
  GetNetworkInsightsAccessScopeContentRequest rebuild(
          void Function(GetNetworkInsightsAccessScopeContentRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetNetworkInsightsAccessScopeContentRequestBuilder toBuilder() =>
      new GetNetworkInsightsAccessScopeContentRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetNetworkInsightsAccessScopeContentRequest &&
        networkInsightsAccessScopeId == other.networkInsightsAccessScopeId &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, networkInsightsAccessScopeId.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetNetworkInsightsAccessScopeContentRequestBuilder
    implements
        Builder<GetNetworkInsightsAccessScopeContentRequest,
            GetNetworkInsightsAccessScopeContentRequestBuilder> {
  _$GetNetworkInsightsAccessScopeContentRequest? _$v;

  String? _networkInsightsAccessScopeId;
  String? get networkInsightsAccessScopeId =>
      _$this._networkInsightsAccessScopeId;
  set networkInsightsAccessScopeId(String? networkInsightsAccessScopeId) =>
      _$this._networkInsightsAccessScopeId = networkInsightsAccessScopeId;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  GetNetworkInsightsAccessScopeContentRequestBuilder() {
    GetNetworkInsightsAccessScopeContentRequest._init(this);
  }

  GetNetworkInsightsAccessScopeContentRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _networkInsightsAccessScopeId = $v.networkInsightsAccessScopeId;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetNetworkInsightsAccessScopeContentRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetNetworkInsightsAccessScopeContentRequest;
  }

  @override
  void update(
      void Function(GetNetworkInsightsAccessScopeContentRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GetNetworkInsightsAccessScopeContentRequest build() => _build();

  _$GetNetworkInsightsAccessScopeContentRequest _build() {
    final _$result = _$v ??
        new _$GetNetworkInsightsAccessScopeContentRequest._(
            networkInsightsAccessScopeId: networkInsightsAccessScopeId,
            dryRun: BuiltValueNullFieldError.checkNotNull(dryRun,
                r'GetNetworkInsightsAccessScopeContentRequest', 'dryRun'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
