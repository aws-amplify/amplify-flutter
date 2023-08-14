// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_launch_template_versions_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteLaunchTemplateVersionsRequest
    extends DeleteLaunchTemplateVersionsRequest {
  @override
  final bool dryRun;
  @override
  final String? launchTemplateId;
  @override
  final String? launchTemplateName;
  @override
  final _i3.BuiltList<String>? versions;

  factory _$DeleteLaunchTemplateVersionsRequest(
          [void Function(DeleteLaunchTemplateVersionsRequestBuilder)?
              updates]) =>
      (new DeleteLaunchTemplateVersionsRequestBuilder()..update(updates))
          ._build();

  _$DeleteLaunchTemplateVersionsRequest._(
      {required this.dryRun,
      this.launchTemplateId,
      this.launchTemplateName,
      this.versions})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DeleteLaunchTemplateVersionsRequest', 'dryRun');
  }

  @override
  DeleteLaunchTemplateVersionsRequest rebuild(
          void Function(DeleteLaunchTemplateVersionsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteLaunchTemplateVersionsRequestBuilder toBuilder() =>
      new DeleteLaunchTemplateVersionsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteLaunchTemplateVersionsRequest &&
        dryRun == other.dryRun &&
        launchTemplateId == other.launchTemplateId &&
        launchTemplateName == other.launchTemplateName &&
        versions == other.versions;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, launchTemplateId.hashCode);
    _$hash = $jc(_$hash, launchTemplateName.hashCode);
    _$hash = $jc(_$hash, versions.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteLaunchTemplateVersionsRequestBuilder
    implements
        Builder<DeleteLaunchTemplateVersionsRequest,
            DeleteLaunchTemplateVersionsRequestBuilder> {
  _$DeleteLaunchTemplateVersionsRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _launchTemplateId;
  String? get launchTemplateId => _$this._launchTemplateId;
  set launchTemplateId(String? launchTemplateId) =>
      _$this._launchTemplateId = launchTemplateId;

  String? _launchTemplateName;
  String? get launchTemplateName => _$this._launchTemplateName;
  set launchTemplateName(String? launchTemplateName) =>
      _$this._launchTemplateName = launchTemplateName;

  _i3.ListBuilder<String>? _versions;
  _i3.ListBuilder<String> get versions =>
      _$this._versions ??= new _i3.ListBuilder<String>();
  set versions(_i3.ListBuilder<String>? versions) =>
      _$this._versions = versions;

  DeleteLaunchTemplateVersionsRequestBuilder() {
    DeleteLaunchTemplateVersionsRequest._init(this);
  }

  DeleteLaunchTemplateVersionsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _launchTemplateId = $v.launchTemplateId;
      _launchTemplateName = $v.launchTemplateName;
      _versions = $v.versions?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteLaunchTemplateVersionsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteLaunchTemplateVersionsRequest;
  }

  @override
  void update(
      void Function(DeleteLaunchTemplateVersionsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteLaunchTemplateVersionsRequest build() => _build();

  _$DeleteLaunchTemplateVersionsRequest _build() {
    _$DeleteLaunchTemplateVersionsRequest _$result;
    try {
      _$result = _$v ??
          new _$DeleteLaunchTemplateVersionsRequest._(
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'DeleteLaunchTemplateVersionsRequest', 'dryRun'),
              launchTemplateId: launchTemplateId,
              launchTemplateName: launchTemplateName,
              versions: _versions?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'versions';
        _versions?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DeleteLaunchTemplateVersionsRequest',
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
