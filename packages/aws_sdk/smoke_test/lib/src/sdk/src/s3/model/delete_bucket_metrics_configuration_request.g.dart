// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_bucket_metrics_configuration_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteBucketMetricsConfigurationRequest
    extends DeleteBucketMetricsConfigurationRequest {
  @override
  final String bucket;
  @override
  final String id;
  @override
  final String? expectedBucketOwner;

  factory _$DeleteBucketMetricsConfigurationRequest(
          [void Function(DeleteBucketMetricsConfigurationRequestBuilder)?
              updates]) =>
      (new DeleteBucketMetricsConfigurationRequestBuilder()..update(updates))
          ._build();

  _$DeleteBucketMetricsConfigurationRequest._(
      {required this.bucket, required this.id, this.expectedBucketOwner})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        bucket, r'DeleteBucketMetricsConfigurationRequest', 'bucket');
    BuiltValueNullFieldError.checkNotNull(
        id, r'DeleteBucketMetricsConfigurationRequest', 'id');
  }

  @override
  DeleteBucketMetricsConfigurationRequest rebuild(
          void Function(DeleteBucketMetricsConfigurationRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteBucketMetricsConfigurationRequestBuilder toBuilder() =>
      new DeleteBucketMetricsConfigurationRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteBucketMetricsConfigurationRequest &&
        bucket == other.bucket &&
        id == other.id &&
        expectedBucketOwner == other.expectedBucketOwner;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, bucket.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, expectedBucketOwner.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteBucketMetricsConfigurationRequestBuilder
    implements
        Builder<DeleteBucketMetricsConfigurationRequest,
            DeleteBucketMetricsConfigurationRequestBuilder> {
  _$DeleteBucketMetricsConfigurationRequest? _$v;

  String? _bucket;
  String? get bucket => _$this._bucket;
  set bucket(String? bucket) => _$this._bucket = bucket;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _expectedBucketOwner;
  String? get expectedBucketOwner => _$this._expectedBucketOwner;
  set expectedBucketOwner(String? expectedBucketOwner) =>
      _$this._expectedBucketOwner = expectedBucketOwner;

  DeleteBucketMetricsConfigurationRequestBuilder();

  DeleteBucketMetricsConfigurationRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bucket = $v.bucket;
      _id = $v.id;
      _expectedBucketOwner = $v.expectedBucketOwner;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteBucketMetricsConfigurationRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteBucketMetricsConfigurationRequest;
  }

  @override
  void update(
      void Function(DeleteBucketMetricsConfigurationRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteBucketMetricsConfigurationRequest build() => _build();

  _$DeleteBucketMetricsConfigurationRequest _build() {
    final _$result = _$v ??
        new _$DeleteBucketMetricsConfigurationRequest._(
            bucket: BuiltValueNullFieldError.checkNotNull(
                bucket, r'DeleteBucketMetricsConfigurationRequest', 'bucket'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'DeleteBucketMetricsConfigurationRequest', 'id'),
            expectedBucketOwner: expectedBucketOwner);
    replace(_$result);
    return _$result;
  }
}

class _$DeleteBucketMetricsConfigurationRequestPayload
    extends DeleteBucketMetricsConfigurationRequestPayload {
  factory _$DeleteBucketMetricsConfigurationRequestPayload(
          [void Function(DeleteBucketMetricsConfigurationRequestPayloadBuilder)?
              updates]) =>
      (new DeleteBucketMetricsConfigurationRequestPayloadBuilder()
            ..update(updates))
          ._build();

  _$DeleteBucketMetricsConfigurationRequestPayload._() : super._();

  @override
  DeleteBucketMetricsConfigurationRequestPayload rebuild(
          void Function(DeleteBucketMetricsConfigurationRequestPayloadBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteBucketMetricsConfigurationRequestPayloadBuilder toBuilder() =>
      new DeleteBucketMetricsConfigurationRequestPayloadBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteBucketMetricsConfigurationRequestPayload;
  }

  @override
  int get hashCode {
    return 284154980;
  }
}

class DeleteBucketMetricsConfigurationRequestPayloadBuilder
    implements
        Builder<DeleteBucketMetricsConfigurationRequestPayload,
            DeleteBucketMetricsConfigurationRequestPayloadBuilder> {
  _$DeleteBucketMetricsConfigurationRequestPayload? _$v;

  DeleteBucketMetricsConfigurationRequestPayloadBuilder();

  @override
  void replace(DeleteBucketMetricsConfigurationRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteBucketMetricsConfigurationRequestPayload;
  }

  @override
  void update(
      void Function(DeleteBucketMetricsConfigurationRequestPayloadBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteBucketMetricsConfigurationRequestPayload build() => _build();

  _$DeleteBucketMetricsConfigurationRequestPayload _build() {
    final _$result =
        _$v ?? new _$DeleteBucketMetricsConfigurationRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
