// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.restore_summary;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RestoreSummary extends RestoreSummary {
  @override
  final DateTime restoreDateTime;
  @override
  final bool restoreInProgress;
  @override
  final String? sourceBackupArn;
  @override
  final String? sourceTableArn;

  factory _$RestoreSummary([void Function(RestoreSummaryBuilder)? updates]) =>
      (new RestoreSummaryBuilder()..update(updates))._build();

  _$RestoreSummary._(
      {required this.restoreDateTime,
      required this.restoreInProgress,
      this.sourceBackupArn,
      this.sourceTableArn})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        restoreDateTime, r'RestoreSummary', 'restoreDateTime');
    BuiltValueNullFieldError.checkNotNull(
        restoreInProgress, r'RestoreSummary', 'restoreInProgress');
  }

  @override
  RestoreSummary rebuild(void Function(RestoreSummaryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RestoreSummaryBuilder toBuilder() =>
      new RestoreSummaryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RestoreSummary &&
        restoreDateTime == other.restoreDateTime &&
        restoreInProgress == other.restoreInProgress &&
        sourceBackupArn == other.sourceBackupArn &&
        sourceTableArn == other.sourceTableArn;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, restoreDateTime.hashCode);
    _$hash = $jc(_$hash, restoreInProgress.hashCode);
    _$hash = $jc(_$hash, sourceBackupArn.hashCode);
    _$hash = $jc(_$hash, sourceTableArn.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class RestoreSummaryBuilder
    implements Builder<RestoreSummary, RestoreSummaryBuilder> {
  _$RestoreSummary? _$v;

  DateTime? _restoreDateTime;
  DateTime? get restoreDateTime => _$this._restoreDateTime;
  set restoreDateTime(DateTime? restoreDateTime) =>
      _$this._restoreDateTime = restoreDateTime;

  bool? _restoreInProgress;
  bool? get restoreInProgress => _$this._restoreInProgress;
  set restoreInProgress(bool? restoreInProgress) =>
      _$this._restoreInProgress = restoreInProgress;

  String? _sourceBackupArn;
  String? get sourceBackupArn => _$this._sourceBackupArn;
  set sourceBackupArn(String? sourceBackupArn) =>
      _$this._sourceBackupArn = sourceBackupArn;

  String? _sourceTableArn;
  String? get sourceTableArn => _$this._sourceTableArn;
  set sourceTableArn(String? sourceTableArn) =>
      _$this._sourceTableArn = sourceTableArn;

  RestoreSummaryBuilder() {
    RestoreSummary._init(this);
  }

  RestoreSummaryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _restoreDateTime = $v.restoreDateTime;
      _restoreInProgress = $v.restoreInProgress;
      _sourceBackupArn = $v.sourceBackupArn;
      _sourceTableArn = $v.sourceTableArn;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RestoreSummary other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RestoreSummary;
  }

  @override
  void update(void Function(RestoreSummaryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RestoreSummary build() => _build();

  _$RestoreSummary _build() {
    final _$result = _$v ??
        new _$RestoreSummary._(
            restoreDateTime: BuiltValueNullFieldError.checkNotNull(
                restoreDateTime, r'RestoreSummary', 'restoreDateTime'),
            restoreInProgress: BuiltValueNullFieldError.checkNotNull(
                restoreInProgress, r'RestoreSummary', 'restoreInProgress'),
            sourceBackupArn: sourceBackupArn,
            sourceTableArn: sourceTableArn);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
