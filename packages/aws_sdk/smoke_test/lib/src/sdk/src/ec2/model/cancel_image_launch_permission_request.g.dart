// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cancel_image_launch_permission_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CancelImageLaunchPermissionRequest
    extends CancelImageLaunchPermissionRequest {
  @override
  final String? imageId;
  @override
  final bool dryRun;

  factory _$CancelImageLaunchPermissionRequest(
          [void Function(CancelImageLaunchPermissionRequestBuilder)?
              updates]) =>
      (new CancelImageLaunchPermissionRequestBuilder()..update(updates))
          ._build();

  _$CancelImageLaunchPermissionRequest._({this.imageId, required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'CancelImageLaunchPermissionRequest', 'dryRun');
  }

  @override
  CancelImageLaunchPermissionRequest rebuild(
          void Function(CancelImageLaunchPermissionRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CancelImageLaunchPermissionRequestBuilder toBuilder() =>
      new CancelImageLaunchPermissionRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CancelImageLaunchPermissionRequest &&
        imageId == other.imageId &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, imageId.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CancelImageLaunchPermissionRequestBuilder
    implements
        Builder<CancelImageLaunchPermissionRequest,
            CancelImageLaunchPermissionRequestBuilder> {
  _$CancelImageLaunchPermissionRequest? _$v;

  String? _imageId;
  String? get imageId => _$this._imageId;
  set imageId(String? imageId) => _$this._imageId = imageId;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  CancelImageLaunchPermissionRequestBuilder() {
    CancelImageLaunchPermissionRequest._init(this);
  }

  CancelImageLaunchPermissionRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _imageId = $v.imageId;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CancelImageLaunchPermissionRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CancelImageLaunchPermissionRequest;
  }

  @override
  void update(
      void Function(CancelImageLaunchPermissionRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CancelImageLaunchPermissionRequest build() => _build();

  _$CancelImageLaunchPermissionRequest _build() {
    final _$result = _$v ??
        new _$CancelImageLaunchPermissionRequest._(
            imageId: imageId,
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'CancelImageLaunchPermissionRequest', 'dryRun'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
