// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.stack_drift_information_summary;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StackDriftInformationSummary extends StackDriftInformationSummary {
  @override
  final _i2.StackDriftStatus stackDriftStatus;
  @override
  final DateTime? lastCheckTimestamp;

  factory _$StackDriftInformationSummary(
          [void Function(StackDriftInformationSummaryBuilder)? updates]) =>
      (new StackDriftInformationSummaryBuilder()..update(updates))._build();

  _$StackDriftInformationSummary._(
      {required this.stackDriftStatus, this.lastCheckTimestamp})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        stackDriftStatus, r'StackDriftInformationSummary', 'stackDriftStatus');
  }

  @override
  StackDriftInformationSummary rebuild(
          void Function(StackDriftInformationSummaryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StackDriftInformationSummaryBuilder toBuilder() =>
      new StackDriftInformationSummaryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StackDriftInformationSummary &&
        stackDriftStatus == other.stackDriftStatus &&
        lastCheckTimestamp == other.lastCheckTimestamp;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, stackDriftStatus.hashCode);
    _$hash = $jc(_$hash, lastCheckTimestamp.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class StackDriftInformationSummaryBuilder
    implements
        Builder<StackDriftInformationSummary,
            StackDriftInformationSummaryBuilder> {
  _$StackDriftInformationSummary? _$v;

  _i2.StackDriftStatus? _stackDriftStatus;
  _i2.StackDriftStatus? get stackDriftStatus => _$this._stackDriftStatus;
  set stackDriftStatus(_i2.StackDriftStatus? stackDriftStatus) =>
      _$this._stackDriftStatus = stackDriftStatus;

  DateTime? _lastCheckTimestamp;
  DateTime? get lastCheckTimestamp => _$this._lastCheckTimestamp;
  set lastCheckTimestamp(DateTime? lastCheckTimestamp) =>
      _$this._lastCheckTimestamp = lastCheckTimestamp;

  StackDriftInformationSummaryBuilder() {
    StackDriftInformationSummary._init(this);
  }

  StackDriftInformationSummaryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _stackDriftStatus = $v.stackDriftStatus;
      _lastCheckTimestamp = $v.lastCheckTimestamp;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StackDriftInformationSummary other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StackDriftInformationSummary;
  }

  @override
  void update(void Function(StackDriftInformationSummaryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StackDriftInformationSummary build() => _build();

  _$StackDriftInformationSummary _build() {
    final _$result = _$v ??
        new _$StackDriftInformationSummary._(
            stackDriftStatus: BuiltValueNullFieldError.checkNotNull(
                stackDriftStatus,
                r'StackDriftInformationSummary',
                'stackDriftStatus'),
            lastCheckTimestamp: lastCheckTimestamp);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
