// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modify_verified_access_instance_logging_configuration_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModifyVerifiedAccessInstanceLoggingConfigurationRequest
    extends ModifyVerifiedAccessInstanceLoggingConfigurationRequest {
  @override
  final String? verifiedAccessInstanceId;
  @override
  final VerifiedAccessLogOptions? accessLogs;
  @override
  final bool dryRun;
  @override
  final String? clientToken;

  factory _$ModifyVerifiedAccessInstanceLoggingConfigurationRequest(
          [void Function(
                  ModifyVerifiedAccessInstanceLoggingConfigurationRequestBuilder)?
              updates]) =>
      (new ModifyVerifiedAccessInstanceLoggingConfigurationRequestBuilder()
            ..update(updates))
          ._build();

  _$ModifyVerifiedAccessInstanceLoggingConfigurationRequest._(
      {this.verifiedAccessInstanceId,
      this.accessLogs,
      required this.dryRun,
      this.clientToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(dryRun,
        r'ModifyVerifiedAccessInstanceLoggingConfigurationRequest', 'dryRun');
  }

  @override
  ModifyVerifiedAccessInstanceLoggingConfigurationRequest rebuild(
          void Function(
                  ModifyVerifiedAccessInstanceLoggingConfigurationRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModifyVerifiedAccessInstanceLoggingConfigurationRequestBuilder toBuilder() =>
      new ModifyVerifiedAccessInstanceLoggingConfigurationRequestBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModifyVerifiedAccessInstanceLoggingConfigurationRequest &&
        verifiedAccessInstanceId == other.verifiedAccessInstanceId &&
        accessLogs == other.accessLogs &&
        dryRun == other.dryRun &&
        clientToken == other.clientToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, verifiedAccessInstanceId.hashCode);
    _$hash = $jc(_$hash, accessLogs.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, clientToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ModifyVerifiedAccessInstanceLoggingConfigurationRequestBuilder
    implements
        Builder<ModifyVerifiedAccessInstanceLoggingConfigurationRequest,
            ModifyVerifiedAccessInstanceLoggingConfigurationRequestBuilder> {
  _$ModifyVerifiedAccessInstanceLoggingConfigurationRequest? _$v;

  String? _verifiedAccessInstanceId;
  String? get verifiedAccessInstanceId => _$this._verifiedAccessInstanceId;
  set verifiedAccessInstanceId(String? verifiedAccessInstanceId) =>
      _$this._verifiedAccessInstanceId = verifiedAccessInstanceId;

  VerifiedAccessLogOptionsBuilder? _accessLogs;
  VerifiedAccessLogOptionsBuilder get accessLogs =>
      _$this._accessLogs ??= new VerifiedAccessLogOptionsBuilder();
  set accessLogs(VerifiedAccessLogOptionsBuilder? accessLogs) =>
      _$this._accessLogs = accessLogs;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _clientToken;
  String? get clientToken => _$this._clientToken;
  set clientToken(String? clientToken) => _$this._clientToken = clientToken;

  ModifyVerifiedAccessInstanceLoggingConfigurationRequestBuilder() {
    ModifyVerifiedAccessInstanceLoggingConfigurationRequest._init(this);
  }

  ModifyVerifiedAccessInstanceLoggingConfigurationRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _verifiedAccessInstanceId = $v.verifiedAccessInstanceId;
      _accessLogs = $v.accessLogs?.toBuilder();
      _dryRun = $v.dryRun;
      _clientToken = $v.clientToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModifyVerifiedAccessInstanceLoggingConfigurationRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModifyVerifiedAccessInstanceLoggingConfigurationRequest;
  }

  @override
  void update(
      void Function(
              ModifyVerifiedAccessInstanceLoggingConfigurationRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  ModifyVerifiedAccessInstanceLoggingConfigurationRequest build() => _build();

  _$ModifyVerifiedAccessInstanceLoggingConfigurationRequest _build() {
    _$ModifyVerifiedAccessInstanceLoggingConfigurationRequest _$result;
    try {
      _$result = _$v ??
          new _$ModifyVerifiedAccessInstanceLoggingConfigurationRequest._(
              verifiedAccessInstanceId: verifiedAccessInstanceId,
              accessLogs: _accessLogs?.build(),
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun,
                  r'ModifyVerifiedAccessInstanceLoggingConfigurationRequest',
                  'dryRun'),
              clientToken: clientToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'accessLogs';
        _accessLogs?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ModifyVerifiedAccessInstanceLoggingConfigurationRequest',
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
