// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'accelerator_count_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AcceleratorCountRequest extends AcceleratorCountRequest {
  @override
  final int min;
  @override
  final int max;

  factory _$AcceleratorCountRequest(
          [void Function(AcceleratorCountRequestBuilder)? updates]) =>
      (new AcceleratorCountRequestBuilder()..update(updates))._build();

  _$AcceleratorCountRequest._({required this.min, required this.max})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        min, r'AcceleratorCountRequest', 'min');
    BuiltValueNullFieldError.checkNotNull(
        max, r'AcceleratorCountRequest', 'max');
  }

  @override
  AcceleratorCountRequest rebuild(
          void Function(AcceleratorCountRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AcceleratorCountRequestBuilder toBuilder() =>
      new AcceleratorCountRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AcceleratorCountRequest &&
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

class AcceleratorCountRequestBuilder
    implements
        Builder<AcceleratorCountRequest, AcceleratorCountRequestBuilder> {
  _$AcceleratorCountRequest? _$v;

  int? _min;
  int? get min => _$this._min;
  set min(int? min) => _$this._min = min;

  int? _max;
  int? get max => _$this._max;
  set max(int? max) => _$this._max = max;

  AcceleratorCountRequestBuilder() {
    AcceleratorCountRequest._init(this);
  }

  AcceleratorCountRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _min = $v.min;
      _max = $v.max;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AcceleratorCountRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AcceleratorCountRequest;
  }

  @override
  void update(void Function(AcceleratorCountRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AcceleratorCountRequest build() => _build();

  _$AcceleratorCountRequest _build() {
    final _$result = _$v ??
        new _$AcceleratorCountRequest._(
            min: BuiltValueNullFieldError.checkNotNull(
                min, r'AcceleratorCountRequest', 'min'),
            max: BuiltValueNullFieldError.checkNotNull(
                max, r'AcceleratorCountRequest', 'max'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
