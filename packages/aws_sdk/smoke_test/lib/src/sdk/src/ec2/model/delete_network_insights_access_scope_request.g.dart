// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_network_insights_access_scope_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteNetworkInsightsAccessScopeRequest
    extends DeleteNetworkInsightsAccessScopeRequest {
  @override
  final bool dryRun;
  @override
  final String? networkInsightsAccessScopeId;

  factory _$DeleteNetworkInsightsAccessScopeRequest(
          [void Function(DeleteNetworkInsightsAccessScopeRequestBuilder)?
              updates]) =>
      (new DeleteNetworkInsightsAccessScopeRequestBuilder()..update(updates))
          ._build();

  _$DeleteNetworkInsightsAccessScopeRequest._(
      {required this.dryRun, this.networkInsightsAccessScopeId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DeleteNetworkInsightsAccessScopeRequest', 'dryRun');
  }

  @override
  DeleteNetworkInsightsAccessScopeRequest rebuild(
          void Function(DeleteNetworkInsightsAccessScopeRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteNetworkInsightsAccessScopeRequestBuilder toBuilder() =>
      new DeleteNetworkInsightsAccessScopeRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteNetworkInsightsAccessScopeRequest &&
        dryRun == other.dryRun &&
        networkInsightsAccessScopeId == other.networkInsightsAccessScopeId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, networkInsightsAccessScopeId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteNetworkInsightsAccessScopeRequestBuilder
    implements
        Builder<DeleteNetworkInsightsAccessScopeRequest,
            DeleteNetworkInsightsAccessScopeRequestBuilder> {
  _$DeleteNetworkInsightsAccessScopeRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _networkInsightsAccessScopeId;
  String? get networkInsightsAccessScopeId =>
      _$this._networkInsightsAccessScopeId;
  set networkInsightsAccessScopeId(String? networkInsightsAccessScopeId) =>
      _$this._networkInsightsAccessScopeId = networkInsightsAccessScopeId;

  DeleteNetworkInsightsAccessScopeRequestBuilder() {
    DeleteNetworkInsightsAccessScopeRequest._init(this);
  }

  DeleteNetworkInsightsAccessScopeRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _networkInsightsAccessScopeId = $v.networkInsightsAccessScopeId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteNetworkInsightsAccessScopeRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteNetworkInsightsAccessScopeRequest;
  }

  @override
  void update(
      void Function(DeleteNetworkInsightsAccessScopeRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteNetworkInsightsAccessScopeRequest build() => _build();

  _$DeleteNetworkInsightsAccessScopeRequest _build() {
    final _$result = _$v ??
        new _$DeleteNetworkInsightsAccessScopeRequest._(
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'DeleteNetworkInsightsAccessScopeRequest', 'dryRun'),
            networkInsightsAccessScopeId: networkInsightsAccessScopeId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
