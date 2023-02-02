// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1_v2.rest_json_validation_protocol.model.malformed_range_override_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MalformedRangeOverrideInput extends MalformedRangeOverrideInput {
  @override
  final int? byte;
  @override
  final double? float;
  @override
  final int? maxByte;
  @override
  final double? maxFloat;
  @override
  final int? minByte;
  @override
  final double? minFloat;

  factory _$MalformedRangeOverrideInput(
          [void Function(MalformedRangeOverrideInputBuilder)? updates]) =>
      (new MalformedRangeOverrideInputBuilder()..update(updates))._build();

  _$MalformedRangeOverrideInput._(
      {this.byte,
      this.float,
      this.maxByte,
      this.maxFloat,
      this.minByte,
      this.minFloat})
      : super._();

  @override
  MalformedRangeOverrideInput rebuild(
          void Function(MalformedRangeOverrideInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MalformedRangeOverrideInputBuilder toBuilder() =>
      new MalformedRangeOverrideInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MalformedRangeOverrideInput &&
        byte == other.byte &&
        float == other.float &&
        maxByte == other.maxByte &&
        maxFloat == other.maxFloat &&
        minByte == other.minByte &&
        minFloat == other.minFloat;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, byte.hashCode);
    _$hash = $jc(_$hash, float.hashCode);
    _$hash = $jc(_$hash, maxByte.hashCode);
    _$hash = $jc(_$hash, maxFloat.hashCode);
    _$hash = $jc(_$hash, minByte.hashCode);
    _$hash = $jc(_$hash, minFloat.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class MalformedRangeOverrideInputBuilder
    implements
        Builder<MalformedRangeOverrideInput,
            MalformedRangeOverrideInputBuilder> {
  _$MalformedRangeOverrideInput? _$v;

  int? _byte;
  int? get byte => _$this._byte;
  set byte(int? byte) => _$this._byte = byte;

  double? _float;
  double? get float => _$this._float;
  set float(double? float) => _$this._float = float;

  int? _maxByte;
  int? get maxByte => _$this._maxByte;
  set maxByte(int? maxByte) => _$this._maxByte = maxByte;

  double? _maxFloat;
  double? get maxFloat => _$this._maxFloat;
  set maxFloat(double? maxFloat) => _$this._maxFloat = maxFloat;

  int? _minByte;
  int? get minByte => _$this._minByte;
  set minByte(int? minByte) => _$this._minByte = minByte;

  double? _minFloat;
  double? get minFloat => _$this._minFloat;
  set minFloat(double? minFloat) => _$this._minFloat = minFloat;

  MalformedRangeOverrideInputBuilder() {
    MalformedRangeOverrideInput._init(this);
  }

  MalformedRangeOverrideInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _byte = $v.byte;
      _float = $v.float;
      _maxByte = $v.maxByte;
      _maxFloat = $v.maxFloat;
      _minByte = $v.minByte;
      _minFloat = $v.minFloat;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MalformedRangeOverrideInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MalformedRangeOverrideInput;
  }

  @override
  void update(void Function(MalformedRangeOverrideInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MalformedRangeOverrideInput build() => _build();

  _$MalformedRangeOverrideInput _build() {
    final _$result = _$v ??
        new _$MalformedRangeOverrideInput._(
            byte: byte,
            float: float,
            maxByte: maxByte,
            maxFloat: maxFloat,
            minByte: minByte,
            minFloat: minFloat);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
