// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deregister_image_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeregisterImageRequest extends DeregisterImageRequest {
  @override
  final String? imageId;
  @override
  final bool dryRun;

  factory _$DeregisterImageRequest(
          [void Function(DeregisterImageRequestBuilder)? updates]) =>
      (new DeregisterImageRequestBuilder()..update(updates))._build();

  _$DeregisterImageRequest._({this.imageId, required this.dryRun}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DeregisterImageRequest', 'dryRun');
  }

  @override
  DeregisterImageRequest rebuild(
          void Function(DeregisterImageRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeregisterImageRequestBuilder toBuilder() =>
      new DeregisterImageRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeregisterImageRequest &&
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

class DeregisterImageRequestBuilder
    implements Builder<DeregisterImageRequest, DeregisterImageRequestBuilder> {
  _$DeregisterImageRequest? _$v;

  String? _imageId;
  String? get imageId => _$this._imageId;
  set imageId(String? imageId) => _$this._imageId = imageId;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  DeregisterImageRequestBuilder() {
    DeregisterImageRequest._init(this);
  }

  DeregisterImageRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _imageId = $v.imageId;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeregisterImageRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeregisterImageRequest;
  }

  @override
  void update(void Function(DeregisterImageRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeregisterImageRequest build() => _build();

  _$DeregisterImageRequest _build() {
    final _$result = _$v ??
        new _$DeregisterImageRequest._(
            imageId: imageId,
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'DeregisterImageRequest', 'dryRun'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
