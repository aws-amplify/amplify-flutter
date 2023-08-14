// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v_cpu_count_range_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$VCpuCountRangeRequest extends VCpuCountRangeRequest {
  @override
  final int min;
  @override
  final int max;

  factory _$VCpuCountRangeRequest(
          [void Function(VCpuCountRangeRequestBuilder)? updates]) =>
      (new VCpuCountRangeRequestBuilder()..update(updates))._build();

  _$VCpuCountRangeRequest._({required this.min, required this.max})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(min, r'VCpuCountRangeRequest', 'min');
    BuiltValueNullFieldError.checkNotNull(max, r'VCpuCountRangeRequest', 'max');
  }

  @override
  VCpuCountRangeRequest rebuild(
          void Function(VCpuCountRangeRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VCpuCountRangeRequestBuilder toBuilder() =>
      new VCpuCountRangeRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VCpuCountRangeRequest &&
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

class VCpuCountRangeRequestBuilder
    implements Builder<VCpuCountRangeRequest, VCpuCountRangeRequestBuilder> {
  _$VCpuCountRangeRequest? _$v;

  int? _min;
  int? get min => _$this._min;
  set min(int? min) => _$this._min = min;

  int? _max;
  int? get max => _$this._max;
  set max(int? max) => _$this._max = max;

  VCpuCountRangeRequestBuilder() {
    VCpuCountRangeRequest._init(this);
  }

  VCpuCountRangeRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _min = $v.min;
      _max = $v.max;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VCpuCountRangeRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$VCpuCountRangeRequest;
  }

  @override
  void update(void Function(VCpuCountRangeRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VCpuCountRangeRequest build() => _build();

  _$VCpuCountRangeRequest _build() {
    final _$result = _$v ??
        new _$VCpuCountRangeRequest._(
            min: BuiltValueNullFieldError.checkNotNull(
                min, r'VCpuCountRangeRequest', 'min'),
            max: BuiltValueNullFieldError.checkNotNull(
                max, r'VCpuCountRangeRequest', 'max'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
