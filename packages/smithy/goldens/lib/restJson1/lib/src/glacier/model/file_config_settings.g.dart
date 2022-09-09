// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1.glacier.model.file_config_settings;

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
  final int? maxAttempts;
  @override
  final String? region;
  @override
  final _i2.RetryMode? retryMode;
  @override
  final _i3.S3Config? s3;

  factory _$FileConfigSettings(
          [void Function(FileConfigSettingsBuilder)? updates]) =>
      (new FileConfigSettingsBuilder()..update(updates))._build();

  _$FileConfigSettings._(
      {this.awsAccessKeyId,
      this.awsSecretAccessKey,
      this.awsSessionToken,
      this.maxAttempts,
      this.region,
      this.retryMode,
      this.s3})
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
        maxAttempts == other.maxAttempts &&
        region == other.region &&
        retryMode == other.retryMode &&
        s3 == other.s3;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc(0, awsAccessKeyId.hashCode),
                            awsSecretAccessKey.hashCode),
                        awsSessionToken.hashCode),
                    maxAttempts.hashCode),
                region.hashCode),
            retryMode.hashCode),
        s3.hashCode));
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

  int? _maxAttempts;
  int? get maxAttempts => _$this._maxAttempts;
  set maxAttempts(int? maxAttempts) => _$this._maxAttempts = maxAttempts;

  String? _region;
  String? get region => _$this._region;
  set region(String? region) => _$this._region = region;

  _i2.RetryMode? _retryMode;
  _i2.RetryMode? get retryMode => _$this._retryMode;
  set retryMode(_i2.RetryMode? retryMode) => _$this._retryMode = retryMode;

  _i3.S3ConfigBuilder? _s3;
  _i3.S3ConfigBuilder get s3 => _$this._s3 ??= new _i3.S3ConfigBuilder();
  set s3(_i3.S3ConfigBuilder? s3) => _$this._s3 = s3;

  FileConfigSettingsBuilder() {
    FileConfigSettings._init(this);
  }

  FileConfigSettingsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _awsAccessKeyId = $v.awsAccessKeyId;
      _awsSecretAccessKey = $v.awsSecretAccessKey;
      _awsSessionToken = $v.awsSessionToken;
      _maxAttempts = $v.maxAttempts;
      _region = $v.region;
      _retryMode = $v.retryMode;
      _s3 = $v.s3?.toBuilder();
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
              maxAttempts: maxAttempts,
              region: region,
              retryMode: retryMode,
              s3: _s3?.build());
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
