// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'access_scope_analysis_finding.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AccessScopeAnalysisFinding extends AccessScopeAnalysisFinding {
  @override
  final String? networkInsightsAccessScopeAnalysisId;
  @override
  final String? networkInsightsAccessScopeId;
  @override
  final String? findingId;
  @override
  final _i2.BuiltList<PathComponent>? findingComponents;

  factory _$AccessScopeAnalysisFinding(
          [void Function(AccessScopeAnalysisFindingBuilder)? updates]) =>
      (new AccessScopeAnalysisFindingBuilder()..update(updates))._build();

  _$AccessScopeAnalysisFinding._(
      {this.networkInsightsAccessScopeAnalysisId,
      this.networkInsightsAccessScopeId,
      this.findingId,
      this.findingComponents})
      : super._();

  @override
  AccessScopeAnalysisFinding rebuild(
          void Function(AccessScopeAnalysisFindingBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AccessScopeAnalysisFindingBuilder toBuilder() =>
      new AccessScopeAnalysisFindingBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AccessScopeAnalysisFinding &&
        networkInsightsAccessScopeAnalysisId ==
            other.networkInsightsAccessScopeAnalysisId &&
        networkInsightsAccessScopeId == other.networkInsightsAccessScopeId &&
        findingId == other.findingId &&
        findingComponents == other.findingComponents;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, networkInsightsAccessScopeAnalysisId.hashCode);
    _$hash = $jc(_$hash, networkInsightsAccessScopeId.hashCode);
    _$hash = $jc(_$hash, findingId.hashCode);
    _$hash = $jc(_$hash, findingComponents.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AccessScopeAnalysisFindingBuilder
    implements
        Builder<AccessScopeAnalysisFinding, AccessScopeAnalysisFindingBuilder> {
  _$AccessScopeAnalysisFinding? _$v;

  String? _networkInsightsAccessScopeAnalysisId;
  String? get networkInsightsAccessScopeAnalysisId =>
      _$this._networkInsightsAccessScopeAnalysisId;
  set networkInsightsAccessScopeAnalysisId(
          String? networkInsightsAccessScopeAnalysisId) =>
      _$this._networkInsightsAccessScopeAnalysisId =
          networkInsightsAccessScopeAnalysisId;

  String? _networkInsightsAccessScopeId;
  String? get networkInsightsAccessScopeId =>
      _$this._networkInsightsAccessScopeId;
  set networkInsightsAccessScopeId(String? networkInsightsAccessScopeId) =>
      _$this._networkInsightsAccessScopeId = networkInsightsAccessScopeId;

  String? _findingId;
  String? get findingId => _$this._findingId;
  set findingId(String? findingId) => _$this._findingId = findingId;

  _i2.ListBuilder<PathComponent>? _findingComponents;
  _i2.ListBuilder<PathComponent> get findingComponents =>
      _$this._findingComponents ??= new _i2.ListBuilder<PathComponent>();
  set findingComponents(_i2.ListBuilder<PathComponent>? findingComponents) =>
      _$this._findingComponents = findingComponents;

  AccessScopeAnalysisFindingBuilder();

  AccessScopeAnalysisFindingBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _networkInsightsAccessScopeAnalysisId =
          $v.networkInsightsAccessScopeAnalysisId;
      _networkInsightsAccessScopeId = $v.networkInsightsAccessScopeId;
      _findingId = $v.findingId;
      _findingComponents = $v.findingComponents?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AccessScopeAnalysisFinding other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AccessScopeAnalysisFinding;
  }

  @override
  void update(void Function(AccessScopeAnalysisFindingBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AccessScopeAnalysisFinding build() => _build();

  _$AccessScopeAnalysisFinding _build() {
    _$AccessScopeAnalysisFinding _$result;
    try {
      _$result = _$v ??
          new _$AccessScopeAnalysisFinding._(
              networkInsightsAccessScopeAnalysisId:
                  networkInsightsAccessScopeAnalysisId,
              networkInsightsAccessScopeId: networkInsightsAccessScopeId,
              findingId: findingId,
              findingComponents: _findingComponents?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'findingComponents';
        _findingComponents?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AccessScopeAnalysisFinding', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
