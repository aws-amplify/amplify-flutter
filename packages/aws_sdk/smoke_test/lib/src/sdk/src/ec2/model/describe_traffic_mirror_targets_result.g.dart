// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_traffic_mirror_targets_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeTrafficMirrorTargetsResult
    extends DescribeTrafficMirrorTargetsResult {
  @override
  final _i2.BuiltList<TrafficMirrorTarget>? trafficMirrorTargets;
  @override
  final String? nextToken;

  factory _$DescribeTrafficMirrorTargetsResult(
          [void Function(DescribeTrafficMirrorTargetsResultBuilder)?
              updates]) =>
      (new DescribeTrafficMirrorTargetsResultBuilder()..update(updates))
          ._build();

  _$DescribeTrafficMirrorTargetsResult._(
      {this.trafficMirrorTargets, this.nextToken})
      : super._();

  @override
  DescribeTrafficMirrorTargetsResult rebuild(
          void Function(DescribeTrafficMirrorTargetsResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeTrafficMirrorTargetsResultBuilder toBuilder() =>
      new DescribeTrafficMirrorTargetsResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeTrafficMirrorTargetsResult &&
        trafficMirrorTargets == other.trafficMirrorTargets &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, trafficMirrorTargets.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeTrafficMirrorTargetsResultBuilder
    implements
        Builder<DescribeTrafficMirrorTargetsResult,
            DescribeTrafficMirrorTargetsResultBuilder> {
  _$DescribeTrafficMirrorTargetsResult? _$v;

  _i2.ListBuilder<TrafficMirrorTarget>? _trafficMirrorTargets;
  _i2.ListBuilder<TrafficMirrorTarget> get trafficMirrorTargets =>
      _$this._trafficMirrorTargets ??=
          new _i2.ListBuilder<TrafficMirrorTarget>();
  set trafficMirrorTargets(
          _i2.ListBuilder<TrafficMirrorTarget>? trafficMirrorTargets) =>
      _$this._trafficMirrorTargets = trafficMirrorTargets;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeTrafficMirrorTargetsResultBuilder();

  DescribeTrafficMirrorTargetsResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _trafficMirrorTargets = $v.trafficMirrorTargets?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeTrafficMirrorTargetsResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeTrafficMirrorTargetsResult;
  }

  @override
  void update(
      void Function(DescribeTrafficMirrorTargetsResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeTrafficMirrorTargetsResult build() => _build();

  _$DescribeTrafficMirrorTargetsResult _build() {
    _$DescribeTrafficMirrorTargetsResult _$result;
    try {
      _$result = _$v ??
          new _$DescribeTrafficMirrorTargetsResult._(
              trafficMirrorTargets: _trafficMirrorTargets?.build(),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'trafficMirrorTargets';
        _trafficMirrorTargets?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeTrafficMirrorTargetsResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
