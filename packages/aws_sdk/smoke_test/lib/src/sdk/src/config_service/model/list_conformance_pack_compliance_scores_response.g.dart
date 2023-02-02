// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.list_conformance_pack_compliance_scores_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListConformancePackComplianceScoresResponse
    extends ListConformancePackComplianceScoresResponse {
  @override
  final _i3.BuiltList<_i2.ConformancePackComplianceScore>
      conformancePackComplianceScores;
  @override
  final String? nextToken;

  factory _$ListConformancePackComplianceScoresResponse(
          [void Function(ListConformancePackComplianceScoresResponseBuilder)?
              updates]) =>
      (new ListConformancePackComplianceScoresResponseBuilder()
            ..update(updates))
          ._build();

  _$ListConformancePackComplianceScoresResponse._(
      {required this.conformancePackComplianceScores, this.nextToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        conformancePackComplianceScores,
        r'ListConformancePackComplianceScoresResponse',
        'conformancePackComplianceScores');
  }

  @override
  ListConformancePackComplianceScoresResponse rebuild(
          void Function(ListConformancePackComplianceScoresResponseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListConformancePackComplianceScoresResponseBuilder toBuilder() =>
      new ListConformancePackComplianceScoresResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListConformancePackComplianceScoresResponse &&
        conformancePackComplianceScores ==
            other.conformancePackComplianceScores &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, conformancePackComplianceScores.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ListConformancePackComplianceScoresResponseBuilder
    implements
        Builder<ListConformancePackComplianceScoresResponse,
            ListConformancePackComplianceScoresResponseBuilder> {
  _$ListConformancePackComplianceScoresResponse? _$v;

  _i3.ListBuilder<_i2.ConformancePackComplianceScore>?
      _conformancePackComplianceScores;
  _i3.ListBuilder<_i2.ConformancePackComplianceScore>
      get conformancePackComplianceScores =>
          _$this._conformancePackComplianceScores ??=
              new _i3.ListBuilder<_i2.ConformancePackComplianceScore>();
  set conformancePackComplianceScores(
          _i3.ListBuilder<_i2.ConformancePackComplianceScore>?
              conformancePackComplianceScores) =>
      _$this._conformancePackComplianceScores = conformancePackComplianceScores;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  ListConformancePackComplianceScoresResponseBuilder() {
    ListConformancePackComplianceScoresResponse._init(this);
  }

  ListConformancePackComplianceScoresResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _conformancePackComplianceScores =
          $v.conformancePackComplianceScores.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListConformancePackComplianceScoresResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListConformancePackComplianceScoresResponse;
  }

  @override
  void update(
      void Function(ListConformancePackComplianceScoresResponseBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  ListConformancePackComplianceScoresResponse build() => _build();

  _$ListConformancePackComplianceScoresResponse _build() {
    _$ListConformancePackComplianceScoresResponse _$result;
    try {
      _$result = _$v ??
          new _$ListConformancePackComplianceScoresResponse._(
              conformancePackComplianceScores:
                  conformancePackComplianceScores.build(),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'conformancePackComplianceScores';
        conformancePackComplianceScores.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ListConformancePackComplianceScoresResponse',
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
