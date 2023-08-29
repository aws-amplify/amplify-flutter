// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'target_groups_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TargetGroupsConfig extends TargetGroupsConfig {
  @override
  final _i2.BuiltList<TargetGroup>? targetGroups;

  factory _$TargetGroupsConfig(
          [void Function(TargetGroupsConfigBuilder)? updates]) =>
      (new TargetGroupsConfigBuilder()..update(updates))._build();

  _$TargetGroupsConfig._({this.targetGroups}) : super._();

  @override
  TargetGroupsConfig rebuild(
          void Function(TargetGroupsConfigBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TargetGroupsConfigBuilder toBuilder() =>
      new TargetGroupsConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TargetGroupsConfig && targetGroups == other.targetGroups;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, targetGroups.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class TargetGroupsConfigBuilder
    implements Builder<TargetGroupsConfig, TargetGroupsConfigBuilder> {
  _$TargetGroupsConfig? _$v;

  _i2.ListBuilder<TargetGroup>? _targetGroups;
  _i2.ListBuilder<TargetGroup> get targetGroups =>
      _$this._targetGroups ??= new _i2.ListBuilder<TargetGroup>();
  set targetGroups(_i2.ListBuilder<TargetGroup>? targetGroups) =>
      _$this._targetGroups = targetGroups;

  TargetGroupsConfigBuilder();

  TargetGroupsConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _targetGroups = $v.targetGroups?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TargetGroupsConfig other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TargetGroupsConfig;
  }

  @override
  void update(void Function(TargetGroupsConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TargetGroupsConfig build() => _build();

  _$TargetGroupsConfig _build() {
    _$TargetGroupsConfig _$result;
    try {
      _$result = _$v ??
          new _$TargetGroupsConfig._(targetGroups: _targetGroups?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'targetGroups';
        _targetGroups?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'TargetGroupsConfig', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
