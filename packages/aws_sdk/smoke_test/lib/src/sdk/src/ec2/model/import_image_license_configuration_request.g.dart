// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'import_image_license_configuration_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ImportImageLicenseConfigurationRequest
    extends ImportImageLicenseConfigurationRequest {
  @override
  final String? licenseConfigurationArn;

  factory _$ImportImageLicenseConfigurationRequest(
          [void Function(ImportImageLicenseConfigurationRequestBuilder)?
              updates]) =>
      (new ImportImageLicenseConfigurationRequestBuilder()..update(updates))
          ._build();

  _$ImportImageLicenseConfigurationRequest._({this.licenseConfigurationArn})
      : super._();

  @override
  ImportImageLicenseConfigurationRequest rebuild(
          void Function(ImportImageLicenseConfigurationRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ImportImageLicenseConfigurationRequestBuilder toBuilder() =>
      new ImportImageLicenseConfigurationRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ImportImageLicenseConfigurationRequest &&
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

class ImportImageLicenseConfigurationRequestBuilder
    implements
        Builder<ImportImageLicenseConfigurationRequest,
            ImportImageLicenseConfigurationRequestBuilder> {
  _$ImportImageLicenseConfigurationRequest? _$v;

  String? _licenseConfigurationArn;
  String? get licenseConfigurationArn => _$this._licenseConfigurationArn;
  set licenseConfigurationArn(String? licenseConfigurationArn) =>
      _$this._licenseConfigurationArn = licenseConfigurationArn;

  ImportImageLicenseConfigurationRequestBuilder();

  ImportImageLicenseConfigurationRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _licenseConfigurationArn = $v.licenseConfigurationArn;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ImportImageLicenseConfigurationRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ImportImageLicenseConfigurationRequest;
  }

  @override
  void update(
      void Function(ImportImageLicenseConfigurationRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ImportImageLicenseConfigurationRequest build() => _build();

  _$ImportImageLicenseConfigurationRequest _build() {
    final _$result = _$v ??
        new _$ImportImageLicenseConfigurationRequest._(
            licenseConfigurationArn: licenseConfigurationArn);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
