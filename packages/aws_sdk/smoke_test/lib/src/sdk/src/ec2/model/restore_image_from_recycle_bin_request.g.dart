// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restore_image_from_recycle_bin_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RestoreImageFromRecycleBinRequest
    extends RestoreImageFromRecycleBinRequest {
  @override
  final String? imageId;
  @override
  final bool dryRun;

  factory _$RestoreImageFromRecycleBinRequest(
          [void Function(RestoreImageFromRecycleBinRequestBuilder)? updates]) =>
      (new RestoreImageFromRecycleBinRequestBuilder()..update(updates))
          ._build();

  _$RestoreImageFromRecycleBinRequest._({this.imageId, required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'RestoreImageFromRecycleBinRequest', 'dryRun');
  }

  @override
  RestoreImageFromRecycleBinRequest rebuild(
          void Function(RestoreImageFromRecycleBinRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RestoreImageFromRecycleBinRequestBuilder toBuilder() =>
      new RestoreImageFromRecycleBinRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RestoreImageFromRecycleBinRequest &&
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

class RestoreImageFromRecycleBinRequestBuilder
    implements
        Builder<RestoreImageFromRecycleBinRequest,
            RestoreImageFromRecycleBinRequestBuilder> {
  _$RestoreImageFromRecycleBinRequest? _$v;

  String? _imageId;
  String? get imageId => _$this._imageId;
  set imageId(String? imageId) => _$this._imageId = imageId;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  RestoreImageFromRecycleBinRequestBuilder() {
    RestoreImageFromRecycleBinRequest._init(this);
  }

  RestoreImageFromRecycleBinRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _imageId = $v.imageId;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RestoreImageFromRecycleBinRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RestoreImageFromRecycleBinRequest;
  }

  @override
  void update(
      void Function(RestoreImageFromRecycleBinRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RestoreImageFromRecycleBinRequest build() => _build();

  _$RestoreImageFromRecycleBinRequest _build() {
    final _$result = _$v ??
        new _$RestoreImageFromRecycleBinRequest._(
            imageId: imageId,
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'RestoreImageFromRecycleBinRequest', 'dryRun'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
