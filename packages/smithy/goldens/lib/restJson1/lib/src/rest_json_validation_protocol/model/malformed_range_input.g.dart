// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1_v1.rest_json_validation_protocol.model.malformed_range_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MalformedRangeInput extends MalformedRangeInput {
  @override
  final int? byte;
  @override
  final double? float;
  @override
  final int? integer;
  @override
  final _i3.Int64? long;
  @override
  final int? maxByte;
  @override
  final double? maxFloat;
  @override
  final int? maxInteger;
  @override
  final _i3.Int64? maxLong;
  @override
  final int? maxShort;
  @override
  final int? minByte;
  @override
  final double? minFloat;
  @override
  final int? minInteger;
  @override
  final _i3.Int64? minLong;
  @override
  final int? minShort;
  @override
  final int? short;

  factory _$MalformedRangeInput(
          [void Function(MalformedRangeInputBuilder)? updates]) =>
      (new MalformedRangeInputBuilder()..update(updates))._build();

  _$MalformedRangeInput._(
      {this.byte,
      this.float,
      this.integer,
      this.long,
      this.maxByte,
      this.maxFloat,
      this.maxInteger,
      this.maxLong,
      this.maxShort,
      this.minByte,
      this.minFloat,
      this.minInteger,
      this.minLong,
      this.minShort,
      this.short})
      : super._();

  @override
  MalformedRangeInput rebuild(
          void Function(MalformedRangeInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MalformedRangeInputBuilder toBuilder() =>
      new MalformedRangeInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MalformedRangeInput &&
        byte == other.byte &&
        float == other.float &&
        integer == other.integer &&
        long == other.long &&
        maxByte == other.maxByte &&
        maxFloat == other.maxFloat &&
        maxInteger == other.maxInteger &&
        maxLong == other.maxLong &&
        maxShort == other.maxShort &&
        minByte == other.minByte &&
        minFloat == other.minFloat &&
        minInteger == other.minInteger &&
        minLong == other.minLong &&
        minShort == other.minShort &&
        short == other.short;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, byte.hashCode);
    _$hash = $jc(_$hash, float.hashCode);
    _$hash = $jc(_$hash, integer.hashCode);
    _$hash = $jc(_$hash, long.hashCode);
    _$hash = $jc(_$hash, maxByte.hashCode);
    _$hash = $jc(_$hash, maxFloat.hashCode);
    _$hash = $jc(_$hash, maxInteger.hashCode);
    _$hash = $jc(_$hash, maxLong.hashCode);
    _$hash = $jc(_$hash, maxShort.hashCode);
    _$hash = $jc(_$hash, minByte.hashCode);
    _$hash = $jc(_$hash, minFloat.hashCode);
    _$hash = $jc(_$hash, minInteger.hashCode);
    _$hash = $jc(_$hash, minLong.hashCode);
    _$hash = $jc(_$hash, minShort.hashCode);
    _$hash = $jc(_$hash, short.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class MalformedRangeInputBuilder
    implements Builder<MalformedRangeInput, MalformedRangeInputBuilder> {
  _$MalformedRangeInput? _$v;

  int? _byte;
  int? get byte => _$this._byte;
  set byte(int? byte) => _$this._byte = byte;

  double? _float;
  double? get float => _$this._float;
  set float(double? float) => _$this._float = float;

  int? _integer;
  int? get integer => _$this._integer;
  set integer(int? integer) => _$this._integer = integer;

  _i3.Int64? _long;
  _i3.Int64? get long => _$this._long;
  set long(_i3.Int64? long) => _$this._long = long;

  int? _maxByte;
  int? get maxByte => _$this._maxByte;
  set maxByte(int? maxByte) => _$this._maxByte = maxByte;

  double? _maxFloat;
  double? get maxFloat => _$this._maxFloat;
  set maxFloat(double? maxFloat) => _$this._maxFloat = maxFloat;

  int? _maxInteger;
  int? get maxInteger => _$this._maxInteger;
  set maxInteger(int? maxInteger) => _$this._maxInteger = maxInteger;

  _i3.Int64? _maxLong;
  _i3.Int64? get maxLong => _$this._maxLong;
  set maxLong(_i3.Int64? maxLong) => _$this._maxLong = maxLong;

  int? _maxShort;
  int? get maxShort => _$this._maxShort;
  set maxShort(int? maxShort) => _$this._maxShort = maxShort;

  int? _minByte;
  int? get minByte => _$this._minByte;
  set minByte(int? minByte) => _$this._minByte = minByte;

  double? _minFloat;
  double? get minFloat => _$this._minFloat;
  set minFloat(double? minFloat) => _$this._minFloat = minFloat;

  int? _minInteger;
  int? get minInteger => _$this._minInteger;
  set minInteger(int? minInteger) => _$this._minInteger = minInteger;

  _i3.Int64? _minLong;
  _i3.Int64? get minLong => _$this._minLong;
  set minLong(_i3.Int64? minLong) => _$this._minLong = minLong;

  int? _minShort;
  int? get minShort => _$this._minShort;
  set minShort(int? minShort) => _$this._minShort = minShort;

  int? _short;
  int? get short => _$this._short;
  set short(int? short) => _$this._short = short;

  MalformedRangeInputBuilder() {
    MalformedRangeInput._init(this);
  }

  MalformedRangeInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _byte = $v.byte;
      _float = $v.float;
      _integer = $v.integer;
      _long = $v.long;
      _maxByte = $v.maxByte;
      _maxFloat = $v.maxFloat;
      _maxInteger = $v.maxInteger;
      _maxLong = $v.maxLong;
      _maxShort = $v.maxShort;
      _minByte = $v.minByte;
      _minFloat = $v.minFloat;
      _minInteger = $v.minInteger;
      _minLong = $v.minLong;
      _minShort = $v.minShort;
      _short = $v.short;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MalformedRangeInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MalformedRangeInput;
  }

  @override
  void update(void Function(MalformedRangeInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MalformedRangeInput build() => _build();

  _$MalformedRangeInput _build() {
    final _$result = _$v ??
        new _$MalformedRangeInput._(
            byte: byte,
            float: float,
            integer: integer,
            long: long,
            maxByte: maxByte,
            maxFloat: maxFloat,
            maxInteger: maxInteger,
            maxLong: maxLong,
            maxShort: maxShort,
            minByte: minByte,
            minFloat: minFloat,
            minInteger: minInteger,
            minLong: minLong,
            minShort: minShort,
            short: short);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
