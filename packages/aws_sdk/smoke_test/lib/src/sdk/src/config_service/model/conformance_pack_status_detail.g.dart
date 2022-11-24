// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.conformance_pack_status_detail;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConformancePackStatusDetail extends ConformancePackStatusDetail {
  @override
  final String conformancePackArn;
  @override
  final String conformancePackId;
  @override
  final String conformancePackName;
  @override
  final _i2.ConformancePackState conformancePackState;
  @override
  final String? conformancePackStatusReason;
  @override
  final DateTime? lastUpdateCompletedTime;
  @override
  final DateTime lastUpdateRequestedTime;
  @override
  final String stackArn;

  factory _$ConformancePackStatusDetail(
          [void Function(ConformancePackStatusDetailBuilder)? updates]) =>
      (new ConformancePackStatusDetailBuilder()..update(updates))._build();

  _$ConformancePackStatusDetail._(
      {required this.conformancePackArn,
      required this.conformancePackId,
      required this.conformancePackName,
      required this.conformancePackState,
      this.conformancePackStatusReason,
      this.lastUpdateCompletedTime,
      required this.lastUpdateRequestedTime,
      required this.stackArn})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(conformancePackArn,
        r'ConformancePackStatusDetail', 'conformancePackArn');
    BuiltValueNullFieldError.checkNotNull(
        conformancePackId, r'ConformancePackStatusDetail', 'conformancePackId');
    BuiltValueNullFieldError.checkNotNull(conformancePackName,
        r'ConformancePackStatusDetail', 'conformancePackName');
    BuiltValueNullFieldError.checkNotNull(conformancePackState,
        r'ConformancePackStatusDetail', 'conformancePackState');
    BuiltValueNullFieldError.checkNotNull(lastUpdateRequestedTime,
        r'ConformancePackStatusDetail', 'lastUpdateRequestedTime');
    BuiltValueNullFieldError.checkNotNull(
        stackArn, r'ConformancePackStatusDetail', 'stackArn');
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
        conformancePackArn == other.conformancePackArn &&
        conformancePackId == other.conformancePackId &&
        conformancePackName == other.conformancePackName &&
        conformancePackState == other.conformancePackState &&
        conformancePackStatusReason == other.conformancePackStatusReason &&
        lastUpdateCompletedTime == other.lastUpdateCompletedTime &&
        lastUpdateRequestedTime == other.lastUpdateRequestedTime &&
        stackArn == other.stackArn;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc(0, conformancePackArn.hashCode),
                                conformancePackId.hashCode),
                            conformancePackName.hashCode),
                        conformancePackState.hashCode),
                    conformancePackStatusReason.hashCode),
                lastUpdateCompletedTime.hashCode),
            lastUpdateRequestedTime.hashCode),
        stackArn.hashCode));
  }
}

class ConformancePackStatusDetailBuilder
    implements
        Builder<ConformancePackStatusDetail,
            ConformancePackStatusDetailBuilder> {
  _$ConformancePackStatusDetail? _$v;

  String? _conformancePackArn;
  String? get conformancePackArn => _$this._conformancePackArn;
  set conformancePackArn(String? conformancePackArn) =>
      _$this._conformancePackArn = conformancePackArn;

  String? _conformancePackId;
  String? get conformancePackId => _$this._conformancePackId;
  set conformancePackId(String? conformancePackId) =>
      _$this._conformancePackId = conformancePackId;

  String? _conformancePackName;
  String? get conformancePackName => _$this._conformancePackName;
  set conformancePackName(String? conformancePackName) =>
      _$this._conformancePackName = conformancePackName;

  _i2.ConformancePackState? _conformancePackState;
  _i2.ConformancePackState? get conformancePackState =>
      _$this._conformancePackState;
  set conformancePackState(_i2.ConformancePackState? conformancePackState) =>
      _$this._conformancePackState = conformancePackState;

  String? _conformancePackStatusReason;
  String? get conformancePackStatusReason =>
      _$this._conformancePackStatusReason;
  set conformancePackStatusReason(String? conformancePackStatusReason) =>
      _$this._conformancePackStatusReason = conformancePackStatusReason;

  DateTime? _lastUpdateCompletedTime;
  DateTime? get lastUpdateCompletedTime => _$this._lastUpdateCompletedTime;
  set lastUpdateCompletedTime(DateTime? lastUpdateCompletedTime) =>
      _$this._lastUpdateCompletedTime = lastUpdateCompletedTime;

  DateTime? _lastUpdateRequestedTime;
  DateTime? get lastUpdateRequestedTime => _$this._lastUpdateRequestedTime;
  set lastUpdateRequestedTime(DateTime? lastUpdateRequestedTime) =>
      _$this._lastUpdateRequestedTime = lastUpdateRequestedTime;

  String? _stackArn;
  String? get stackArn => _$this._stackArn;
  set stackArn(String? stackArn) => _$this._stackArn = stackArn;

  ConformancePackStatusDetailBuilder() {
    ConformancePackStatusDetail._init(this);
  }

  ConformancePackStatusDetailBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _conformancePackArn = $v.conformancePackArn;
      _conformancePackId = $v.conformancePackId;
      _conformancePackName = $v.conformancePackName;
      _conformancePackState = $v.conformancePackState;
      _conformancePackStatusReason = $v.conformancePackStatusReason;
      _lastUpdateCompletedTime = $v.lastUpdateCompletedTime;
      _lastUpdateRequestedTime = $v.lastUpdateRequestedTime;
      _stackArn = $v.stackArn;
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
            conformancePackArn: BuiltValueNullFieldError.checkNotNull(
                conformancePackArn, r'ConformancePackStatusDetail', 'conformancePackArn'),
            conformancePackId: BuiltValueNullFieldError.checkNotNull(
                conformancePackId, r'ConformancePackStatusDetail', 'conformancePackId'),
            conformancePackName: BuiltValueNullFieldError.checkNotNull(
                conformancePackName, r'ConformancePackStatusDetail', 'conformancePackName'),
            conformancePackState: BuiltValueNullFieldError.checkNotNull(
                conformancePackState,
                r'ConformancePackStatusDetail',
                'conformancePackState'),
            conformancePackStatusReason: conformancePackStatusReason,
            lastUpdateCompletedTime: lastUpdateCompletedTime,
            lastUpdateRequestedTime: BuiltValueNullFieldError.checkNotNull(
                lastUpdateRequestedTime,
                r'ConformancePackStatusDetail',
                'lastUpdateRequestedTime'),
            stackArn: BuiltValueNullFieldError.checkNotNull(
                stackArn, r'ConformancePackStatusDetail', 'stackArn'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
