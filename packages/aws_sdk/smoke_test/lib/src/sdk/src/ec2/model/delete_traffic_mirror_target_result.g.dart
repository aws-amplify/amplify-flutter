// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_traffic_mirror_target_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteTrafficMirrorTargetResult
    extends DeleteTrafficMirrorTargetResult {
  @override
  final String? trafficMirrorTargetId;

  factory _$DeleteTrafficMirrorTargetResult(
          [void Function(DeleteTrafficMirrorTargetResultBuilder)? updates]) =>
      (new DeleteTrafficMirrorTargetResultBuilder()..update(updates))._build();

  _$DeleteTrafficMirrorTargetResult._({this.trafficMirrorTargetId}) : super._();

  @override
  DeleteTrafficMirrorTargetResult rebuild(
          void Function(DeleteTrafficMirrorTargetResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteTrafficMirrorTargetResultBuilder toBuilder() =>
      new DeleteTrafficMirrorTargetResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteTrafficMirrorTargetResult &&
        trafficMirrorTargetId == other.trafficMirrorTargetId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, trafficMirrorTargetId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteTrafficMirrorTargetResultBuilder
    implements
        Builder<DeleteTrafficMirrorTargetResult,
            DeleteTrafficMirrorTargetResultBuilder> {
  _$DeleteTrafficMirrorTargetResult? _$v;

  String? _trafficMirrorTargetId;
  String? get trafficMirrorTargetId => _$this._trafficMirrorTargetId;
  set trafficMirrorTargetId(String? trafficMirrorTargetId) =>
      _$this._trafficMirrorTargetId = trafficMirrorTargetId;

  DeleteTrafficMirrorTargetResultBuilder();

  DeleteTrafficMirrorTargetResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _trafficMirrorTargetId = $v.trafficMirrorTargetId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteTrafficMirrorTargetResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteTrafficMirrorTargetResult;
  }

  @override
  void update(void Function(DeleteTrafficMirrorTargetResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteTrafficMirrorTargetResult build() => _build();

  _$DeleteTrafficMirrorTargetResult _build() {
    final _$result = _$v ??
        new _$DeleteTrafficMirrorTargetResult._(
            trafficMirrorTargetId: trafficMirrorTargetId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
