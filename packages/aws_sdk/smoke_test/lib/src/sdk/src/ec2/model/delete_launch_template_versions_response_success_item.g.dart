// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_launch_template_versions_response_success_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteLaunchTemplateVersionsResponseSuccessItem
    extends DeleteLaunchTemplateVersionsResponseSuccessItem {
  @override
  final String? launchTemplateId;
  @override
  final String? launchTemplateName;
  @override
  final _i2.Int64 versionNumber;

  factory _$DeleteLaunchTemplateVersionsResponseSuccessItem(
          [void Function(
                  DeleteLaunchTemplateVersionsResponseSuccessItemBuilder)?
              updates]) =>
      (new DeleteLaunchTemplateVersionsResponseSuccessItemBuilder()
            ..update(updates))
          ._build();

  _$DeleteLaunchTemplateVersionsResponseSuccessItem._(
      {this.launchTemplateId,
      this.launchTemplateName,
      required this.versionNumber})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(versionNumber,
        r'DeleteLaunchTemplateVersionsResponseSuccessItem', 'versionNumber');
  }

  @override
  DeleteLaunchTemplateVersionsResponseSuccessItem rebuild(
          void Function(DeleteLaunchTemplateVersionsResponseSuccessItemBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteLaunchTemplateVersionsResponseSuccessItemBuilder toBuilder() =>
      new DeleteLaunchTemplateVersionsResponseSuccessItemBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteLaunchTemplateVersionsResponseSuccessItem &&
        launchTemplateId == other.launchTemplateId &&
        launchTemplateName == other.launchTemplateName &&
        versionNumber == other.versionNumber;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, launchTemplateId.hashCode);
    _$hash = $jc(_$hash, launchTemplateName.hashCode);
    _$hash = $jc(_$hash, versionNumber.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteLaunchTemplateVersionsResponseSuccessItemBuilder
    implements
        Builder<DeleteLaunchTemplateVersionsResponseSuccessItem,
            DeleteLaunchTemplateVersionsResponseSuccessItemBuilder> {
  _$DeleteLaunchTemplateVersionsResponseSuccessItem? _$v;

  String? _launchTemplateId;
  String? get launchTemplateId => _$this._launchTemplateId;
  set launchTemplateId(String? launchTemplateId) =>
      _$this._launchTemplateId = launchTemplateId;

  String? _launchTemplateName;
  String? get launchTemplateName => _$this._launchTemplateName;
  set launchTemplateName(String? launchTemplateName) =>
      _$this._launchTemplateName = launchTemplateName;

  _i2.Int64? _versionNumber;
  _i2.Int64? get versionNumber => _$this._versionNumber;
  set versionNumber(_i2.Int64? versionNumber) =>
      _$this._versionNumber = versionNumber;

  DeleteLaunchTemplateVersionsResponseSuccessItemBuilder() {
    DeleteLaunchTemplateVersionsResponseSuccessItem._init(this);
  }

  DeleteLaunchTemplateVersionsResponseSuccessItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _launchTemplateId = $v.launchTemplateId;
      _launchTemplateName = $v.launchTemplateName;
      _versionNumber = $v.versionNumber;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteLaunchTemplateVersionsResponseSuccessItem other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteLaunchTemplateVersionsResponseSuccessItem;
  }

  @override
  void update(
      void Function(DeleteLaunchTemplateVersionsResponseSuccessItemBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteLaunchTemplateVersionsResponseSuccessItem build() => _build();

  _$DeleteLaunchTemplateVersionsResponseSuccessItem _build() {
    final _$result = _$v ??
        new _$DeleteLaunchTemplateVersionsResponseSuccessItem._(
            launchTemplateId: launchTemplateId,
            launchTemplateName: launchTemplateName,
            versionNumber: BuiltValueNullFieldError.checkNotNull(
                versionNumber,
                r'DeleteLaunchTemplateVersionsResponseSuccessItem',
                'versionNumber'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
