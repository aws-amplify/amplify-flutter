// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_launch_template_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateLaunchTemplateRequest extends CreateLaunchTemplateRequest {
  @override
  final bool dryRun;
  @override
  final String? clientToken;
  @override
  final String? launchTemplateName;
  @override
  final String? versionDescription;
  @override
  final RequestLaunchTemplateData? launchTemplateData;
  @override
  final _i3.BuiltList<TagSpecification>? tagSpecifications;

  factory _$CreateLaunchTemplateRequest(
          [void Function(CreateLaunchTemplateRequestBuilder)? updates]) =>
      (new CreateLaunchTemplateRequestBuilder()..update(updates))._build();

  _$CreateLaunchTemplateRequest._(
      {required this.dryRun,
      this.clientToken,
      this.launchTemplateName,
      this.versionDescription,
      this.launchTemplateData,
      this.tagSpecifications})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'CreateLaunchTemplateRequest', 'dryRun');
  }

  @override
  CreateLaunchTemplateRequest rebuild(
          void Function(CreateLaunchTemplateRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateLaunchTemplateRequestBuilder toBuilder() =>
      new CreateLaunchTemplateRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateLaunchTemplateRequest &&
        dryRun == other.dryRun &&
        clientToken == other.clientToken &&
        launchTemplateName == other.launchTemplateName &&
        versionDescription == other.versionDescription &&
        launchTemplateData == other.launchTemplateData &&
        tagSpecifications == other.tagSpecifications;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, clientToken.hashCode);
    _$hash = $jc(_$hash, launchTemplateName.hashCode);
    _$hash = $jc(_$hash, versionDescription.hashCode);
    _$hash = $jc(_$hash, launchTemplateData.hashCode);
    _$hash = $jc(_$hash, tagSpecifications.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateLaunchTemplateRequestBuilder
    implements
        Builder<CreateLaunchTemplateRequest,
            CreateLaunchTemplateRequestBuilder> {
  _$CreateLaunchTemplateRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _clientToken;
  String? get clientToken => _$this._clientToken;
  set clientToken(String? clientToken) => _$this._clientToken = clientToken;

  String? _launchTemplateName;
  String? get launchTemplateName => _$this._launchTemplateName;
  set launchTemplateName(String? launchTemplateName) =>
      _$this._launchTemplateName = launchTemplateName;

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

  _i3.ListBuilder<TagSpecification>? _tagSpecifications;
  _i3.ListBuilder<TagSpecification> get tagSpecifications =>
      _$this._tagSpecifications ??= new _i3.ListBuilder<TagSpecification>();
  set tagSpecifications(_i3.ListBuilder<TagSpecification>? tagSpecifications) =>
      _$this._tagSpecifications = tagSpecifications;

  CreateLaunchTemplateRequestBuilder() {
    CreateLaunchTemplateRequest._init(this);
  }

  CreateLaunchTemplateRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _clientToken = $v.clientToken;
      _launchTemplateName = $v.launchTemplateName;
      _versionDescription = $v.versionDescription;
      _launchTemplateData = $v.launchTemplateData?.toBuilder();
      _tagSpecifications = $v.tagSpecifications?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateLaunchTemplateRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateLaunchTemplateRequest;
  }

  @override
  void update(void Function(CreateLaunchTemplateRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateLaunchTemplateRequest build() => _build();

  _$CreateLaunchTemplateRequest _build() {
    _$CreateLaunchTemplateRequest _$result;
    try {
      _$result = _$v ??
          new _$CreateLaunchTemplateRequest._(
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'CreateLaunchTemplateRequest', 'dryRun'),
              clientToken: clientToken,
              launchTemplateName: launchTemplateName,
              versionDescription: versionDescription,
              launchTemplateData: _launchTemplateData?.build(),
              tagSpecifications: _tagSpecifications?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'launchTemplateData';
        _launchTemplateData?.build();
        _$failedField = 'tagSpecifications';
        _tagSpecifications?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateLaunchTemplateRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
