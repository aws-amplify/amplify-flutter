// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_network_insights_path_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteNetworkInsightsPathRequest
    extends DeleteNetworkInsightsPathRequest {
  @override
  final bool dryRun;
  @override
  final String? networkInsightsPathId;

  factory _$DeleteNetworkInsightsPathRequest(
          [void Function(DeleteNetworkInsightsPathRequestBuilder)? updates]) =>
      (new DeleteNetworkInsightsPathRequestBuilder()..update(updates))._build();

  _$DeleteNetworkInsightsPathRequest._(
      {required this.dryRun, this.networkInsightsPathId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DeleteNetworkInsightsPathRequest', 'dryRun');
  }

  @override
  DeleteNetworkInsightsPathRequest rebuild(
          void Function(DeleteNetworkInsightsPathRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteNetworkInsightsPathRequestBuilder toBuilder() =>
      new DeleteNetworkInsightsPathRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteNetworkInsightsPathRequest &&
        dryRun == other.dryRun &&
        networkInsightsPathId == other.networkInsightsPathId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, networkInsightsPathId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteNetworkInsightsPathRequestBuilder
    implements
        Builder<DeleteNetworkInsightsPathRequest,
            DeleteNetworkInsightsPathRequestBuilder> {
  _$DeleteNetworkInsightsPathRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _networkInsightsPathId;
  String? get networkInsightsPathId => _$this._networkInsightsPathId;
  set networkInsightsPathId(String? networkInsightsPathId) =>
      _$this._networkInsightsPathId = networkInsightsPathId;

  DeleteNetworkInsightsPathRequestBuilder() {
    DeleteNetworkInsightsPathRequest._init(this);
  }

  DeleteNetworkInsightsPathRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _networkInsightsPathId = $v.networkInsightsPathId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteNetworkInsightsPathRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteNetworkInsightsPathRequest;
  }

  @override
  void update(void Function(DeleteNetworkInsightsPathRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteNetworkInsightsPathRequest build() => _build();

  _$DeleteNetworkInsightsPathRequest _build() {
    final _$result = _$v ??
        new _$DeleteNetworkInsightsPathRequest._(
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'DeleteNetworkInsightsPathRequest', 'dryRun'),
            networkInsightsPathId: networkInsightsPathId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
