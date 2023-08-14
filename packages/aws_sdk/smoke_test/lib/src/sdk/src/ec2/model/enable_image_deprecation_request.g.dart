// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'enable_image_deprecation_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EnableImageDeprecationRequest extends EnableImageDeprecationRequest {
  @override
  final String? imageId;
  @override
  final DateTime? deprecateAt;
  @override
  final bool dryRun;

  factory _$EnableImageDeprecationRequest(
          [void Function(EnableImageDeprecationRequestBuilder)? updates]) =>
      (new EnableImageDeprecationRequestBuilder()..update(updates))._build();

  _$EnableImageDeprecationRequest._(
      {this.imageId, this.deprecateAt, required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'EnableImageDeprecationRequest', 'dryRun');
  }

  @override
  EnableImageDeprecationRequest rebuild(
          void Function(EnableImageDeprecationRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EnableImageDeprecationRequestBuilder toBuilder() =>
      new EnableImageDeprecationRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EnableImageDeprecationRequest &&
        imageId == other.imageId &&
        deprecateAt == other.deprecateAt &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, imageId.hashCode);
    _$hash = $jc(_$hash, deprecateAt.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class EnableImageDeprecationRequestBuilder
    implements
        Builder<EnableImageDeprecationRequest,
            EnableImageDeprecationRequestBuilder> {
  _$EnableImageDeprecationRequest? _$v;

  String? _imageId;
  String? get imageId => _$this._imageId;
  set imageId(String? imageId) => _$this._imageId = imageId;

  DateTime? _deprecateAt;
  DateTime? get deprecateAt => _$this._deprecateAt;
  set deprecateAt(DateTime? deprecateAt) => _$this._deprecateAt = deprecateAt;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  EnableImageDeprecationRequestBuilder() {
    EnableImageDeprecationRequest._init(this);
  }

  EnableImageDeprecationRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _imageId = $v.imageId;
      _deprecateAt = $v.deprecateAt;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EnableImageDeprecationRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EnableImageDeprecationRequest;
  }

  @override
  void update(void Function(EnableImageDeprecationRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EnableImageDeprecationRequest build() => _build();

  _$EnableImageDeprecationRequest _build() {
    final _$result = _$v ??
        new _$EnableImageDeprecationRequest._(
            imageId: imageId,
            deprecateAt: deprecateAt,
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'EnableImageDeprecationRequest', 'dryRun'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
