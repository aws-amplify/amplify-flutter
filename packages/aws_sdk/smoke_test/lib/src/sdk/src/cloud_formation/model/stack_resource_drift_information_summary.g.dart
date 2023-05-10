// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.stack_resource_drift_information_summary;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StackResourceDriftInformationSummary
    extends StackResourceDriftInformationSummary {
  @override
  final _i2.StackResourceDriftStatus stackResourceDriftStatus;
  @override
  final DateTime? lastCheckTimestamp;

  factory _$StackResourceDriftInformationSummary(
          [void Function(StackResourceDriftInformationSummaryBuilder)?
              updates]) =>
      (new StackResourceDriftInformationSummaryBuilder()..update(updates))
          ._build();

  _$StackResourceDriftInformationSummary._(
      {required this.stackResourceDriftStatus, this.lastCheckTimestamp})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(stackResourceDriftStatus,
        r'StackResourceDriftInformationSummary', 'stackResourceDriftStatus');
  }

  @override
  StackResourceDriftInformationSummary rebuild(
          void Function(StackResourceDriftInformationSummaryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StackResourceDriftInformationSummaryBuilder toBuilder() =>
      new StackResourceDriftInformationSummaryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StackResourceDriftInformationSummary &&
        stackResourceDriftStatus == other.stackResourceDriftStatus &&
        lastCheckTimestamp == other.lastCheckTimestamp;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, stackResourceDriftStatus.hashCode);
    _$hash = $jc(_$hash, lastCheckTimestamp.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class StackResourceDriftInformationSummaryBuilder
    implements
        Builder<StackResourceDriftInformationSummary,
            StackResourceDriftInformationSummaryBuilder> {
  _$StackResourceDriftInformationSummary? _$v;

  _i2.StackResourceDriftStatus? _stackResourceDriftStatus;
  _i2.StackResourceDriftStatus? get stackResourceDriftStatus =>
      _$this._stackResourceDriftStatus;
  set stackResourceDriftStatus(
          _i2.StackResourceDriftStatus? stackResourceDriftStatus) =>
      _$this._stackResourceDriftStatus = stackResourceDriftStatus;

  DateTime? _lastCheckTimestamp;
  DateTime? get lastCheckTimestamp => _$this._lastCheckTimestamp;
  set lastCheckTimestamp(DateTime? lastCheckTimestamp) =>
      _$this._lastCheckTimestamp = lastCheckTimestamp;

  StackResourceDriftInformationSummaryBuilder() {
    StackResourceDriftInformationSummary._init(this);
  }

  StackResourceDriftInformationSummaryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _stackResourceDriftStatus = $v.stackResourceDriftStatus;
      _lastCheckTimestamp = $v.lastCheckTimestamp;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StackResourceDriftInformationSummary other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StackResourceDriftInformationSummary;
  }

  @override
  void update(
      void Function(StackResourceDriftInformationSummaryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StackResourceDriftInformationSummary build() => _build();

  _$StackResourceDriftInformationSummary _build() {
    final _$result = _$v ??
        new _$StackResourceDriftInformationSummary._(
            stackResourceDriftStatus: BuiltValueNullFieldError.checkNotNull(
                stackResourceDriftStatus,
                r'StackResourceDriftInformationSummary',
                'stackResourceDriftStatus'),
            lastCheckTimestamp: lastCheckTimestamp);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
