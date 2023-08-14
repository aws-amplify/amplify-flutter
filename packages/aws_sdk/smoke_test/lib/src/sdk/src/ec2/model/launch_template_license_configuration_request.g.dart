// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'launch_template_license_configuration_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LaunchTemplateLicenseConfigurationRequest
    extends LaunchTemplateLicenseConfigurationRequest {
  @override
  final String? licenseConfigurationArn;

  factory _$LaunchTemplateLicenseConfigurationRequest(
          [void Function(LaunchTemplateLicenseConfigurationRequestBuilder)?
              updates]) =>
      (new LaunchTemplateLicenseConfigurationRequestBuilder()..update(updates))
          ._build();

  _$LaunchTemplateLicenseConfigurationRequest._({this.licenseConfigurationArn})
      : super._();

  @override
  LaunchTemplateLicenseConfigurationRequest rebuild(
          void Function(LaunchTemplateLicenseConfigurationRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LaunchTemplateLicenseConfigurationRequestBuilder toBuilder() =>
      new LaunchTemplateLicenseConfigurationRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LaunchTemplateLicenseConfigurationRequest &&
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

class LaunchTemplateLicenseConfigurationRequestBuilder
    implements
        Builder<LaunchTemplateLicenseConfigurationRequest,
            LaunchTemplateLicenseConfigurationRequestBuilder> {
  _$LaunchTemplateLicenseConfigurationRequest? _$v;

  String? _licenseConfigurationArn;
  String? get licenseConfigurationArn => _$this._licenseConfigurationArn;
  set licenseConfigurationArn(String? licenseConfigurationArn) =>
      _$this._licenseConfigurationArn = licenseConfigurationArn;

  LaunchTemplateLicenseConfigurationRequestBuilder();

  LaunchTemplateLicenseConfigurationRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _licenseConfigurationArn = $v.licenseConfigurationArn;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LaunchTemplateLicenseConfigurationRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LaunchTemplateLicenseConfigurationRequest;
  }

  @override
  void update(
      void Function(LaunchTemplateLicenseConfigurationRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  LaunchTemplateLicenseConfigurationRequest build() => _build();

  _$LaunchTemplateLicenseConfigurationRequest _build() {
    final _$result = _$v ??
        new _$LaunchTemplateLicenseConfigurationRequest._(
            licenseConfigurationArn: licenseConfigurationArn);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
