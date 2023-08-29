// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_traffic_mirror_session_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteTrafficMirrorSessionResult
    extends DeleteTrafficMirrorSessionResult {
  @override
  final String? trafficMirrorSessionId;

  factory _$DeleteTrafficMirrorSessionResult(
          [void Function(DeleteTrafficMirrorSessionResultBuilder)? updates]) =>
      (new DeleteTrafficMirrorSessionResultBuilder()..update(updates))._build();

  _$DeleteTrafficMirrorSessionResult._({this.trafficMirrorSessionId})
      : super._();

  @override
  DeleteTrafficMirrorSessionResult rebuild(
          void Function(DeleteTrafficMirrorSessionResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteTrafficMirrorSessionResultBuilder toBuilder() =>
      new DeleteTrafficMirrorSessionResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteTrafficMirrorSessionResult &&
        trafficMirrorSessionId == other.trafficMirrorSessionId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, trafficMirrorSessionId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteTrafficMirrorSessionResultBuilder
    implements
        Builder<DeleteTrafficMirrorSessionResult,
            DeleteTrafficMirrorSessionResultBuilder> {
  _$DeleteTrafficMirrorSessionResult? _$v;

  String? _trafficMirrorSessionId;
  String? get trafficMirrorSessionId => _$this._trafficMirrorSessionId;
  set trafficMirrorSessionId(String? trafficMirrorSessionId) =>
      _$this._trafficMirrorSessionId = trafficMirrorSessionId;

  DeleteTrafficMirrorSessionResultBuilder();

  DeleteTrafficMirrorSessionResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _trafficMirrorSessionId = $v.trafficMirrorSessionId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteTrafficMirrorSessionResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteTrafficMirrorSessionResult;
  }

  @override
  void update(void Function(DeleteTrafficMirrorSessionResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteTrafficMirrorSessionResult build() => _build();

  _$DeleteTrafficMirrorSessionResult _build() {
    final _$result = _$v ??
        new _$DeleteTrafficMirrorSessionResult._(
            trafficMirrorSessionId: trafficMirrorSessionId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
