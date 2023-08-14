// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_network_insights_access_scope_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateNetworkInsightsAccessScopeResult
    extends CreateNetworkInsightsAccessScopeResult {
  @override
  final NetworkInsightsAccessScope? networkInsightsAccessScope;
  @override
  final NetworkInsightsAccessScopeContent? networkInsightsAccessScopeContent;

  factory _$CreateNetworkInsightsAccessScopeResult(
          [void Function(CreateNetworkInsightsAccessScopeResultBuilder)?
              updates]) =>
      (new CreateNetworkInsightsAccessScopeResultBuilder()..update(updates))
          ._build();

  _$CreateNetworkInsightsAccessScopeResult._(
      {this.networkInsightsAccessScope, this.networkInsightsAccessScopeContent})
      : super._();

  @override
  CreateNetworkInsightsAccessScopeResult rebuild(
          void Function(CreateNetworkInsightsAccessScopeResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateNetworkInsightsAccessScopeResultBuilder toBuilder() =>
      new CreateNetworkInsightsAccessScopeResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateNetworkInsightsAccessScopeResult &&
        networkInsightsAccessScope == other.networkInsightsAccessScope &&
        networkInsightsAccessScopeContent ==
            other.networkInsightsAccessScopeContent;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, networkInsightsAccessScope.hashCode);
    _$hash = $jc(_$hash, networkInsightsAccessScopeContent.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateNetworkInsightsAccessScopeResultBuilder
    implements
        Builder<CreateNetworkInsightsAccessScopeResult,
            CreateNetworkInsightsAccessScopeResultBuilder> {
  _$CreateNetworkInsightsAccessScopeResult? _$v;

  NetworkInsightsAccessScopeBuilder? _networkInsightsAccessScope;
  NetworkInsightsAccessScopeBuilder get networkInsightsAccessScope =>
      _$this._networkInsightsAccessScope ??=
          new NetworkInsightsAccessScopeBuilder();
  set networkInsightsAccessScope(
          NetworkInsightsAccessScopeBuilder? networkInsightsAccessScope) =>
      _$this._networkInsightsAccessScope = networkInsightsAccessScope;

  NetworkInsightsAccessScopeContentBuilder? _networkInsightsAccessScopeContent;
  NetworkInsightsAccessScopeContentBuilder
      get networkInsightsAccessScopeContent =>
          _$this._networkInsightsAccessScopeContent ??=
              new NetworkInsightsAccessScopeContentBuilder();
  set networkInsightsAccessScopeContent(
          NetworkInsightsAccessScopeContentBuilder?
              networkInsightsAccessScopeContent) =>
      _$this._networkInsightsAccessScopeContent =
          networkInsightsAccessScopeContent;

  CreateNetworkInsightsAccessScopeResultBuilder();

  CreateNetworkInsightsAccessScopeResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _networkInsightsAccessScope = $v.networkInsightsAccessScope?.toBuilder();
      _networkInsightsAccessScopeContent =
          $v.networkInsightsAccessScopeContent?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateNetworkInsightsAccessScopeResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateNetworkInsightsAccessScopeResult;
  }

  @override
  void update(
      void Function(CreateNetworkInsightsAccessScopeResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateNetworkInsightsAccessScopeResult build() => _build();

  _$CreateNetworkInsightsAccessScopeResult _build() {
    _$CreateNetworkInsightsAccessScopeResult _$result;
    try {
      _$result = _$v ??
          new _$CreateNetworkInsightsAccessScopeResult._(
              networkInsightsAccessScope: _networkInsightsAccessScope?.build(),
              networkInsightsAccessScopeContent:
                  _networkInsightsAccessScopeContent?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'networkInsightsAccessScope';
        _networkInsightsAccessScope?.build();
        _$failedField = 'networkInsightsAccessScopeContent';
        _networkInsightsAccessScopeContent?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateNetworkInsightsAccessScopeResult',
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
