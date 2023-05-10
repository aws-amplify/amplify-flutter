// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.auto_deployment;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AutoDeployment extends AutoDeployment {
  @override
  final bool? enabled;
  @override
  final bool? retainStacksOnAccountRemoval;

  factory _$AutoDeployment([void Function(AutoDeploymentBuilder)? updates]) =>
      (new AutoDeploymentBuilder()..update(updates))._build();

  _$AutoDeployment._({this.enabled, this.retainStacksOnAccountRemoval})
      : super._();

  @override
  AutoDeployment rebuild(void Function(AutoDeploymentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AutoDeploymentBuilder toBuilder() =>
      new AutoDeploymentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AutoDeployment &&
        enabled == other.enabled &&
        retainStacksOnAccountRemoval == other.retainStacksOnAccountRemoval;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jc(_$hash, retainStacksOnAccountRemoval.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AutoDeploymentBuilder
    implements Builder<AutoDeployment, AutoDeploymentBuilder> {
  _$AutoDeployment? _$v;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  bool? _retainStacksOnAccountRemoval;
  bool? get retainStacksOnAccountRemoval =>
      _$this._retainStacksOnAccountRemoval;
  set retainStacksOnAccountRemoval(bool? retainStacksOnAccountRemoval) =>
      _$this._retainStacksOnAccountRemoval = retainStacksOnAccountRemoval;

  AutoDeploymentBuilder() {
    AutoDeployment._init(this);
  }

  AutoDeploymentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _enabled = $v.enabled;
      _retainStacksOnAccountRemoval = $v.retainStacksOnAccountRemoval;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AutoDeployment other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AutoDeployment;
  }

  @override
  void update(void Function(AutoDeploymentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AutoDeployment build() => _build();

  _$AutoDeployment _build() {
    final _$result = _$v ??
        new _$AutoDeployment._(
            enabled: enabled,
            retainStacksOnAccountRemoval: retainStacksOnAccountRemoval);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
