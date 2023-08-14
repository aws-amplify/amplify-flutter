// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'memory_mi_b_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MemoryMiBRequest extends MemoryMiBRequest {
  @override
  final int min;
  @override
  final int max;

  factory _$MemoryMiBRequest(
          [void Function(MemoryMiBRequestBuilder)? updates]) =>
      (new MemoryMiBRequestBuilder()..update(updates))._build();

  _$MemoryMiBRequest._({required this.min, required this.max}) : super._() {
    BuiltValueNullFieldError.checkNotNull(min, r'MemoryMiBRequest', 'min');
    BuiltValueNullFieldError.checkNotNull(max, r'MemoryMiBRequest', 'max');
  }

  @override
  MemoryMiBRequest rebuild(void Function(MemoryMiBRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MemoryMiBRequestBuilder toBuilder() =>
      new MemoryMiBRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MemoryMiBRequest && min == other.min && max == other.max;
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

class MemoryMiBRequestBuilder
    implements Builder<MemoryMiBRequest, MemoryMiBRequestBuilder> {
  _$MemoryMiBRequest? _$v;

  int? _min;
  int? get min => _$this._min;
  set min(int? min) => _$this._min = min;

  int? _max;
  int? get max => _$this._max;
  set max(int? max) => _$this._max = max;

  MemoryMiBRequestBuilder() {
    MemoryMiBRequest._init(this);
  }

  MemoryMiBRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _min = $v.min;
      _max = $v.max;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MemoryMiBRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MemoryMiBRequest;
  }

  @override
  void update(void Function(MemoryMiBRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MemoryMiBRequest build() => _build();

  _$MemoryMiBRequest _build() {
    final _$result = _$v ??
        new _$MemoryMiBRequest._(
            min: BuiltValueNullFieldError.checkNotNull(
                min, r'MemoryMiBRequest', 'min'),
            max: BuiltValueNullFieldError.checkNotNull(
                max, r'MemoryMiBRequest', 'max'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
