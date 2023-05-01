// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.conformance_pack_status_detail;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConformancePackStatusDetail extends ConformancePackStatusDetail {
  @override
  final String conformancePackName;
  @override
  final String conformancePackId;
  @override
  final String conformancePackArn;
  @override
  final _i2.ConformancePackState conformancePackState;
  @override
  final String stackArn;
  @override
  final String? conformancePackStatusReason;
  @override
  final DateTime lastUpdateRequestedTime;
  @override
  final DateTime? lastUpdateCompletedTime;

  factory _$ConformancePackStatusDetail(
          [void Function(ConformancePackStatusDetailBuilder)? updates]) =>
      (new ConformancePackStatusDetailBuilder()..update(updates))._build();

  _$ConformancePackStatusDetail._(
      {required this.conformancePackName,
      required this.conformancePackId,
      required this.conformancePackArn,
      required this.conformancePackState,
      required this.stackArn,
      this.conformancePackStatusReason,
      required this.lastUpdateRequestedTime,
      this.lastUpdateCompletedTime})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(conformancePackName,
        r'ConformancePackStatusDetail', 'conformancePackName');
    BuiltValueNullFieldError.checkNotNull(
        conformancePackId, r'ConformancePackStatusDetail', 'conformancePackId');
    BuiltValueNullFieldError.checkNotNull(conformancePackArn,
        r'ConformancePackStatusDetail', 'conformancePackArn');
    BuiltValueNullFieldError.checkNotNull(conformancePackState,
        r'ConformancePackStatusDetail', 'conformancePackState');
    BuiltValueNullFieldError.checkNotNull(
        stackArn, r'ConformancePackStatusDetail', 'stackArn');
    BuiltValueNullFieldError.checkNotNull(lastUpdateRequestedTime,
        r'ConformancePackStatusDetail', 'lastUpdateRequestedTime');
  }

  @override
  ConformancePackStatusDetail rebuild(
          void Function(ConformancePackStatusDetailBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConformancePackStatusDetailBuilder toBuilder() =>
      new ConformancePackStatusDetailBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConformancePackStatusDetail &&
        conformancePackName == other.conformancePackName &&
        conformancePackId == other.conformancePackId &&
        conformancePackArn == other.conformancePackArn &&
        conformancePackState == other.conformancePackState &&
        stackArn == other.stackArn &&
        conformancePackStatusReason == other.conformancePackStatusReason &&
        lastUpdateRequestedTime == other.lastUpdateRequestedTime &&
        lastUpdateCompletedTime == other.lastUpdateCompletedTime;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, conformancePackName.hashCode);
    _$hash = $jc(_$hash, conformancePackId.hashCode);
    _$hash = $jc(_$hash, conformancePackArn.hashCode);
    _$hash = $jc(_$hash, conformancePackState.hashCode);
    _$hash = $jc(_$hash, stackArn.hashCode);
    _$hash = $jc(_$hash, conformancePackStatusReason.hashCode);
    _$hash = $jc(_$hash, lastUpdateRequestedTime.hashCode);
    _$hash = $jc(_$hash, lastUpdateCompletedTime.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ConformancePackStatusDetailBuilder
    implements
        Builder<ConformancePackStatusDetail,
            ConformancePackStatusDetailBuilder> {
  _$ConformancePackStatusDetail? _$v;

  String? _conformancePackName;
  String? get conformancePackName => _$this._conformancePackName;
  set conformancePackName(String? conformancePackName) =>
      _$this._conformancePackName = conformancePackName;

  String? _conformancePackId;
  String? get conformancePackId => _$this._conformancePackId;
  set conformancePackId(String? conformancePackId) =>
      _$this._conformancePackId = conformancePackId;

  String? _conformancePackArn;
  String? get conformancePackArn => _$this._conformancePackArn;
  set conformancePackArn(String? conformancePackArn) =>
      _$this._conformancePackArn = conformancePackArn;

  _i2.ConformancePackState? _conformancePackState;
  _i2.ConformancePackState? get conformancePackState =>
      _$this._conformancePackState;
  set conformancePackState(_i2.ConformancePackState? conformancePackState) =>
      _$this._conformancePackState = conformancePackState;

  String? _stackArn;
  String? get stackArn => _$this._stackArn;
  set stackArn(String? stackArn) => _$this._stackArn = stackArn;

  String? _conformancePackStatusReason;
  String? get conformancePackStatusReason =>
      _$this._conformancePackStatusReason;
  set conformancePackStatusReason(String? conformancePackStatusReason) =>
      _$this._conformancePackStatusReason = conformancePackStatusReason;

  DateTime? _lastUpdateRequestedTime;
  DateTime? get lastUpdateRequestedTime => _$this._lastUpdateRequestedTime;
  set lastUpdateRequestedTime(DateTime? lastUpdateRequestedTime) =>
      _$this._lastUpdateRequestedTime = lastUpdateRequestedTime;

  DateTime? _lastUpdateCompletedTime;
  DateTime? get lastUpdateCompletedTime => _$this._lastUpdateCompletedTime;
  set lastUpdateCompletedTime(DateTime? lastUpdateCompletedTime) =>
      _$this._lastUpdateCompletedTime = lastUpdateCompletedTime;

  ConformancePackStatusDetailBuilder() {
    ConformancePackStatusDetail._init(this);
  }

  ConformancePackStatusDetailBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _conformancePackName = $v.conformancePackName;
      _conformancePackId = $v.conformancePackId;
      _conformancePackArn = $v.conformancePackArn;
      _conformancePackState = $v.conformancePackState;
      _stackArn = $v.stackArn;
      _conformancePackStatusReason = $v.conformancePackStatusReason;
      _lastUpdateRequestedTime = $v.lastUpdateRequestedTime;
      _lastUpdateCompletedTime = $v.lastUpdateCompletedTime;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConformancePackStatusDetail other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ConformancePackStatusDetail;
  }

  @override
  void update(void Function(ConformancePackStatusDetailBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConformancePackStatusDetail build() => _build();

  _$ConformancePackStatusDetail _build() {
    final _$result = _$v ??
        new _$ConformancePackStatusDetail._(
            conformancePackName: BuiltValueNullFieldError.checkNotNull(
                conformancePackName, r'ConformancePackStatusDetail', 'conformancePackName'),
            conformancePackId: BuiltValueNullFieldError.checkNotNull(
                conformancePackId, r'ConformancePackStatusDetail', 'conformancePackId'),
            conformancePackArn: BuiltValueNullFieldError.checkNotNull(
                conformancePackArn, r'ConformancePackStatusDetail', 'conformancePackArn'),
            conformancePackState: BuiltValueNullFieldError.checkNotNull(
                conformancePackState,
                r'ConformancePackStatusDetail',
                'conformancePackState'),
            stackArn: BuiltValueNullFieldError.checkNotNull(
                stackArn, r'ConformancePackStatusDetail', 'stackArn'),
            conformancePackStatusReason: conformancePackStatusReason,
            lastUpdateRequestedTime: BuiltValueNullFieldError.checkNotNull(
                lastUpdateRequestedTime,
                r'ConformancePackStatusDetail',
                'lastUpdateRequestedTime'),
            lastUpdateCompletedTime: lastUpdateCompletedTime);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
