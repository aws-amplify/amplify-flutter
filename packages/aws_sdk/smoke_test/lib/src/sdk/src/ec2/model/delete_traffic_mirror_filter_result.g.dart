// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_traffic_mirror_filter_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteTrafficMirrorFilterResult
    extends DeleteTrafficMirrorFilterResult {
  @override
  final String? trafficMirrorFilterId;

  factory _$DeleteTrafficMirrorFilterResult(
          [void Function(DeleteTrafficMirrorFilterResultBuilder)? updates]) =>
      (new DeleteTrafficMirrorFilterResultBuilder()..update(updates))._build();

  _$DeleteTrafficMirrorFilterResult._({this.trafficMirrorFilterId}) : super._();

  @override
  DeleteTrafficMirrorFilterResult rebuild(
          void Function(DeleteTrafficMirrorFilterResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteTrafficMirrorFilterResultBuilder toBuilder() =>
      new DeleteTrafficMirrorFilterResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteTrafficMirrorFilterResult &&
        trafficMirrorFilterId == other.trafficMirrorFilterId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, trafficMirrorFilterId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteTrafficMirrorFilterResultBuilder
    implements
        Builder<DeleteTrafficMirrorFilterResult,
            DeleteTrafficMirrorFilterResultBuilder> {
  _$DeleteTrafficMirrorFilterResult? _$v;

  String? _trafficMirrorFilterId;
  String? get trafficMirrorFilterId => _$this._trafficMirrorFilterId;
  set trafficMirrorFilterId(String? trafficMirrorFilterId) =>
      _$this._trafficMirrorFilterId = trafficMirrorFilterId;

  DeleteTrafficMirrorFilterResultBuilder();

  DeleteTrafficMirrorFilterResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _trafficMirrorFilterId = $v.trafficMirrorFilterId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteTrafficMirrorFilterResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteTrafficMirrorFilterResult;
  }

  @override
  void update(void Function(DeleteTrafficMirrorFilterResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteTrafficMirrorFilterResult build() => _build();

  _$DeleteTrafficMirrorFilterResult _build() {
    final _$result = _$v ??
        new _$DeleteTrafficMirrorFilterResult._(
            trafficMirrorFilterId: trafficMirrorFilterId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
