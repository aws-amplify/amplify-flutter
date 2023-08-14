// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reset_image_attribute_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ResetImageAttributeRequest extends ResetImageAttributeRequest {
  @override
  final ResetImageAttributeName? attribute;
  @override
  final String? imageId;
  @override
  final bool dryRun;

  factory _$ResetImageAttributeRequest(
          [void Function(ResetImageAttributeRequestBuilder)? updates]) =>
      (new ResetImageAttributeRequestBuilder()..update(updates))._build();

  _$ResetImageAttributeRequest._(
      {this.attribute, this.imageId, required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'ResetImageAttributeRequest', 'dryRun');
  }

  @override
  ResetImageAttributeRequest rebuild(
          void Function(ResetImageAttributeRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ResetImageAttributeRequestBuilder toBuilder() =>
      new ResetImageAttributeRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ResetImageAttributeRequest &&
        attribute == other.attribute &&
        imageId == other.imageId &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, attribute.hashCode);
    _$hash = $jc(_$hash, imageId.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ResetImageAttributeRequestBuilder
    implements
        Builder<ResetImageAttributeRequest, ResetImageAttributeRequestBuilder> {
  _$ResetImageAttributeRequest? _$v;

  ResetImageAttributeName? _attribute;
  ResetImageAttributeName? get attribute => _$this._attribute;
  set attribute(ResetImageAttributeName? attribute) =>
      _$this._attribute = attribute;

  String? _imageId;
  String? get imageId => _$this._imageId;
  set imageId(String? imageId) => _$this._imageId = imageId;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  ResetImageAttributeRequestBuilder() {
    ResetImageAttributeRequest._init(this);
  }

  ResetImageAttributeRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _attribute = $v.attribute;
      _imageId = $v.imageId;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ResetImageAttributeRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ResetImageAttributeRequest;
  }

  @override
  void update(void Function(ResetImageAttributeRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ResetImageAttributeRequest build() => _build();

  _$ResetImageAttributeRequest _build() {
    final _$result = _$v ??
        new _$ResetImageAttributeRequest._(
            attribute: attribute,
            imageId: imageId,
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'ResetImageAttributeRequest', 'dryRun'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
