// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modify_verified_access_instance_logging_configuration_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModifyVerifiedAccessInstanceLoggingConfigurationResult
    extends ModifyVerifiedAccessInstanceLoggingConfigurationResult {
  @override
  final VerifiedAccessInstanceLoggingConfiguration? loggingConfiguration;

  factory _$ModifyVerifiedAccessInstanceLoggingConfigurationResult(
          [void Function(
                  ModifyVerifiedAccessInstanceLoggingConfigurationResultBuilder)?
              updates]) =>
      (new ModifyVerifiedAccessInstanceLoggingConfigurationResultBuilder()
            ..update(updates))
          ._build();

  _$ModifyVerifiedAccessInstanceLoggingConfigurationResult._(
      {this.loggingConfiguration})
      : super._();

  @override
  ModifyVerifiedAccessInstanceLoggingConfigurationResult rebuild(
          void Function(
                  ModifyVerifiedAccessInstanceLoggingConfigurationResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModifyVerifiedAccessInstanceLoggingConfigurationResultBuilder toBuilder() =>
      new ModifyVerifiedAccessInstanceLoggingConfigurationResultBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModifyVerifiedAccessInstanceLoggingConfigurationResult &&
        loggingConfiguration == other.loggingConfiguration;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, loggingConfiguration.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ModifyVerifiedAccessInstanceLoggingConfigurationResultBuilder
    implements
        Builder<ModifyVerifiedAccessInstanceLoggingConfigurationResult,
            ModifyVerifiedAccessInstanceLoggingConfigurationResultBuilder> {
  _$ModifyVerifiedAccessInstanceLoggingConfigurationResult? _$v;

  VerifiedAccessInstanceLoggingConfigurationBuilder? _loggingConfiguration;
  VerifiedAccessInstanceLoggingConfigurationBuilder get loggingConfiguration =>
      _$this._loggingConfiguration ??=
          new VerifiedAccessInstanceLoggingConfigurationBuilder();
  set loggingConfiguration(
          VerifiedAccessInstanceLoggingConfigurationBuilder?
              loggingConfiguration) =>
      _$this._loggingConfiguration = loggingConfiguration;

  ModifyVerifiedAccessInstanceLoggingConfigurationResultBuilder();

  ModifyVerifiedAccessInstanceLoggingConfigurationResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _loggingConfiguration = $v.loggingConfiguration?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModifyVerifiedAccessInstanceLoggingConfigurationResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModifyVerifiedAccessInstanceLoggingConfigurationResult;
  }

  @override
  void update(
      void Function(
              ModifyVerifiedAccessInstanceLoggingConfigurationResultBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  ModifyVerifiedAccessInstanceLoggingConfigurationResult build() => _build();

  _$ModifyVerifiedAccessInstanceLoggingConfigurationResult _build() {
    _$ModifyVerifiedAccessInstanceLoggingConfigurationResult _$result;
    try {
      _$result = _$v ??
          new _$ModifyVerifiedAccessInstanceLoggingConfigurationResult._(
              loggingConfiguration: _loggingConfiguration?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'loggingConfiguration';
        _loggingConfiguration?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ModifyVerifiedAccessInstanceLoggingConfigurationResult',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
