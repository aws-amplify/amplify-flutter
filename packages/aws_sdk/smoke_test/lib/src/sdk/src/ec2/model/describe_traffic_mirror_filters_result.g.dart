// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_traffic_mirror_filters_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeTrafficMirrorFiltersResult
    extends DescribeTrafficMirrorFiltersResult {
  @override
  final _i2.BuiltList<TrafficMirrorFilter>? trafficMirrorFilters;
  @override
  final String? nextToken;

  factory _$DescribeTrafficMirrorFiltersResult(
          [void Function(DescribeTrafficMirrorFiltersResultBuilder)?
              updates]) =>
      (new DescribeTrafficMirrorFiltersResultBuilder()..update(updates))
          ._build();

  _$DescribeTrafficMirrorFiltersResult._(
      {this.trafficMirrorFilters, this.nextToken})
      : super._();

  @override
  DescribeTrafficMirrorFiltersResult rebuild(
          void Function(DescribeTrafficMirrorFiltersResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeTrafficMirrorFiltersResultBuilder toBuilder() =>
      new DescribeTrafficMirrorFiltersResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeTrafficMirrorFiltersResult &&
        trafficMirrorFilters == other.trafficMirrorFilters &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, trafficMirrorFilters.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeTrafficMirrorFiltersResultBuilder
    implements
        Builder<DescribeTrafficMirrorFiltersResult,
            DescribeTrafficMirrorFiltersResultBuilder> {
  _$DescribeTrafficMirrorFiltersResult? _$v;

  _i2.ListBuilder<TrafficMirrorFilter>? _trafficMirrorFilters;
  _i2.ListBuilder<TrafficMirrorFilter> get trafficMirrorFilters =>
      _$this._trafficMirrorFilters ??=
          new _i2.ListBuilder<TrafficMirrorFilter>();
  set trafficMirrorFilters(
          _i2.ListBuilder<TrafficMirrorFilter>? trafficMirrorFilters) =>
      _$this._trafficMirrorFilters = trafficMirrorFilters;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeTrafficMirrorFiltersResultBuilder();

  DescribeTrafficMirrorFiltersResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _trafficMirrorFilters = $v.trafficMirrorFilters?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeTrafficMirrorFiltersResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeTrafficMirrorFiltersResult;
  }

  @override
  void update(
      void Function(DescribeTrafficMirrorFiltersResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeTrafficMirrorFiltersResult build() => _build();

  _$DescribeTrafficMirrorFiltersResult _build() {
    _$DescribeTrafficMirrorFiltersResult _$result;
    try {
      _$result = _$v ??
          new _$DescribeTrafficMirrorFiltersResult._(
              trafficMirrorFilters: _trafficMirrorFilters?.build(),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'trafficMirrorFilters';
        _trafficMirrorFilters?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeTrafficMirrorFiltersResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
