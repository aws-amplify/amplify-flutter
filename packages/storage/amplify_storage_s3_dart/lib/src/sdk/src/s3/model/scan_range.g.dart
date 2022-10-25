// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_storage_s3_dart.s3.model.scan_range;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ScanRange extends ScanRange {
  @override
  final _i2.Int64 end;
  @override
  final _i2.Int64 start;

  factory _$ScanRange([void Function(ScanRangeBuilder)? updates]) =>
      (new ScanRangeBuilder()..update(updates))._build();

  _$ScanRange._({required this.end, required this.start}) : super._() {
    BuiltValueNullFieldError.checkNotNull(end, r'ScanRange', 'end');
    BuiltValueNullFieldError.checkNotNull(start, r'ScanRange', 'start');
  }

  @override
  ScanRange rebuild(void Function(ScanRangeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ScanRangeBuilder toBuilder() => new ScanRangeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ScanRange && end == other.end && start == other.start;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, end.hashCode), start.hashCode));
  }
}

class ScanRangeBuilder implements Builder<ScanRange, ScanRangeBuilder> {
  _$ScanRange? _$v;

  _i2.Int64? _end;
  _i2.Int64? get end => _$this._end;
  set end(_i2.Int64? end) => _$this._end = end;

  _i2.Int64? _start;
  _i2.Int64? get start => _$this._start;
  set start(_i2.Int64? start) => _$this._start = start;

  ScanRangeBuilder() {
    ScanRange._init(this);
  }

  ScanRangeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _end = $v.end;
      _start = $v.start;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ScanRange other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ScanRange;
  }

  @override
  void update(void Function(ScanRangeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ScanRange build() => _build();

  _$ScanRange _build() {
    final _$result = _$v ??
        new _$ScanRange._(
            end:
                BuiltValueNullFieldError.checkNotNull(end, r'ScanRange', 'end'),
            start: BuiltValueNullFieldError.checkNotNull(
                start, r'ScanRange', 'start'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
