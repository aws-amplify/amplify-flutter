// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_objects_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteObjectsRequest extends DeleteObjectsRequest {
  @override
  final String bucket;
  @override
  final Delete delete;
  @override
  final String? mfa;
  @override
  final RequestPayer? requestPayer;
  @override
  final bool? bypassGovernanceRetention;
  @override
  final String? expectedBucketOwner;
  @override
  final ChecksumAlgorithm? checksumAlgorithm;

  factory _$DeleteObjectsRequest(
          [void Function(DeleteObjectsRequestBuilder)? updates]) =>
      (new DeleteObjectsRequestBuilder()..update(updates))._build();

  _$DeleteObjectsRequest._(
      {required this.bucket,
      required this.delete,
      this.mfa,
      this.requestPayer,
      this.bypassGovernanceRetention,
      this.expectedBucketOwner,
      this.checksumAlgorithm})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        bucket, r'DeleteObjectsRequest', 'bucket');
    BuiltValueNullFieldError.checkNotNull(
        delete, r'DeleteObjectsRequest', 'delete');
  }

  @override
  DeleteObjectsRequest rebuild(
          void Function(DeleteObjectsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteObjectsRequestBuilder toBuilder() =>
      new DeleteObjectsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteObjectsRequest &&
        bucket == other.bucket &&
        delete == other.delete &&
        mfa == other.mfa &&
        requestPayer == other.requestPayer &&
        bypassGovernanceRetention == other.bypassGovernanceRetention &&
        expectedBucketOwner == other.expectedBucketOwner &&
        checksumAlgorithm == other.checksumAlgorithm;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, bucket.hashCode);
    _$hash = $jc(_$hash, delete.hashCode);
    _$hash = $jc(_$hash, mfa.hashCode);
    _$hash = $jc(_$hash, requestPayer.hashCode);
    _$hash = $jc(_$hash, bypassGovernanceRetention.hashCode);
    _$hash = $jc(_$hash, expectedBucketOwner.hashCode);
    _$hash = $jc(_$hash, checksumAlgorithm.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteObjectsRequestBuilder
    implements Builder<DeleteObjectsRequest, DeleteObjectsRequestBuilder> {
  _$DeleteObjectsRequest? _$v;

  String? _bucket;
  String? get bucket => _$this._bucket;
  set bucket(String? bucket) => _$this._bucket = bucket;

  DeleteBuilder? _delete;
  DeleteBuilder get delete => _$this._delete ??= new DeleteBuilder();
  set delete(DeleteBuilder? delete) => _$this._delete = delete;

  String? _mfa;
  String? get mfa => _$this._mfa;
  set mfa(String? mfa) => _$this._mfa = mfa;

  RequestPayer? _requestPayer;
  RequestPayer? get requestPayer => _$this._requestPayer;
  set requestPayer(RequestPayer? requestPayer) =>
      _$this._requestPayer = requestPayer;

  bool? _bypassGovernanceRetention;
  bool? get bypassGovernanceRetention => _$this._bypassGovernanceRetention;
  set bypassGovernanceRetention(bool? bypassGovernanceRetention) =>
      _$this._bypassGovernanceRetention = bypassGovernanceRetention;

  String? _expectedBucketOwner;
  String? get expectedBucketOwner => _$this._expectedBucketOwner;
  set expectedBucketOwner(String? expectedBucketOwner) =>
      _$this._expectedBucketOwner = expectedBucketOwner;

  ChecksumAlgorithm? _checksumAlgorithm;
  ChecksumAlgorithm? get checksumAlgorithm => _$this._checksumAlgorithm;
  set checksumAlgorithm(ChecksumAlgorithm? checksumAlgorithm) =>
      _$this._checksumAlgorithm = checksumAlgorithm;

  DeleteObjectsRequestBuilder();

  DeleteObjectsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bucket = $v.bucket;
      _delete = $v.delete.toBuilder();
      _mfa = $v.mfa;
      _requestPayer = $v.requestPayer;
      _bypassGovernanceRetention = $v.bypassGovernanceRetention;
      _expectedBucketOwner = $v.expectedBucketOwner;
      _checksumAlgorithm = $v.checksumAlgorithm;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteObjectsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteObjectsRequest;
  }

  @override
  void update(void Function(DeleteObjectsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteObjectsRequest build() => _build();

  _$DeleteObjectsRequest _build() {
    _$DeleteObjectsRequest _$result;
    try {
      _$result = _$v ??
          new _$DeleteObjectsRequest._(
              bucket: BuiltValueNullFieldError.checkNotNull(
                  bucket, r'DeleteObjectsRequest', 'bucket'),
              delete: delete.build(),
              mfa: mfa,
              requestPayer: requestPayer,
              bypassGovernanceRetention: bypassGovernanceRetention,
              expectedBucketOwner: expectedBucketOwner,
              checksumAlgorithm: checksumAlgorithm);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'delete';
        delete.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DeleteObjectsRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
