// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'disable_image_deprecation_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DisableImageDeprecationRequest extends DisableImageDeprecationRequest {
  @override
  final String? imageId;
  @override
  final bool dryRun;

  factory _$DisableImageDeprecationRequest(
          [void Function(DisableImageDeprecationRequestBuilder)? updates]) =>
      (new DisableImageDeprecationRequestBuilder()..update(updates))._build();

  _$DisableImageDeprecationRequest._({this.imageId, required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DisableImageDeprecationRequest', 'dryRun');
  }

  @override
  DisableImageDeprecationRequest rebuild(
          void Function(DisableImageDeprecationRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DisableImageDeprecationRequestBuilder toBuilder() =>
      new DisableImageDeprecationRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DisableImageDeprecationRequest &&
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

class DisableImageDeprecationRequestBuilder
    implements
        Builder<DisableImageDeprecationRequest,
            DisableImageDeprecationRequestBuilder> {
  _$DisableImageDeprecationRequest? _$v;

  String? _imageId;
  String? get imageId => _$this._imageId;
  set imageId(String? imageId) => _$this._imageId = imageId;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  DisableImageDeprecationRequestBuilder() {
    DisableImageDeprecationRequest._init(this);
  }

  DisableImageDeprecationRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _imageId = $v.imageId;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DisableImageDeprecationRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DisableImageDeprecationRequest;
  }

  @override
  void update(void Function(DisableImageDeprecationRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DisableImageDeprecationRequest build() => _build();

  _$DisableImageDeprecationRequest _build() {
    final _$result = _$v ??
        new _$DisableImageDeprecationRequest._(
            imageId: imageId,
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'DisableImageDeprecationRequest', 'dryRun'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
