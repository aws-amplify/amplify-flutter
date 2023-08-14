// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_launch_template_version_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateLaunchTemplateVersionRequest
    extends CreateLaunchTemplateVersionRequest {
  @override
  final bool dryRun;
  @override
  final String? clientToken;
  @override
  final String? launchTemplateId;
  @override
  final String? launchTemplateName;
  @override
  final String? sourceVersion;
  @override
  final String? versionDescription;
  @override
  final RequestLaunchTemplateData? launchTemplateData;
  @override
  final bool resolveAlias;

  factory _$CreateLaunchTemplateVersionRequest(
          [void Function(CreateLaunchTemplateVersionRequestBuilder)?
              updates]) =>
      (new CreateLaunchTemplateVersionRequestBuilder()..update(updates))
          ._build();

  _$CreateLaunchTemplateVersionRequest._(
      {required this.dryRun,
      this.clientToken,
      this.launchTemplateId,
      this.launchTemplateName,
      this.sourceVersion,
      this.versionDescription,
      this.launchTemplateData,
      required this.resolveAlias})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'CreateLaunchTemplateVersionRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(
        resolveAlias, r'CreateLaunchTemplateVersionRequest', 'resolveAlias');
  }

  @override
  CreateLaunchTemplateVersionRequest rebuild(
          void Function(CreateLaunchTemplateVersionRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateLaunchTemplateVersionRequestBuilder toBuilder() =>
      new CreateLaunchTemplateVersionRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateLaunchTemplateVersionRequest &&
        dryRun == other.dryRun &&
        clientToken == other.clientToken &&
        launchTemplateId == other.launchTemplateId &&
        launchTemplateName == other.launchTemplateName &&
        sourceVersion == other.sourceVersion &&
        versionDescription == other.versionDescription &&
        launchTemplateData == other.launchTemplateData &&
        resolveAlias == other.resolveAlias;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, clientToken.hashCode);
    _$hash = $jc(_$hash, launchTemplateId.hashCode);
    _$hash = $jc(_$hash, launchTemplateName.hashCode);
    _$hash = $jc(_$hash, sourceVersion.hashCode);
    _$hash = $jc(_$hash, versionDescription.hashCode);
    _$hash = $jc(_$hash, launchTemplateData.hashCode);
    _$hash = $jc(_$hash, resolveAlias.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateLaunchTemplateVersionRequestBuilder
    implements
        Builder<CreateLaunchTemplateVersionRequest,
            CreateLaunchTemplateVersionRequestBuilder> {
  _$CreateLaunchTemplateVersionRequest? _$v;

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

  String? _sourceVersion;
  String? get sourceVersion => _$this._sourceVersion;
  set sourceVersion(String? sourceVersion) =>
      _$this._sourceVersion = sourceVersion;

  String? _versionDescription;
  String? get versionDescription => _$this._versionDescription;
  set versionDescription(String? versionDescription) =>
      _$this._versionDescription = versionDescription;

  RequestLaunchTemplateDataBuilder? _launchTemplateData;
  RequestLaunchTemplateDataBuilder get launchTemplateData =>
      _$this._launchTemplateData ??= new RequestLaunchTemplateDataBuilder();
  set launchTemplateData(
          RequestLaunchTemplateDataBuilder? launchTemplateData) =>
      _$this._launchTemplateData = launchTemplateData;

  bool? _resolveAlias;
  bool? get resolveAlias => _$this._resolveAlias;
  set resolveAlias(bool? resolveAlias) => _$this._resolveAlias = resolveAlias;

  CreateLaunchTemplateVersionRequestBuilder() {
    CreateLaunchTemplateVersionRequest._init(this);
  }

  CreateLaunchTemplateVersionRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _clientToken = $v.clientToken;
      _launchTemplateId = $v.launchTemplateId;
      _launchTemplateName = $v.launchTemplateName;
      _sourceVersion = $v.sourceVersion;
      _versionDescription = $v.versionDescription;
      _launchTemplateData = $v.launchTemplateData?.toBuilder();
      _resolveAlias = $v.resolveAlias;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateLaunchTemplateVersionRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateLaunchTemplateVersionRequest;
  }

  @override
  void update(
      void Function(CreateLaunchTemplateVersionRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateLaunchTemplateVersionRequest build() => _build();

  _$CreateLaunchTemplateVersionRequest _build() {
    _$CreateLaunchTemplateVersionRequest _$result;
    try {
      _$result = _$v ??
          new _$CreateLaunchTemplateVersionRequest._(
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'CreateLaunchTemplateVersionRequest', 'dryRun'),
              clientToken: clientToken,
              launchTemplateId: launchTemplateId,
              launchTemplateName: launchTemplateName,
              sourceVersion: sourceVersion,
              versionDescription: versionDescription,
              launchTemplateData: _launchTemplateData?.build(),
              resolveAlias: BuiltValueNullFieldError.checkNotNull(resolveAlias,
                  r'CreateLaunchTemplateVersionRequest', 'resolveAlias'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'launchTemplateData';
        _launchTemplateData?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateLaunchTemplateVersionRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
