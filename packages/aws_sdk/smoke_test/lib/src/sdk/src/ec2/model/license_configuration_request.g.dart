// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'license_configuration_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LicenseConfigurationRequest extends LicenseConfigurationRequest {
  @override
  final String? licenseConfigurationArn;

  factory _$LicenseConfigurationRequest(
          [void Function(LicenseConfigurationRequestBuilder)? updates]) =>
      (new LicenseConfigurationRequestBuilder()..update(updates))._build();

  _$LicenseConfigurationRequest._({this.licenseConfigurationArn}) : super._();

  @override
  LicenseConfigurationRequest rebuild(
          void Function(LicenseConfigurationRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LicenseConfigurationRequestBuilder toBuilder() =>
      new LicenseConfigurationRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LicenseConfigurationRequest &&
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

class LicenseConfigurationRequestBuilder
    implements
        Builder<LicenseConfigurationRequest,
            LicenseConfigurationRequestBuilder> {
  _$LicenseConfigurationRequest? _$v;

  String? _licenseConfigurationArn;
  String? get licenseConfigurationArn => _$this._licenseConfigurationArn;
  set licenseConfigurationArn(String? licenseConfigurationArn) =>
      _$this._licenseConfigurationArn = licenseConfigurationArn;

  LicenseConfigurationRequestBuilder();

  LicenseConfigurationRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _licenseConfigurationArn = $v.licenseConfigurationArn;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LicenseConfigurationRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LicenseConfigurationRequest;
  }

  @override
  void update(void Function(LicenseConfigurationRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LicenseConfigurationRequest build() => _build();

  _$LicenseConfigurationRequest _build() {
    final _$result = _$v ??
        new _$LicenseConfigurationRequest._(
            licenseConfigurationArn: licenseConfigurationArn);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
