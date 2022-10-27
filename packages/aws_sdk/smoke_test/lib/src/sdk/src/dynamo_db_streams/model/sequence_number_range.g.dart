// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db_streams.model.sequence_number_range;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SequenceNumberRange extends SequenceNumberRange {
  @override
  final String? endingSequenceNumber;
  @override
  final String? startingSequenceNumber;

  factory _$SequenceNumberRange(
          [void Function(SequenceNumberRangeBuilder)? updates]) =>
      (new SequenceNumberRangeBuilder()..update(updates))._build();

  _$SequenceNumberRange._(
      {this.endingSequenceNumber, this.startingSequenceNumber})
      : super._();

  @override
  SequenceNumberRange rebuild(
          void Function(SequenceNumberRangeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SequenceNumberRangeBuilder toBuilder() =>
      new SequenceNumberRangeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SequenceNumberRange &&
        endingSequenceNumber == other.endingSequenceNumber &&
        startingSequenceNumber == other.startingSequenceNumber;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, endingSequenceNumber.hashCode),
        startingSequenceNumber.hashCode));
  }
}

class SequenceNumberRangeBuilder
    implements Builder<SequenceNumberRange, SequenceNumberRangeBuilder> {
  _$SequenceNumberRange? _$v;

  String? _endingSequenceNumber;
  String? get endingSequenceNumber => _$this._endingSequenceNumber;
  set endingSequenceNumber(String? endingSequenceNumber) =>
      _$this._endingSequenceNumber = endingSequenceNumber;

  String? _startingSequenceNumber;
  String? get startingSequenceNumber => _$this._startingSequenceNumber;
  set startingSequenceNumber(String? startingSequenceNumber) =>
      _$this._startingSequenceNumber = startingSequenceNumber;

  SequenceNumberRangeBuilder() {
    SequenceNumberRange._init(this);
  }

  SequenceNumberRangeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _endingSequenceNumber = $v.endingSequenceNumber;
      _startingSequenceNumber = $v.startingSequenceNumber;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SequenceNumberRange other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SequenceNumberRange;
  }

  @override
  void update(void Function(SequenceNumberRangeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SequenceNumberRange build() => _build();

  _$SequenceNumberRange _build() {
    final _$result = _$v ??
        new _$SequenceNumberRange._(
            endingSequenceNumber: endingSequenceNumber,
            startingSequenceNumber: startingSequenceNumber);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
