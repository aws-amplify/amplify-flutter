// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'launch_template_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LaunchTemplateConfig extends LaunchTemplateConfig {
  @override
  final FleetLaunchTemplateSpecification? launchTemplateSpecification;
  @override
  final _i2.BuiltList<LaunchTemplateOverrides>? overrides;

  factory _$LaunchTemplateConfig(
          [void Function(LaunchTemplateConfigBuilder)? updates]) =>
      (new LaunchTemplateConfigBuilder()..update(updates))._build();

  _$LaunchTemplateConfig._({this.launchTemplateSpecification, this.overrides})
      : super._();

  @override
  LaunchTemplateConfig rebuild(
          void Function(LaunchTemplateConfigBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LaunchTemplateConfigBuilder toBuilder() =>
      new LaunchTemplateConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LaunchTemplateConfig &&
        launchTemplateSpecification == other.launchTemplateSpecification &&
        overrides == other.overrides;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, launchTemplateSpecification.hashCode);
    _$hash = $jc(_$hash, overrides.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class LaunchTemplateConfigBuilder
    implements Builder<LaunchTemplateConfig, LaunchTemplateConfigBuilder> {
  _$LaunchTemplateConfig? _$v;

  FleetLaunchTemplateSpecificationBuilder? _launchTemplateSpecification;
  FleetLaunchTemplateSpecificationBuilder get launchTemplateSpecification =>
      _$this._launchTemplateSpecification ??=
          new FleetLaunchTemplateSpecificationBuilder();
  set launchTemplateSpecification(
          FleetLaunchTemplateSpecificationBuilder?
              launchTemplateSpecification) =>
      _$this._launchTemplateSpecification = launchTemplateSpecification;

  _i2.ListBuilder<LaunchTemplateOverrides>? _overrides;
  _i2.ListBuilder<LaunchTemplateOverrides> get overrides =>
      _$this._overrides ??= new _i2.ListBuilder<LaunchTemplateOverrides>();
  set overrides(_i2.ListBuilder<LaunchTemplateOverrides>? overrides) =>
      _$this._overrides = overrides;

  LaunchTemplateConfigBuilder();

  LaunchTemplateConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _launchTemplateSpecification =
          $v.launchTemplateSpecification?.toBuilder();
      _overrides = $v.overrides?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LaunchTemplateConfig other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LaunchTemplateConfig;
  }

  @override
  void update(void Function(LaunchTemplateConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LaunchTemplateConfig build() => _build();

  _$LaunchTemplateConfig _build() {
    _$LaunchTemplateConfig _$result;
    try {
      _$result = _$v ??
          new _$LaunchTemplateConfig._(
              launchTemplateSpecification:
                  _launchTemplateSpecification?.build(),
              overrides: _overrides?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'launchTemplateSpecification';
        _launchTemplateSpecification?.build();
        _$failedField = 'overrides';
        _overrides?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'LaunchTemplateConfig', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
