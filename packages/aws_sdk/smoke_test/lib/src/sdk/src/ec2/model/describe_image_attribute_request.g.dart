// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_image_attribute_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeImageAttributeRequest extends DescribeImageAttributeRequest {
  @override
  final ImageAttributeName? attribute;
  @override
  final String? imageId;
  @override
  final bool dryRun;

  factory _$DescribeImageAttributeRequest(
          [void Function(DescribeImageAttributeRequestBuilder)? updates]) =>
      (new DescribeImageAttributeRequestBuilder()..update(updates))._build();

  _$DescribeImageAttributeRequest._(
      {this.attribute, this.imageId, required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DescribeImageAttributeRequest', 'dryRun');
  }

  @override
  DescribeImageAttributeRequest rebuild(
          void Function(DescribeImageAttributeRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeImageAttributeRequestBuilder toBuilder() =>
      new DescribeImageAttributeRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeImageAttributeRequest &&
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

class DescribeImageAttributeRequestBuilder
    implements
        Builder<DescribeImageAttributeRequest,
            DescribeImageAttributeRequestBuilder> {
  _$DescribeImageAttributeRequest? _$v;

  ImageAttributeName? _attribute;
  ImageAttributeName? get attribute => _$this._attribute;
  set attribute(ImageAttributeName? attribute) => _$this._attribute = attribute;

  String? _imageId;
  String? get imageId => _$this._imageId;
  set imageId(String? imageId) => _$this._imageId = imageId;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  DescribeImageAttributeRequestBuilder() {
    DescribeImageAttributeRequest._init(this);
  }

  DescribeImageAttributeRequestBuilder get _$this {
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
  void replace(DescribeImageAttributeRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeImageAttributeRequest;
  }

  @override
  void update(void Function(DescribeImageAttributeRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeImageAttributeRequest build() => _build();

  _$DescribeImageAttributeRequest _build() {
    final _$result = _$v ??
        new _$DescribeImageAttributeRequest._(
            attribute: attribute,
            imageId: imageId,
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'DescribeImageAttributeRequest', 'dryRun'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
