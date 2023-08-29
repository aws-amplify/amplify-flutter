// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'license_configuration.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LicenseConfiguration extends LicenseConfiguration {
  @override
  final String? licenseConfigurationArn;

  factory _$LicenseConfiguration(
          [void Function(LicenseConfigurationBuilder)? updates]) =>
      (new LicenseConfigurationBuilder()..update(updates))._build();

  _$LicenseConfiguration._({this.licenseConfigurationArn}) : super._();

  @override
  LicenseConfiguration rebuild(
          void Function(LicenseConfigurationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LicenseConfigurationBuilder toBuilder() =>
      new LicenseConfigurationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LicenseConfiguration &&
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

class LicenseConfigurationBuilder
    implements Builder<LicenseConfiguration, LicenseConfigurationBuilder> {
  _$LicenseConfiguration? _$v;

  String? _licenseConfigurationArn;
  String? get licenseConfigurationArn => _$this._licenseConfigurationArn;
  set licenseConfigurationArn(String? licenseConfigurationArn) =>
      _$this._licenseConfigurationArn = licenseConfigurationArn;

  LicenseConfigurationBuilder();

  LicenseConfigurationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _licenseConfigurationArn = $v.licenseConfigurationArn;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LicenseConfiguration other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LicenseConfiguration;
  }

  @override
  void update(void Function(LicenseConfigurationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LicenseConfiguration build() => _build();

  _$LicenseConfiguration _build() {
    final _$result = _$v ??
        new _$LicenseConfiguration._(
            licenseConfigurationArn: licenseConfigurationArn);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
