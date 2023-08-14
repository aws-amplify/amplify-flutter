// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'network_insights_access_scope_content.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NetworkInsightsAccessScopeContent
    extends NetworkInsightsAccessScopeContent {
  @override
  final String? networkInsightsAccessScopeId;
  @override
  final _i2.BuiltList<AccessScopePath>? matchPaths;
  @override
  final _i2.BuiltList<AccessScopePath>? excludePaths;

  factory _$NetworkInsightsAccessScopeContent(
          [void Function(NetworkInsightsAccessScopeContentBuilder)? updates]) =>
      (new NetworkInsightsAccessScopeContentBuilder()..update(updates))
          ._build();

  _$NetworkInsightsAccessScopeContent._(
      {this.networkInsightsAccessScopeId, this.matchPaths, this.excludePaths})
      : super._();

  @override
  NetworkInsightsAccessScopeContent rebuild(
          void Function(NetworkInsightsAccessScopeContentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NetworkInsightsAccessScopeContentBuilder toBuilder() =>
      new NetworkInsightsAccessScopeContentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NetworkInsightsAccessScopeContent &&
        networkInsightsAccessScopeId == other.networkInsightsAccessScopeId &&
        matchPaths == other.matchPaths &&
        excludePaths == other.excludePaths;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, networkInsightsAccessScopeId.hashCode);
    _$hash = $jc(_$hash, matchPaths.hashCode);
    _$hash = $jc(_$hash, excludePaths.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class NetworkInsightsAccessScopeContentBuilder
    implements
        Builder<NetworkInsightsAccessScopeContent,
            NetworkInsightsAccessScopeContentBuilder> {
  _$NetworkInsightsAccessScopeContent? _$v;

  String? _networkInsightsAccessScopeId;
  String? get networkInsightsAccessScopeId =>
      _$this._networkInsightsAccessScopeId;
  set networkInsightsAccessScopeId(String? networkInsightsAccessScopeId) =>
      _$this._networkInsightsAccessScopeId = networkInsightsAccessScopeId;

  _i2.ListBuilder<AccessScopePath>? _matchPaths;
  _i2.ListBuilder<AccessScopePath> get matchPaths =>
      _$this._matchPaths ??= new _i2.ListBuilder<AccessScopePath>();
  set matchPaths(_i2.ListBuilder<AccessScopePath>? matchPaths) =>
      _$this._matchPaths = matchPaths;

  _i2.ListBuilder<AccessScopePath>? _excludePaths;
  _i2.ListBuilder<AccessScopePath> get excludePaths =>
      _$this._excludePaths ??= new _i2.ListBuilder<AccessScopePath>();
  set excludePaths(_i2.ListBuilder<AccessScopePath>? excludePaths) =>
      _$this._excludePaths = excludePaths;

  NetworkInsightsAccessScopeContentBuilder();

  NetworkInsightsAccessScopeContentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _networkInsightsAccessScopeId = $v.networkInsightsAccessScopeId;
      _matchPaths = $v.matchPaths?.toBuilder();
      _excludePaths = $v.excludePaths?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NetworkInsightsAccessScopeContent other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NetworkInsightsAccessScopeContent;
  }

  @override
  void update(
      void Function(NetworkInsightsAccessScopeContentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NetworkInsightsAccessScopeContent build() => _build();

  _$NetworkInsightsAccessScopeContent _build() {
    _$NetworkInsightsAccessScopeContent _$result;
    try {
      _$result = _$v ??
          new _$NetworkInsightsAccessScopeContent._(
              networkInsightsAccessScopeId: networkInsightsAccessScopeId,
              matchPaths: _matchPaths?.build(),
              excludePaths: _excludePaths?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'matchPaths';
        _matchPaths?.build();
        _$failedField = 'excludePaths';
        _excludePaths?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'NetworkInsightsAccessScopeContent', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
