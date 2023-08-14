// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'baseline_ebs_bandwidth_mbps_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BaselineEbsBandwidthMbpsRequest
    extends BaselineEbsBandwidthMbpsRequest {
  @override
  final int min;
  @override
  final int max;

  factory _$BaselineEbsBandwidthMbpsRequest(
          [void Function(BaselineEbsBandwidthMbpsRequestBuilder)? updates]) =>
      (new BaselineEbsBandwidthMbpsRequestBuilder()..update(updates))._build();

  _$BaselineEbsBandwidthMbpsRequest._({required this.min, required this.max})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        min, r'BaselineEbsBandwidthMbpsRequest', 'min');
    BuiltValueNullFieldError.checkNotNull(
        max, r'BaselineEbsBandwidthMbpsRequest', 'max');
  }

  @override
  BaselineEbsBandwidthMbpsRequest rebuild(
          void Function(BaselineEbsBandwidthMbpsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BaselineEbsBandwidthMbpsRequestBuilder toBuilder() =>
      new BaselineEbsBandwidthMbpsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BaselineEbsBandwidthMbpsRequest &&
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

class BaselineEbsBandwidthMbpsRequestBuilder
    implements
        Builder<BaselineEbsBandwidthMbpsRequest,
            BaselineEbsBandwidthMbpsRequestBuilder> {
  _$BaselineEbsBandwidthMbpsRequest? _$v;

  int? _min;
  int? get min => _$this._min;
  set min(int? min) => _$this._min = min;

  int? _max;
  int? get max => _$this._max;
  set max(int? max) => _$this._max = max;

  BaselineEbsBandwidthMbpsRequestBuilder() {
    BaselineEbsBandwidthMbpsRequest._init(this);
  }

  BaselineEbsBandwidthMbpsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _min = $v.min;
      _max = $v.max;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BaselineEbsBandwidthMbpsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BaselineEbsBandwidthMbpsRequest;
  }

  @override
  void update(void Function(BaselineEbsBandwidthMbpsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BaselineEbsBandwidthMbpsRequest build() => _build();

  _$BaselineEbsBandwidthMbpsRequest _build() {
    final _$result = _$v ??
        new _$BaselineEbsBandwidthMbpsRequest._(
            min: BuiltValueNullFieldError.checkNotNull(
                min, r'BaselineEbsBandwidthMbpsRequest', 'min'),
            max: BuiltValueNullFieldError.checkNotNull(
                max, r'BaselineEbsBandwidthMbpsRequest', 'max'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
