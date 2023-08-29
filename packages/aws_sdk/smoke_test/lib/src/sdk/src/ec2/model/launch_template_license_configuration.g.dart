// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'launch_template_license_configuration.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LaunchTemplateLicenseConfiguration
    extends LaunchTemplateLicenseConfiguration {
  @override
  final String? licenseConfigurationArn;

  factory _$LaunchTemplateLicenseConfiguration(
          [void Function(LaunchTemplateLicenseConfigurationBuilder)?
              updates]) =>
      (new LaunchTemplateLicenseConfigurationBuilder()..update(updates))
          ._build();

  _$LaunchTemplateLicenseConfiguration._({this.licenseConfigurationArn})
      : super._();

  @override
  LaunchTemplateLicenseConfiguration rebuild(
          void Function(LaunchTemplateLicenseConfigurationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LaunchTemplateLicenseConfigurationBuilder toBuilder() =>
      new LaunchTemplateLicenseConfigurationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LaunchTemplateLicenseConfiguration &&
        licenseConfigurationArn == other.licenseConfigurationArn;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, licenseConfigurationArn.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class LaunchTemplateLicenseConfigurationBuilder
    implements
        Builder<LaunchTemplateLicenseConfiguration,
            LaunchTemplateLicenseConfigurationBuilder> {
  _$LaunchTemplateLicenseConfiguration? _$v;

  String? _licenseConfigurationArn;
  String? get licenseConfigurationArn => _$this._licenseConfigurationArn;
  set licenseConfigurationArn(String? licenseConfigurationArn) =>
      _$this._licenseConfigurationArn = licenseConfigurationArn;

  LaunchTemplateLicenseConfigurationBuilder();

  LaunchTemplateLicenseConfigurationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _licenseConfigurationArn = $v.licenseConfigurationArn;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LaunchTemplateLicenseConfiguration other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LaunchTemplateLicenseConfiguration;
  }

  @override
  void update(
      void Function(LaunchTemplateLicenseConfigurationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LaunchTemplateLicenseConfiguration build() => _build();

  _$LaunchTemplateLicenseConfiguration _build() {
    final _$result = _$v ??
        new _$LaunchTemplateLicenseConfiguration._(
            licenseConfigurationArn: licenseConfigurationArn);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
