// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'accelerator_total_memory_mi_b_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AcceleratorTotalMemoryMiBRequest
    extends AcceleratorTotalMemoryMiBRequest {
  @override
  final int min;
  @override
  final int max;

  factory _$AcceleratorTotalMemoryMiBRequest(
          [void Function(AcceleratorTotalMemoryMiBRequestBuilder)? updates]) =>
      (new AcceleratorTotalMemoryMiBRequestBuilder()..update(updates))._build();

  _$AcceleratorTotalMemoryMiBRequest._({required this.min, required this.max})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        min, r'AcceleratorTotalMemoryMiBRequest', 'min');
    BuiltValueNullFieldError.checkNotNull(
        max, r'AcceleratorTotalMemoryMiBRequest', 'max');
  }

  @override
  AcceleratorTotalMemoryMiBRequest rebuild(
          void Function(AcceleratorTotalMemoryMiBRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AcceleratorTotalMemoryMiBRequestBuilder toBuilder() =>
      new AcceleratorTotalMemoryMiBRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AcceleratorTotalMemoryMiBRequest &&
        min == other.min &&
        max == other.max;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, min.hashCode);
    _$hash = $jc(_$hash, max.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AcceleratorTotalMemoryMiBRequestBuilder
    implements
        Builder<AcceleratorTotalMemoryMiBRequest,
            AcceleratorTotalMemoryMiBRequestBuilder> {
  _$AcceleratorTotalMemoryMiBRequest? _$v;

  int? _min;
  int? get min => _$this._min;
  set min(int? min) => _$this._min = min;

  int? _max;
  int? get max => _$this._max;
  set max(int? max) => _$this._max = max;

  AcceleratorTotalMemoryMiBRequestBuilder() {
    AcceleratorTotalMemoryMiBRequest._init(this);
  }

  AcceleratorTotalMemoryMiBRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _min = $v.min;
      _max = $v.max;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AcceleratorTotalMemoryMiBRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AcceleratorTotalMemoryMiBRequest;
  }

  @override
  void update(void Function(AcceleratorTotalMemoryMiBRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AcceleratorTotalMemoryMiBRequest build() => _build();

  _$AcceleratorTotalMemoryMiBRequest _build() {
    final _$result = _$v ??
        new _$AcceleratorTotalMemoryMiBRequest._(
            min: BuiltValueNullFieldError.checkNotNull(
                min, r'AcceleratorTotalMemoryMiBRequest', 'min'),
            max: BuiltValueNullFieldError.checkNotNull(
                max, r'AcceleratorTotalMemoryMiBRequest', 'max'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
