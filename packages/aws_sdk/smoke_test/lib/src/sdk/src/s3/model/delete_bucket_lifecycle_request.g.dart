// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_bucket_lifecycle_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteBucketLifecycleRequest extends DeleteBucketLifecycleRequest {
  @override
  final String bucket;
  @override
  final String? expectedBucketOwner;

  factory _$DeleteBucketLifecycleRequest(
          [void Function(DeleteBucketLifecycleRequestBuilder)? updates]) =>
      (new DeleteBucketLifecycleRequestBuilder()..update(updates))._build();

  _$DeleteBucketLifecycleRequest._(
      {required this.bucket, this.expectedBucketOwner})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        bucket, r'DeleteBucketLifecycleRequest', 'bucket');
  }

  @override
  DeleteBucketLifecycleRequest rebuild(
          void Function(DeleteBucketLifecycleRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteBucketLifecycleRequestBuilder toBuilder() =>
      new DeleteBucketLifecycleRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteBucketLifecycleRequest &&
        bucket == other.bucket &&
        expectedBucketOwner == other.expectedBucketOwner;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, bucket.hashCode);
    _$hash = $jc(_$hash, expectedBucketOwner.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteBucketLifecycleRequestBuilder
    implements
        Builder<DeleteBucketLifecycleRequest,
            DeleteBucketLifecycleRequestBuilder> {
  _$DeleteBucketLifecycleRequest? _$v;

  String? _bucket;
  String? get bucket => _$this._bucket;
  set bucket(String? bucket) => _$this._bucket = bucket;

  String? _expectedBucketOwner;
  String? get expectedBucketOwner => _$this._expectedBucketOwner;
  set expectedBucketOwner(String? expectedBucketOwner) =>
      _$this._expectedBucketOwner = expectedBucketOwner;

  DeleteBucketLifecycleRequestBuilder();

  DeleteBucketLifecycleRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bucket = $v.bucket;
      _expectedBucketOwner = $v.expectedBucketOwner;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteBucketLifecycleRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteBucketLifecycleRequest;
  }

  @override
  void update(void Function(DeleteBucketLifecycleRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteBucketLifecycleRequest build() => _build();

  _$DeleteBucketLifecycleRequest _build() {
    final _$result = _$v ??
        new _$DeleteBucketLifecycleRequest._(
            bucket: BuiltValueNullFieldError.checkNotNull(
                bucket, r'DeleteBucketLifecycleRequest', 'bucket'),
            expectedBucketOwner: expectedBucketOwner);
    replace(_$result);
    return _$result;
  }
}

class _$DeleteBucketLifecycleRequestPayload
    extends DeleteBucketLifecycleRequestPayload {
  factory _$DeleteBucketLifecycleRequestPayload(
          [void Function(DeleteBucketLifecycleRequestPayloadBuilder)?
              updates]) =>
      (new DeleteBucketLifecycleRequestPayloadBuilder()..update(updates))
          ._build();

  _$DeleteBucketLifecycleRequestPayload._() : super._();

  @override
  DeleteBucketLifecycleRequestPayload rebuild(
          void Function(DeleteBucketLifecycleRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteBucketLifecycleRequestPayloadBuilder toBuilder() =>
      new DeleteBucketLifecycleRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteBucketLifecycleRequestPayload;
  }

  @override
  int get hashCode {
    return 547538049;
  }
}

class DeleteBucketLifecycleRequestPayloadBuilder
    implements
        Builder<DeleteBucketLifecycleRequestPayload,
            DeleteBucketLifecycleRequestPayloadBuilder> {
  _$DeleteBucketLifecycleRequestPayload? _$v;

  DeleteBucketLifecycleRequestPayloadBuilder();

  @override
  void replace(DeleteBucketLifecycleRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteBucketLifecycleRequestPayload;
  }

  @override
  void update(
      void Function(DeleteBucketLifecycleRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteBucketLifecycleRequestPayload build() => _build();

  _$DeleteBucketLifecycleRequestPayload _build() {
    final _$result = _$v ?? new _$DeleteBucketLifecycleRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
