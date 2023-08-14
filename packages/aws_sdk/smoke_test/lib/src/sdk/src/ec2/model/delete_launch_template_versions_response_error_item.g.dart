// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_launch_template_versions_response_error_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteLaunchTemplateVersionsResponseErrorItem
    extends DeleteLaunchTemplateVersionsResponseErrorItem {
  @override
  final String? launchTemplateId;
  @override
  final String? launchTemplateName;
  @override
  final _i2.Int64 versionNumber;
  @override
  final ResponseError? responseError;

  factory _$DeleteLaunchTemplateVersionsResponseErrorItem(
          [void Function(DeleteLaunchTemplateVersionsResponseErrorItemBuilder)?
              updates]) =>
      (new DeleteLaunchTemplateVersionsResponseErrorItemBuilder()
            ..update(updates))
          ._build();

  _$DeleteLaunchTemplateVersionsResponseErrorItem._(
      {this.launchTemplateId,
      this.launchTemplateName,
      required this.versionNumber,
      this.responseError})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(versionNumber,
        r'DeleteLaunchTemplateVersionsResponseErrorItem', 'versionNumber');
  }

  @override
  DeleteLaunchTemplateVersionsResponseErrorItem rebuild(
          void Function(DeleteLaunchTemplateVersionsResponseErrorItemBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteLaunchTemplateVersionsResponseErrorItemBuilder toBuilder() =>
      new DeleteLaunchTemplateVersionsResponseErrorItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteLaunchTemplateVersionsResponseErrorItem &&
        launchTemplateId == other.launchTemplateId &&
        launchTemplateName == other.launchTemplateName &&
        versionNumber == other.versionNumber &&
        responseError == other.responseError;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, launchTemplateId.hashCode);
    _$hash = $jc(_$hash, launchTemplateName.hashCode);
    _$hash = $jc(_$hash, versionNumber.hashCode);
    _$hash = $jc(_$hash, responseError.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteLaunchTemplateVersionsResponseErrorItemBuilder
    implements
        Builder<DeleteLaunchTemplateVersionsResponseErrorItem,
            DeleteLaunchTemplateVersionsResponseErrorItemBuilder> {
  _$DeleteLaunchTemplateVersionsResponseErrorItem? _$v;

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

  ResponseErrorBuilder? _responseError;
  ResponseErrorBuilder get responseError =>
      _$this._responseError ??= new ResponseErrorBuilder();
  set responseError(ResponseErrorBuilder? responseError) =>
      _$this._responseError = responseError;

  DeleteLaunchTemplateVersionsResponseErrorItemBuilder() {
    DeleteLaunchTemplateVersionsResponseErrorItem._init(this);
  }

  DeleteLaunchTemplateVersionsResponseErrorItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _launchTemplateId = $v.launchTemplateId;
      _launchTemplateName = $v.launchTemplateName;
      _versionNumber = $v.versionNumber;
      _responseError = $v.responseError?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteLaunchTemplateVersionsResponseErrorItem other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteLaunchTemplateVersionsResponseErrorItem;
  }

  @override
  void update(
      void Function(DeleteLaunchTemplateVersionsResponseErrorItemBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteLaunchTemplateVersionsResponseErrorItem build() => _build();

  _$DeleteLaunchTemplateVersionsResponseErrorItem _build() {
    _$DeleteLaunchTemplateVersionsResponseErrorItem _$result;
    try {
      _$result = _$v ??
          new _$DeleteLaunchTemplateVersionsResponseErrorItem._(
              launchTemplateId: launchTemplateId,
              launchTemplateName: launchTemplateName,
              versionNumber: BuiltValueNullFieldError.checkNotNull(
                  versionNumber,
                  r'DeleteLaunchTemplateVersionsResponseErrorItem',
                  'versionNumber'),
              responseError: _responseError?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'responseError';
        _responseError?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DeleteLaunchTemplateVersionsResponseErrorItem',
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
