// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_network_insights_access_scope_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteNetworkInsightsAccessScopeResult
    extends DeleteNetworkInsightsAccessScopeResult {
  @override
  final String? networkInsightsAccessScopeId;

  factory _$DeleteNetworkInsightsAccessScopeResult(
          [void Function(DeleteNetworkInsightsAccessScopeResultBuilder)?
              updates]) =>
      (new DeleteNetworkInsightsAccessScopeResultBuilder()..update(updates))
          ._build();

  _$DeleteNetworkInsightsAccessScopeResult._(
      {this.networkInsightsAccessScopeId})
      : super._();

  @override
  DeleteNetworkInsightsAccessScopeResult rebuild(
          void Function(DeleteNetworkInsightsAccessScopeResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteNetworkInsightsAccessScopeResultBuilder toBuilder() =>
      new DeleteNetworkInsightsAccessScopeResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteNetworkInsightsAccessScopeResult &&
        networkInsightsAccessScopeId == other.networkInsightsAccessScopeId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, networkInsightsAccessScopeId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteNetworkInsightsAccessScopeResultBuilder
    implements
        Builder<DeleteNetworkInsightsAccessScopeResult,
            DeleteNetworkInsightsAccessScopeResultBuilder> {
  _$DeleteNetworkInsightsAccessScopeResult? _$v;

  String? _networkInsightsAccessScopeId;
  String? get networkInsightsAccessScopeId =>
      _$this._networkInsightsAccessScopeId;
  set networkInsightsAccessScopeId(String? networkInsightsAccessScopeId) =>
      _$this._networkInsightsAccessScopeId = networkInsightsAccessScopeId;

  DeleteNetworkInsightsAccessScopeResultBuilder();

  DeleteNetworkInsightsAccessScopeResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _networkInsightsAccessScopeId = $v.networkInsightsAccessScopeId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteNetworkInsightsAccessScopeResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteNetworkInsightsAccessScopeResult;
  }

  @override
  void update(
      void Function(DeleteNetworkInsightsAccessScopeResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteNetworkInsightsAccessScopeResult build() => _build();

  _$DeleteNetworkInsightsAccessScopeResult _build() {
    final _$result = _$v ??
        new _$DeleteNetworkInsightsAccessScopeResult._(
            networkInsightsAccessScopeId: networkInsightsAccessScopeId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
