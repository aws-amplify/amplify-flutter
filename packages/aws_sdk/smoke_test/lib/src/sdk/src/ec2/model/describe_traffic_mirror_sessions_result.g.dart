// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_traffic_mirror_sessions_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeTrafficMirrorSessionsResult
    extends DescribeTrafficMirrorSessionsResult {
  @override
  final _i2.BuiltList<TrafficMirrorSession>? trafficMirrorSessions;
  @override
  final String? nextToken;

  factory _$DescribeTrafficMirrorSessionsResult(
          [void Function(DescribeTrafficMirrorSessionsResultBuilder)?
              updates]) =>
      (new DescribeTrafficMirrorSessionsResultBuilder()..update(updates))
          ._build();

  _$DescribeTrafficMirrorSessionsResult._(
      {this.trafficMirrorSessions, this.nextToken})
      : super._();

  @override
  DescribeTrafficMirrorSessionsResult rebuild(
          void Function(DescribeTrafficMirrorSessionsResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeTrafficMirrorSessionsResultBuilder toBuilder() =>
      new DescribeTrafficMirrorSessionsResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeTrafficMirrorSessionsResult &&
        trafficMirrorSessions == other.trafficMirrorSessions &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, trafficMirrorSessions.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeTrafficMirrorSessionsResultBuilder
    implements
        Builder<DescribeTrafficMirrorSessionsResult,
            DescribeTrafficMirrorSessionsResultBuilder> {
  _$DescribeTrafficMirrorSessionsResult? _$v;

  _i2.ListBuilder<TrafficMirrorSession>? _trafficMirrorSessions;
  _i2.ListBuilder<TrafficMirrorSession> get trafficMirrorSessions =>
      _$this._trafficMirrorSessions ??=
          new _i2.ListBuilder<TrafficMirrorSession>();
  set trafficMirrorSessions(
          _i2.ListBuilder<TrafficMirrorSession>? trafficMirrorSessions) =>
      _$this._trafficMirrorSessions = trafficMirrorSessions;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeTrafficMirrorSessionsResultBuilder();

  DescribeTrafficMirrorSessionsResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _trafficMirrorSessions = $v.trafficMirrorSessions?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeTrafficMirrorSessionsResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeTrafficMirrorSessionsResult;
  }

  @override
  void update(
      void Function(DescribeTrafficMirrorSessionsResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeTrafficMirrorSessionsResult build() => _build();

  _$DescribeTrafficMirrorSessionsResult _build() {
    _$DescribeTrafficMirrorSessionsResult _$result;
    try {
      _$result = _$v ??
          new _$DescribeTrafficMirrorSessionsResult._(
              trafficMirrorSessions: _trafficMirrorSessions?.build(),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'trafficMirrorSessions';
        _trafficMirrorSessions?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeTrafficMirrorSessionsResult',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
