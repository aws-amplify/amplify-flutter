// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'import_image_license_configuration_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ImportImageLicenseConfigurationResponse
    extends ImportImageLicenseConfigurationResponse {
  @override
  final String? licenseConfigurationArn;

  factory _$ImportImageLicenseConfigurationResponse(
          [void Function(ImportImageLicenseConfigurationResponseBuilder)?
              updates]) =>
      (new ImportImageLicenseConfigurationResponseBuilder()..update(updates))
          ._build();

  _$ImportImageLicenseConfigurationResponse._({this.licenseConfigurationArn})
      : super._();

  @override
  ImportImageLicenseConfigurationResponse rebuild(
          void Function(ImportImageLicenseConfigurationResponseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ImportImageLicenseConfigurationResponseBuilder toBuilder() =>
      new ImportImageLicenseConfigurationResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ImportImageLicenseConfigurationResponse &&
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

class ImportImageLicenseConfigurationResponseBuilder
    implements
        Builder<ImportImageLicenseConfigurationResponse,
            ImportImageLicenseConfigurationResponseBuilder> {
  _$ImportImageLicenseConfigurationResponse? _$v;

  String? _licenseConfigurationArn;
  String? get licenseConfigurationArn => _$this._licenseConfigurationArn;
  set licenseConfigurationArn(String? licenseConfigurationArn) =>
      _$this._licenseConfigurationArn = licenseConfigurationArn;

  ImportImageLicenseConfigurationResponseBuilder();

  ImportImageLicenseConfigurationResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _licenseConfigurationArn = $v.licenseConfigurationArn;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ImportImageLicenseConfigurationResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ImportImageLicenseConfigurationResponse;
  }

  @override
  void update(
      void Function(ImportImageLicenseConfigurationResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ImportImageLicenseConfigurationResponse build() => _build();

  _$ImportImageLicenseConfigurationResponse _build() {
    final _$result = _$v ??
        new _$ImportImageLicenseConfigurationResponse._(
            licenseConfigurationArn: licenseConfigurationArn);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
