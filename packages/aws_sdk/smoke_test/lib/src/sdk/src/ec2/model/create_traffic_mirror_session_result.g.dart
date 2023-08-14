// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_traffic_mirror_session_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateTrafficMirrorSessionResult
    extends CreateTrafficMirrorSessionResult {
  @override
  final TrafficMirrorSession? trafficMirrorSession;
  @override
  final String? clientToken;

  factory _$CreateTrafficMirrorSessionResult(
          [void Function(CreateTrafficMirrorSessionResultBuilder)? updates]) =>
      (new CreateTrafficMirrorSessionResultBuilder()..update(updates))._build();

  _$CreateTrafficMirrorSessionResult._(
      {this.trafficMirrorSession, this.clientToken})
      : super._();

  @override
  CreateTrafficMirrorSessionResult rebuild(
          void Function(CreateTrafficMirrorSessionResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateTrafficMirrorSessionResultBuilder toBuilder() =>
      new CreateTrafficMirrorSessionResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateTrafficMirrorSessionResult &&
        trafficMirrorSession == other.trafficMirrorSession &&
        clientToken == other.clientToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, trafficMirrorSession.hashCode);
    _$hash = $jc(_$hash, clientToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateTrafficMirrorSessionResultBuilder
    implements
        Builder<CreateTrafficMirrorSessionResult,
            CreateTrafficMirrorSessionResultBuilder> {
  _$CreateTrafficMirrorSessionResult? _$v;

  TrafficMirrorSessionBuilder? _trafficMirrorSession;
  TrafficMirrorSessionBuilder get trafficMirrorSession =>
      _$this._trafficMirrorSession ??= new TrafficMirrorSessionBuilder();
  set trafficMirrorSession(TrafficMirrorSessionBuilder? trafficMirrorSession) =>
      _$this._trafficMirrorSession = trafficMirrorSession;

  String? _clientToken;
  String? get clientToken => _$this._clientToken;
  set clientToken(String? clientToken) => _$this._clientToken = clientToken;

  CreateTrafficMirrorSessionResultBuilder();

  CreateTrafficMirrorSessionResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _trafficMirrorSession = $v.trafficMirrorSession?.toBuilder();
      _clientToken = $v.clientToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateTrafficMirrorSessionResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateTrafficMirrorSessionResult;
  }

  @override
  void update(void Function(CreateTrafficMirrorSessionResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateTrafficMirrorSessionResult build() => _build();

  _$CreateTrafficMirrorSessionResult _build() {
    _$CreateTrafficMirrorSessionResult _$result;
    try {
      _$result = _$v ??
          new _$CreateTrafficMirrorSessionResult._(
              trafficMirrorSession: _trafficMirrorSession?.build(),
              clientToken: clientToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'trafficMirrorSession';
        _trafficMirrorSession?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateTrafficMirrorSessionResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
