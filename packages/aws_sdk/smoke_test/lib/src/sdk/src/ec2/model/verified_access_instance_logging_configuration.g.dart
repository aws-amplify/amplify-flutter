// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verified_access_instance_logging_configuration.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$VerifiedAccessInstanceLoggingConfiguration
    extends VerifiedAccessInstanceLoggingConfiguration {
  @override
  final String? verifiedAccessInstanceId;
  @override
  final VerifiedAccessLogs? accessLogs;

  factory _$VerifiedAccessInstanceLoggingConfiguration(
          [void Function(VerifiedAccessInstanceLoggingConfigurationBuilder)?
              updates]) =>
      (new VerifiedAccessInstanceLoggingConfigurationBuilder()..update(updates))
          ._build();

  _$VerifiedAccessInstanceLoggingConfiguration._(
      {this.verifiedAccessInstanceId, this.accessLogs})
      : super._();

  @override
  VerifiedAccessInstanceLoggingConfiguration rebuild(
          void Function(VerifiedAccessInstanceLoggingConfigurationBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VerifiedAccessInstanceLoggingConfigurationBuilder toBuilder() =>
      new VerifiedAccessInstanceLoggingConfigurationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VerifiedAccessInstanceLoggingConfiguration &&
        verifiedAccessInstanceId == other.verifiedAccessInstanceId &&
        accessLogs == other.accessLogs;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, verifiedAccessInstanceId.hashCode);
    _$hash = $jc(_$hash, accessLogs.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class VerifiedAccessInstanceLoggingConfigurationBuilder
    implements
        Builder<VerifiedAccessInstanceLoggingConfiguration,
            VerifiedAccessInstanceLoggingConfigurationBuilder> {
  _$VerifiedAccessInstanceLoggingConfiguration? _$v;

  String? _verifiedAccessInstanceId;
  String? get verifiedAccessInstanceId => _$this._verifiedAccessInstanceId;
  set verifiedAccessInstanceId(String? verifiedAccessInstanceId) =>
      _$this._verifiedAccessInstanceId = verifiedAccessInstanceId;

  VerifiedAccessLogsBuilder? _accessLogs;
  VerifiedAccessLogsBuilder get accessLogs =>
      _$this._accessLogs ??= new VerifiedAccessLogsBuilder();
  set accessLogs(VerifiedAccessLogsBuilder? accessLogs) =>
      _$this._accessLogs = accessLogs;

  VerifiedAccessInstanceLoggingConfigurationBuilder();

  VerifiedAccessInstanceLoggingConfigurationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _verifiedAccessInstanceId = $v.verifiedAccessInstanceId;
      _accessLogs = $v.accessLogs?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VerifiedAccessInstanceLoggingConfiguration other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$VerifiedAccessInstanceLoggingConfiguration;
  }

  @override
  void update(
      void Function(VerifiedAccessInstanceLoggingConfigurationBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  VerifiedAccessInstanceLoggingConfiguration build() => _build();

  _$VerifiedAccessInstanceLoggingConfiguration _build() {
    _$VerifiedAccessInstanceLoggingConfiguration _$result;
    try {
      _$result = _$v ??
          new _$VerifiedAccessInstanceLoggingConfiguration._(
              verifiedAccessInstanceId: verifiedAccessInstanceId,
              accessLogs: _accessLogs?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'accessLogs';
        _accessLogs?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'VerifiedAccessInstanceLoggingConfiguration',
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
