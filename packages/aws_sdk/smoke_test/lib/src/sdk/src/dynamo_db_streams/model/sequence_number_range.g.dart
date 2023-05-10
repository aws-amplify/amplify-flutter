// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db_streams.model.sequence_number_range;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SequenceNumberRange extends SequenceNumberRange {
  @override
  final String? startingSequenceNumber;
  @override
  final String? endingSequenceNumber;

  factory _$SequenceNumberRange(
          [void Function(SequenceNumberRangeBuilder)? updates]) =>
      (new SequenceNumberRangeBuilder()..update(updates))._build();

  _$SequenceNumberRange._(
      {this.startingSequenceNumber, this.endingSequenceNumber})
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
        startingSequenceNumber == other.startingSequenceNumber &&
        endingSequenceNumber == other.endingSequenceNumber;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, startingSequenceNumber.hashCode);
    _$hash = $jc(_$hash, endingSequenceNumber.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class SequenceNumberRangeBuilder
    implements Builder<SequenceNumberRange, SequenceNumberRangeBuilder> {
  _$SequenceNumberRange? _$v;

  String? _startingSequenceNumber;
  String? get startingSequenceNumber => _$this._startingSequenceNumber;
  set startingSequenceNumber(String? startingSequenceNumber) =>
      _$this._startingSequenceNumber = startingSequenceNumber;

  String? _endingSequenceNumber;
  String? get endingSequenceNumber => _$this._endingSequenceNumber;
  set endingSequenceNumber(String? endingSequenceNumber) =>
      _$this._endingSequenceNumber = endingSequenceNumber;

  SequenceNumberRangeBuilder() {
    SequenceNumberRange._init(this);
  }

  SequenceNumberRangeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _startingSequenceNumber = $v.startingSequenceNumber;
      _endingSequenceNumber = $v.endingSequenceNumber;
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
            startingSequenceNumber: startingSequenceNumber,
            endingSequenceNumber: endingSequenceNumber);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
