// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modify_traffic_mirror_session_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModifyTrafficMirrorSessionResult
    extends ModifyTrafficMirrorSessionResult {
  @override
  final TrafficMirrorSession? trafficMirrorSession;

  factory _$ModifyTrafficMirrorSessionResult(
          [void Function(ModifyTrafficMirrorSessionResultBuilder)? updates]) =>
      (new ModifyTrafficMirrorSessionResultBuilder()..update(updates))._build();

  _$ModifyTrafficMirrorSessionResult._({this.trafficMirrorSession}) : super._();

  @override
  ModifyTrafficMirrorSessionResult rebuild(
          void Function(ModifyTrafficMirrorSessionResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModifyTrafficMirrorSessionResultBuilder toBuilder() =>
      new ModifyTrafficMirrorSessionResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModifyTrafficMirrorSessionResult &&
        trafficMirrorSession == other.trafficMirrorSession;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, trafficMirrorSession.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ModifyTrafficMirrorSessionResultBuilder
    implements
        Builder<ModifyTrafficMirrorSessionResult,
            ModifyTrafficMirrorSessionResultBuilder> {
  _$ModifyTrafficMirrorSessionResult? _$v;

  TrafficMirrorSessionBuilder? _trafficMirrorSession;
  TrafficMirrorSessionBuilder get trafficMirrorSession =>
      _$this._trafficMirrorSession ??= new TrafficMirrorSessionBuilder();
  set trafficMirrorSession(TrafficMirrorSessionBuilder? trafficMirrorSession) =>
      _$this._trafficMirrorSession = trafficMirrorSession;

  ModifyTrafficMirrorSessionResultBuilder();

  ModifyTrafficMirrorSessionResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _trafficMirrorSession = $v.trafficMirrorSession?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModifyTrafficMirrorSessionResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModifyTrafficMirrorSessionResult;
  }

  @override
  void update(void Function(ModifyTrafficMirrorSessionResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ModifyTrafficMirrorSessionResult build() => _build();

  _$ModifyTrafficMirrorSessionResult _build() {
    _$ModifyTrafficMirrorSessionResult _$result;
    try {
      _$result = _$v ??
          new _$ModifyTrafficMirrorSessionResult._(
              trafficMirrorSession: _trafficMirrorSession?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'trafficMirrorSession';
        _trafficMirrorSession?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ModifyTrafficMirrorSessionResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
