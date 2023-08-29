// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_traffic_mirror_filter_rule_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteTrafficMirrorFilterRuleResult
    extends DeleteTrafficMirrorFilterRuleResult {
  @override
  final String? trafficMirrorFilterRuleId;

  factory _$DeleteTrafficMirrorFilterRuleResult(
          [void Function(DeleteTrafficMirrorFilterRuleResultBuilder)?
              updates]) =>
      (new DeleteTrafficMirrorFilterRuleResultBuilder()..update(updates))
          ._build();

  _$DeleteTrafficMirrorFilterRuleResult._({this.trafficMirrorFilterRuleId})
      : super._();

  @override
  DeleteTrafficMirrorFilterRuleResult rebuild(
          void Function(DeleteTrafficMirrorFilterRuleResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteTrafficMirrorFilterRuleResultBuilder toBuilder() =>
      new DeleteTrafficMirrorFilterRuleResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteTrafficMirrorFilterRuleResult &&
        trafficMirrorFilterRuleId == other.trafficMirrorFilterRuleId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, trafficMirrorFilterRuleId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteTrafficMirrorFilterRuleResultBuilder
    implements
        Builder<DeleteTrafficMirrorFilterRuleResult,
            DeleteTrafficMirrorFilterRuleResultBuilder> {
  _$DeleteTrafficMirrorFilterRuleResult? _$v;

  String? _trafficMirrorFilterRuleId;
  String? get trafficMirrorFilterRuleId => _$this._trafficMirrorFilterRuleId;
  set trafficMirrorFilterRuleId(String? trafficMirrorFilterRuleId) =>
      _$this._trafficMirrorFilterRuleId = trafficMirrorFilterRuleId;

  DeleteTrafficMirrorFilterRuleResultBuilder();

  DeleteTrafficMirrorFilterRuleResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _trafficMirrorFilterRuleId = $v.trafficMirrorFilterRuleId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteTrafficMirrorFilterRuleResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteTrafficMirrorFilterRuleResult;
  }

  @override
  void update(
      void Function(DeleteTrafficMirrorFilterRuleResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteTrafficMirrorFilterRuleResult build() => _build();

  _$DeleteTrafficMirrorFilterRuleResult _build() {
    final _$result = _$v ??
        new _$DeleteTrafficMirrorFilterRuleResult._(
            trafficMirrorFilterRuleId: trafficMirrorFilterRuleId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
