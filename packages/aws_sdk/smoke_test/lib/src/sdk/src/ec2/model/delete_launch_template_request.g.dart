// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_launch_template_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteLaunchTemplateRequest extends DeleteLaunchTemplateRequest {
  @override
  final bool dryRun;
  @override
  final String? launchTemplateId;
  @override
  final String? launchTemplateName;

  factory _$DeleteLaunchTemplateRequest(
          [void Function(DeleteLaunchTemplateRequestBuilder)? updates]) =>
      (new DeleteLaunchTemplateRequestBuilder()..update(updates))._build();

  _$DeleteLaunchTemplateRequest._(
      {required this.dryRun, this.launchTemplateId, this.launchTemplateName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DeleteLaunchTemplateRequest', 'dryRun');
  }

  @override
  DeleteLaunchTemplateRequest rebuild(
          void Function(DeleteLaunchTemplateRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteLaunchTemplateRequestBuilder toBuilder() =>
      new DeleteLaunchTemplateRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteLaunchTemplateRequest &&
        dryRun == other.dryRun &&
        launchTemplateId == other.launchTemplateId &&
        launchTemplateName == other.launchTemplateName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, launchTemplateId.hashCode);
    _$hash = $jc(_$hash, launchTemplateName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteLaunchTemplateRequestBuilder
    implements
        Builder<DeleteLaunchTemplateRequest,
            DeleteLaunchTemplateRequestBuilder> {
  _$DeleteLaunchTemplateRequest? _$v;

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

  DeleteLaunchTemplateRequestBuilder() {
    DeleteLaunchTemplateRequest._init(this);
  }

  DeleteLaunchTemplateRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _launchTemplateId = $v.launchTemplateId;
      _launchTemplateName = $v.launchTemplateName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteLaunchTemplateRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteLaunchTemplateRequest;
  }

  @override
  void update(void Function(DeleteLaunchTemplateRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteLaunchTemplateRequest build() => _build();

  _$DeleteLaunchTemplateRequest _build() {
    final _$result = _$v ??
        new _$DeleteLaunchTemplateRequest._(
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'DeleteLaunchTemplateRequest', 'dryRun'),
            launchTemplateId: launchTemplateId,
            launchTemplateName: launchTemplateName);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
