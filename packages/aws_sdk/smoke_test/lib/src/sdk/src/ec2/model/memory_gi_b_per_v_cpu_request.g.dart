// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'memory_gi_b_per_v_cpu_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MemoryGiBPerVCpuRequest extends MemoryGiBPerVCpuRequest {
  @override
  final double min;
  @override
  final double max;

  factory _$MemoryGiBPerVCpuRequest(
          [void Function(MemoryGiBPerVCpuRequestBuilder)? updates]) =>
      (new MemoryGiBPerVCpuRequestBuilder()..update(updates))._build();

  _$MemoryGiBPerVCpuRequest._({required this.min, required this.max})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        min, r'MemoryGiBPerVCpuRequest', 'min');
    BuiltValueNullFieldError.checkNotNull(
        max, r'MemoryGiBPerVCpuRequest', 'max');
  }

  @override
  MemoryGiBPerVCpuRequest rebuild(
          void Function(MemoryGiBPerVCpuRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MemoryGiBPerVCpuRequestBuilder toBuilder() =>
      new MemoryGiBPerVCpuRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MemoryGiBPerVCpuRequest &&
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

class MemoryGiBPerVCpuRequestBuilder
    implements
        Builder<MemoryGiBPerVCpuRequest, MemoryGiBPerVCpuRequestBuilder> {
  _$MemoryGiBPerVCpuRequest? _$v;

  double? _min;
  double? get min => _$this._min;
  set min(double? min) => _$this._min = min;

  double? _max;
  double? get max => _$this._max;
  set max(double? max) => _$this._max = max;

  MemoryGiBPerVCpuRequestBuilder() {
    MemoryGiBPerVCpuRequest._init(this);
  }

  MemoryGiBPerVCpuRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _min = $v.min;
      _max = $v.max;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MemoryGiBPerVCpuRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MemoryGiBPerVCpuRequest;
  }

  @override
  void update(void Function(MemoryGiBPerVCpuRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MemoryGiBPerVCpuRequest build() => _build();

  _$MemoryGiBPerVCpuRequest _build() {
    final _$result = _$v ??
        new _$MemoryGiBPerVCpuRequest._(
            min: BuiltValueNullFieldError.checkNotNull(
                min, r'MemoryGiBPerVCpuRequest', 'min'),
            max: BuiltValueNullFieldError.checkNotNull(
                max, r'MemoryGiBPerVCpuRequest', 'max'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
