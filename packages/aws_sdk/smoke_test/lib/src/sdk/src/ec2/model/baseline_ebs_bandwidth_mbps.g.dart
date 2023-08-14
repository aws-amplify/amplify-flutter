// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'baseline_ebs_bandwidth_mbps.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BaselineEbsBandwidthMbps extends BaselineEbsBandwidthMbps {
  @override
  final int min;
  @override
  final int max;

  factory _$BaselineEbsBandwidthMbps(
          [void Function(BaselineEbsBandwidthMbpsBuilder)? updates]) =>
      (new BaselineEbsBandwidthMbpsBuilder()..update(updates))._build();

  _$BaselineEbsBandwidthMbps._({required this.min, required this.max})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        min, r'BaselineEbsBandwidthMbps', 'min');
    BuiltValueNullFieldError.checkNotNull(
        max, r'BaselineEbsBandwidthMbps', 'max');
  }

  @override
  BaselineEbsBandwidthMbps rebuild(
          void Function(BaselineEbsBandwidthMbpsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BaselineEbsBandwidthMbpsBuilder toBuilder() =>
      new BaselineEbsBandwidthMbpsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BaselineEbsBandwidthMbps &&
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

class BaselineEbsBandwidthMbpsBuilder
    implements
        Builder<BaselineEbsBandwidthMbps, BaselineEbsBandwidthMbpsBuilder> {
  _$BaselineEbsBandwidthMbps? _$v;

  int? _min;
  int? get min => _$this._min;
  set min(int? min) => _$this._min = min;

  int? _max;
  int? get max => _$this._max;
  set max(int? max) => _$this._max = max;

  BaselineEbsBandwidthMbpsBuilder() {
    BaselineEbsBandwidthMbps._init(this);
  }

  BaselineEbsBandwidthMbpsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _min = $v.min;
      _max = $v.max;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BaselineEbsBandwidthMbps other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BaselineEbsBandwidthMbps;
  }

  @override
  void update(void Function(BaselineEbsBandwidthMbpsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BaselineEbsBandwidthMbps build() => _build();

  _$BaselineEbsBandwidthMbps _build() {
    final _$result = _$v ??
        new _$BaselineEbsBandwidthMbps._(
            min: BuiltValueNullFieldError.checkNotNull(
                min, r'BaselineEbsBandwidthMbps', 'min'),
            max: BuiltValueNullFieldError.checkNotNull(
                max, r'BaselineEbsBandwidthMbps', 'max'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
