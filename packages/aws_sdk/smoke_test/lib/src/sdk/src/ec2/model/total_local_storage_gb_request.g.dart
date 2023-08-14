// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'total_local_storage_gb_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TotalLocalStorageGbRequest extends TotalLocalStorageGbRequest {
  @override
  final double min;
  @override
  final double max;

  factory _$TotalLocalStorageGbRequest(
          [void Function(TotalLocalStorageGbRequestBuilder)? updates]) =>
      (new TotalLocalStorageGbRequestBuilder()..update(updates))._build();

  _$TotalLocalStorageGbRequest._({required this.min, required this.max})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        min, r'TotalLocalStorageGbRequest', 'min');
    BuiltValueNullFieldError.checkNotNull(
        max, r'TotalLocalStorageGbRequest', 'max');
  }

  @override
  TotalLocalStorageGbRequest rebuild(
          void Function(TotalLocalStorageGbRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TotalLocalStorageGbRequestBuilder toBuilder() =>
      new TotalLocalStorageGbRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TotalLocalStorageGbRequest &&
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

class TotalLocalStorageGbRequestBuilder
    implements
        Builder<TotalLocalStorageGbRequest, TotalLocalStorageGbRequestBuilder> {
  _$TotalLocalStorageGbRequest? _$v;

  double? _min;
  double? get min => _$this._min;
  set min(double? min) => _$this._min = min;

  double? _max;
  double? get max => _$this._max;
  set max(double? max) => _$this._max = max;

  TotalLocalStorageGbRequestBuilder() {
    TotalLocalStorageGbRequest._init(this);
  }

  TotalLocalStorageGbRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _min = $v.min;
      _max = $v.max;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TotalLocalStorageGbRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TotalLocalStorageGbRequest;
  }

  @override
  void update(void Function(TotalLocalStorageGbRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TotalLocalStorageGbRequest build() => _build();

  _$TotalLocalStorageGbRequest _build() {
    final _$result = _$v ??
        new _$TotalLocalStorageGbRequest._(
            min: BuiltValueNullFieldError.checkNotNull(
                min, r'TotalLocalStorageGbRequest', 'min'),
            max: BuiltValueNullFieldError.checkNotNull(
                max, r'TotalLocalStorageGbRequest', 'max'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
