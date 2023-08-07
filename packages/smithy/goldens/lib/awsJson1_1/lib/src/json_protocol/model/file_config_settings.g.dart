// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file_config_settings.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FileConfigSettings extends FileConfigSettings {
  @override
  final String? awsAccessKeyId;
  @override
  final String? awsSecretAccessKey;
  @override
  final String? awsSessionToken;
  @override
  final String? region;
  @override
  final S3Config? s3;
  @override
  final RetryMode? retryMode;
  @override
  final int? maxAttempts;

  factory _$FileConfigSettings(
          [void Function(FileConfigSettingsBuilder)? updates]) =>
      (new FileConfigSettingsBuilder()..update(updates))._build();

  _$FileConfigSettings._(
      {this.awsAccessKeyId,
      this.awsSecretAccessKey,
      this.awsSessionToken,
      this.region,
      this.s3,
      this.retryMode,
      this.maxAttempts})
      : super._();

  @override
  FileConfigSettings rebuild(
          void Function(FileConfigSettingsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FileConfigSettingsBuilder toBuilder() =>
      new FileConfigSettingsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FileConfigSettings &&
        awsAccessKeyId == other.awsAccessKeyId &&
        awsSecretAccessKey == other.awsSecretAccessKey &&
        awsSessionToken == other.awsSessionToken &&
        region == other.region &&
        s3 == other.s3 &&
        retryMode == other.retryMode &&
        maxAttempts == other.maxAttempts;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, awsAccessKeyId.hashCode);
    _$hash = $jc(_$hash, awsSecretAccessKey.hashCode);
    _$hash = $jc(_$hash, awsSessionToken.hashCode);
    _$hash = $jc(_$hash, region.hashCode);
    _$hash = $jc(_$hash, s3.hashCode);
    _$hash = $jc(_$hash, retryMode.hashCode);
    _$hash = $jc(_$hash, maxAttempts.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class FileConfigSettingsBuilder
    implements Builder<FileConfigSettings, FileConfigSettingsBuilder> {
  _$FileConfigSettings? _$v;

  String? _awsAccessKeyId;
  String? get awsAccessKeyId => _$this._awsAccessKeyId;
  set awsAccessKeyId(String? awsAccessKeyId) =>
      _$this._awsAccessKeyId = awsAccessKeyId;

  String? _awsSecretAccessKey;
  String? get awsSecretAccessKey => _$this._awsSecretAccessKey;
  set awsSecretAccessKey(String? awsSecretAccessKey) =>
      _$this._awsSecretAccessKey = awsSecretAccessKey;

  String? _awsSessionToken;
  String? get awsSessionToken => _$this._awsSessionToken;
  set awsSessionToken(String? awsSessionToken) =>
      _$this._awsSessionToken = awsSessionToken;

  String? _region;
  String? get region => _$this._region;
  set region(String? region) => _$this._region = region;

  S3ConfigBuilder? _s3;
  S3ConfigBuilder get s3 => _$this._s3 ??= new S3ConfigBuilder();
  set s3(S3ConfigBuilder? s3) => _$this._s3 = s3;

  RetryMode? _retryMode;
  RetryMode? get retryMode => _$this._retryMode;
  set retryMode(RetryMode? retryMode) => _$this._retryMode = retryMode;

  int? _maxAttempts;
  int? get maxAttempts => _$this._maxAttempts;
  set maxAttempts(int? maxAttempts) => _$this._maxAttempts = maxAttempts;

  FileConfigSettingsBuilder();

  FileConfigSettingsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _awsAccessKeyId = $v.awsAccessKeyId;
      _awsSecretAccessKey = $v.awsSecretAccessKey;
      _awsSessionToken = $v.awsSessionToken;
      _region = $v.region;
      _s3 = $v.s3?.toBuilder();
      _retryMode = $v.retryMode;
      _maxAttempts = $v.maxAttempts;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FileConfigSettings other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FileConfigSettings;
  }

  @override
  void update(void Function(FileConfigSettingsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FileConfigSettings build() => _build();

  _$FileConfigSettings _build() {
    _$FileConfigSettings _$result;
    try {
      _$result = _$v ??
          new _$FileConfigSettings._(
              awsAccessKeyId: awsAccessKeyId,
              awsSecretAccessKey: awsSecretAccessKey,
              awsSessionToken: awsSessionToken,
              region: region,
              s3: _s3?.build(),
              retryMode: retryMode,
              maxAttempts: maxAttempts);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 's3';
        _s3?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'FileConfigSettings', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
