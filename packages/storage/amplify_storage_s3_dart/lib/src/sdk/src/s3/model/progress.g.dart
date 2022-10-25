// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_storage_s3_dart.s3.model.progress;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Progress extends Progress {
  @override
  final _i2.Int64 bytesProcessed;
  @override
  final _i2.Int64 bytesReturned;
  @override
  final _i2.Int64 bytesScanned;

  factory _$Progress([void Function(ProgressBuilder)? updates]) =>
      (new ProgressBuilder()..update(updates))._build();

  _$Progress._(
      {required this.bytesProcessed,
      required this.bytesReturned,
      required this.bytesScanned})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        bytesProcessed, r'Progress', 'bytesProcessed');
    BuiltValueNullFieldError.checkNotNull(
        bytesReturned, r'Progress', 'bytesReturned');
    BuiltValueNullFieldError.checkNotNull(
        bytesScanned, r'Progress', 'bytesScanned');
  }

  @override
  Progress rebuild(void Function(ProgressBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProgressBuilder toBuilder() => new ProgressBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Progress &&
        bytesProcessed == other.bytesProcessed &&
        bytesReturned == other.bytesReturned &&
        bytesScanned == other.bytesScanned;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, bytesProcessed.hashCode), bytesReturned.hashCode),
        bytesScanned.hashCode));
  }
}

class ProgressBuilder implements Builder<Progress, ProgressBuilder> {
  _$Progress? _$v;

  _i2.Int64? _bytesProcessed;
  _i2.Int64? get bytesProcessed => _$this._bytesProcessed;
  set bytesProcessed(_i2.Int64? bytesProcessed) =>
      _$this._bytesProcessed = bytesProcessed;

  _i2.Int64? _bytesReturned;
  _i2.Int64? get bytesReturned => _$this._bytesReturned;
  set bytesReturned(_i2.Int64? bytesReturned) =>
      _$this._bytesReturned = bytesReturned;

  _i2.Int64? _bytesScanned;
  _i2.Int64? get bytesScanned => _$this._bytesScanned;
  set bytesScanned(_i2.Int64? bytesScanned) =>
      _$this._bytesScanned = bytesScanned;

  ProgressBuilder() {
    Progress._init(this);
  }

  ProgressBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bytesProcessed = $v.bytesProcessed;
      _bytesReturned = $v.bytesReturned;
      _bytesScanned = $v.bytesScanned;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Progress other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Progress;
  }

  @override
  void update(void Function(ProgressBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Progress build() => _build();

  _$Progress _build() {
    final _$result = _$v ??
        new _$Progress._(
            bytesProcessed: BuiltValueNullFieldError.checkNotNull(
                bytesProcessed, r'Progress', 'bytesProcessed'),
            bytesReturned: BuiltValueNullFieldError.checkNotNull(
                bytesReturned, r'Progress', 'bytesReturned'),
            bytesScanned: BuiltValueNullFieldError.checkNotNull(
                bytesScanned, r'Progress', 'bytesScanned'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
