// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modify_launch_template_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModifyLaunchTemplateRequest extends ModifyLaunchTemplateRequest {
  @override
  final bool dryRun;
  @override
  final String? clientToken;
  @override
  final String? launchTemplateId;
  @override
  final String? launchTemplateName;
  @override
  final String? defaultVersion;

  factory _$ModifyLaunchTemplateRequest(
          [void Function(ModifyLaunchTemplateRequestBuilder)? updates]) =>
      (new ModifyLaunchTemplateRequestBuilder()..update(updates))._build();

  _$ModifyLaunchTemplateRequest._(
      {required this.dryRun,
      this.clientToken,
      this.launchTemplateId,
      this.launchTemplateName,
      this.defaultVersion})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'ModifyLaunchTemplateRequest', 'dryRun');
  }

  @override
  ModifyLaunchTemplateRequest rebuild(
          void Function(ModifyLaunchTemplateRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModifyLaunchTemplateRequestBuilder toBuilder() =>
      new ModifyLaunchTemplateRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModifyLaunchTemplateRequest &&
        dryRun == other.dryRun &&
        clientToken == other.clientToken &&
        launchTemplateId == other.launchTemplateId &&
        launchTemplateName == other.launchTemplateName &&
        defaultVersion == other.defaultVersion;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, clientToken.hashCode);
    _$hash = $jc(_$hash, launchTemplateId.hashCode);
    _$hash = $jc(_$hash, launchTemplateName.hashCode);
    _$hash = $jc(_$hash, defaultVersion.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ModifyLaunchTemplateRequestBuilder
    implements
        Builder<ModifyLaunchTemplateRequest,
            ModifyLaunchTemplateRequestBuilder> {
  _$ModifyLaunchTemplateRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _clientToken;
  String? get clientToken => _$this._clientToken;
  set clientToken(String? clientToken) => _$this._clientToken = clientToken;

  String? _launchTemplateId;
  String? get launchTemplateId => _$this._launchTemplateId;
  set launchTemplateId(String? launchTemplateId) =>
      _$this._launchTemplateId = launchTemplateId;

  String? _launchTemplateName;
  String? get launchTemplateName => _$this._launchTemplateName;
  set launchTemplateName(String? launchTemplateName) =>
      _$this._launchTemplateName = launchTemplateName;

  String? _defaultVersion;
  String? get defaultVersion => _$this._defaultVersion;
  set defaultVersion(String? defaultVersion) =>
      _$this._defaultVersion = defaultVersion;

  ModifyLaunchTemplateRequestBuilder() {
    ModifyLaunchTemplateRequest._init(this);
  }

  ModifyLaunchTemplateRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _clientToken = $v.clientToken;
      _launchTemplateId = $v.launchTemplateId;
      _launchTemplateName = $v.launchTemplateName;
      _defaultVersion = $v.defaultVersion;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModifyLaunchTemplateRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModifyLaunchTemplateRequest;
  }

  @override
  void update(void Function(ModifyLaunchTemplateRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ModifyLaunchTemplateRequest build() => _build();

  _$ModifyLaunchTemplateRequest _build() {
    final _$result = _$v ??
        new _$ModifyLaunchTemplateRequest._(
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'ModifyLaunchTemplateRequest', 'dryRun'),
            clientToken: clientToken,
            launchTemplateId: launchTemplateId,
            launchTemplateName: launchTemplateName,
            defaultVersion: defaultVersion);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
