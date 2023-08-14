// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_store_image_task_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateStoreImageTaskRequest extends CreateStoreImageTaskRequest {
  @override
  final String? imageId;
  @override
  final String? bucket;
  @override
  final _i3.BuiltList<S3ObjectTag>? s3ObjectTags;
  @override
  final bool dryRun;

  factory _$CreateStoreImageTaskRequest(
          [void Function(CreateStoreImageTaskRequestBuilder)? updates]) =>
      (new CreateStoreImageTaskRequestBuilder()..update(updates))._build();

  _$CreateStoreImageTaskRequest._(
      {this.imageId, this.bucket, this.s3ObjectTags, required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'CreateStoreImageTaskRequest', 'dryRun');
  }

  @override
  CreateStoreImageTaskRequest rebuild(
          void Function(CreateStoreImageTaskRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateStoreImageTaskRequestBuilder toBuilder() =>
      new CreateStoreImageTaskRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateStoreImageTaskRequest &&
        imageId == other.imageId &&
        bucket == other.bucket &&
        s3ObjectTags == other.s3ObjectTags &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, imageId.hashCode);
    _$hash = $jc(_$hash, bucket.hashCode);
    _$hash = $jc(_$hash, s3ObjectTags.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateStoreImageTaskRequestBuilder
    implements
        Builder<CreateStoreImageTaskRequest,
            CreateStoreImageTaskRequestBuilder> {
  _$CreateStoreImageTaskRequest? _$v;

  String? _imageId;
  String? get imageId => _$this._imageId;
  set imageId(String? imageId) => _$this._imageId = imageId;

  String? _bucket;
  String? get bucket => _$this._bucket;
  set bucket(String? bucket) => _$this._bucket = bucket;

  _i3.ListBuilder<S3ObjectTag>? _s3ObjectTags;
  _i3.ListBuilder<S3ObjectTag> get s3ObjectTags =>
      _$this._s3ObjectTags ??= new _i3.ListBuilder<S3ObjectTag>();
  set s3ObjectTags(_i3.ListBuilder<S3ObjectTag>? s3ObjectTags) =>
      _$this._s3ObjectTags = s3ObjectTags;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  CreateStoreImageTaskRequestBuilder() {
    CreateStoreImageTaskRequest._init(this);
  }

  CreateStoreImageTaskRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _imageId = $v.imageId;
      _bucket = $v.bucket;
      _s3ObjectTags = $v.s3ObjectTags?.toBuilder();
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateStoreImageTaskRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateStoreImageTaskRequest;
  }

  @override
  void update(void Function(CreateStoreImageTaskRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateStoreImageTaskRequest build() => _build();

  _$CreateStoreImageTaskRequest _build() {
    _$CreateStoreImageTaskRequest _$result;
    try {
      _$result = _$v ??
          new _$CreateStoreImageTaskRequest._(
              imageId: imageId,
              bucket: bucket,
              s3ObjectTags: _s3ObjectTags?.build(),
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'CreateStoreImageTaskRequest', 'dryRun'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 's3ObjectTags';
        _s3ObjectTags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateStoreImageTaskRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
