// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_traffic_mirror_target_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateTrafficMirrorTargetResult
    extends CreateTrafficMirrorTargetResult {
  @override
  final TrafficMirrorTarget? trafficMirrorTarget;
  @override
  final String? clientToken;

  factory _$CreateTrafficMirrorTargetResult(
          [void Function(CreateTrafficMirrorTargetResultBuilder)? updates]) =>
      (new CreateTrafficMirrorTargetResultBuilder()..update(updates))._build();

  _$CreateTrafficMirrorTargetResult._(
      {this.trafficMirrorTarget, this.clientToken})
      : super._();

  @override
  CreateTrafficMirrorTargetResult rebuild(
          void Function(CreateTrafficMirrorTargetResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateTrafficMirrorTargetResultBuilder toBuilder() =>
      new CreateTrafficMirrorTargetResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateTrafficMirrorTargetResult &&
        trafficMirrorTarget == other.trafficMirrorTarget &&
        clientToken == other.clientToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, trafficMirrorTarget.hashCode);
    _$hash = $jc(_$hash, clientToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateTrafficMirrorTargetResultBuilder
    implements
        Builder<CreateTrafficMirrorTargetResult,
            CreateTrafficMirrorTargetResultBuilder> {
  _$CreateTrafficMirrorTargetResult? _$v;

  TrafficMirrorTargetBuilder? _trafficMirrorTarget;
  TrafficMirrorTargetBuilder get trafficMirrorTarget =>
      _$this._trafficMirrorTarget ??= new TrafficMirrorTargetBuilder();
  set trafficMirrorTarget(TrafficMirrorTargetBuilder? trafficMirrorTarget) =>
      _$this._trafficMirrorTarget = trafficMirrorTarget;

  String? _clientToken;
  String? get clientToken => _$this._clientToken;
  set clientToken(String? clientToken) => _$this._clientToken = clientToken;

  CreateTrafficMirrorTargetResultBuilder();

  CreateTrafficMirrorTargetResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _trafficMirrorTarget = $v.trafficMirrorTarget?.toBuilder();
      _clientToken = $v.clientToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateTrafficMirrorTargetResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateTrafficMirrorTargetResult;
  }

  @override
  void update(void Function(CreateTrafficMirrorTargetResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateTrafficMirrorTargetResult build() => _build();

  _$CreateTrafficMirrorTargetResult _build() {
    _$CreateTrafficMirrorTargetResult _$result;
    try {
      _$result = _$v ??
          new _$CreateTrafficMirrorTargetResult._(
              trafficMirrorTarget: _trafficMirrorTarget?.build(),
              clientToken: clientToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'trafficMirrorTarget';
        _trafficMirrorTarget?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateTrafficMirrorTargetResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
