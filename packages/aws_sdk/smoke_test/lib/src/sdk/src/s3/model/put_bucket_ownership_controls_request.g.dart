// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.put_bucket_ownership_controls_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PutBucketOwnershipControlsRequest
    extends PutBucketOwnershipControlsRequest {
  @override
  final String bucket;
  @override
  final String? contentMd5;
  @override
  final String? expectedBucketOwner;
  @override
  final _i2.OwnershipControls ownershipControls;

  factory _$PutBucketOwnershipControlsRequest(
          [void Function(PutBucketOwnershipControlsRequestBuilder)? updates]) =>
      (new PutBucketOwnershipControlsRequestBuilder()..update(updates))
          ._build();

  _$PutBucketOwnershipControlsRequest._(
      {required this.bucket,
      this.contentMd5,
      this.expectedBucketOwner,
      required this.ownershipControls})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        bucket, r'PutBucketOwnershipControlsRequest', 'bucket');
    BuiltValueNullFieldError.checkNotNull(ownershipControls,
        r'PutBucketOwnershipControlsRequest', 'ownershipControls');
  }

  @override
  PutBucketOwnershipControlsRequest rebuild(
          void Function(PutBucketOwnershipControlsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PutBucketOwnershipControlsRequestBuilder toBuilder() =>
      new PutBucketOwnershipControlsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PutBucketOwnershipControlsRequest &&
        bucket == other.bucket &&
        contentMd5 == other.contentMd5 &&
        expectedBucketOwner == other.expectedBucketOwner &&
        ownershipControls == other.ownershipControls;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, bucket.hashCode), contentMd5.hashCode),
            expectedBucketOwner.hashCode),
        ownershipControls.hashCode));
  }
}

class PutBucketOwnershipControlsRequestBuilder
    implements
        Builder<PutBucketOwnershipControlsRequest,
            PutBucketOwnershipControlsRequestBuilder> {
  _$PutBucketOwnershipControlsRequest? _$v;

  String? _bucket;
  String? get bucket => _$this._bucket;
  set bucket(String? bucket) => _$this._bucket = bucket;

  String? _contentMd5;
  String? get contentMd5 => _$this._contentMd5;
  set contentMd5(String? contentMd5) => _$this._contentMd5 = contentMd5;

  String? _expectedBucketOwner;
  String? get expectedBucketOwner => _$this._expectedBucketOwner;
  set expectedBucketOwner(String? expectedBucketOwner) =>
      _$this._expectedBucketOwner = expectedBucketOwner;

  _i2.OwnershipControlsBuilder? _ownershipControls;
  _i2.OwnershipControlsBuilder get ownershipControls =>
      _$this._ownershipControls ??= new _i2.OwnershipControlsBuilder();
  set ownershipControls(_i2.OwnershipControlsBuilder? ownershipControls) =>
      _$this._ownershipControls = ownershipControls;

  PutBucketOwnershipControlsRequestBuilder() {
    PutBucketOwnershipControlsRequest._init(this);
  }

  PutBucketOwnershipControlsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bucket = $v.bucket;
      _contentMd5 = $v.contentMd5;
      _expectedBucketOwner = $v.expectedBucketOwner;
      _ownershipControls = $v.ownershipControls.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PutBucketOwnershipControlsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PutBucketOwnershipControlsRequest;
  }

  @override
  void update(
      void Function(PutBucketOwnershipControlsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PutBucketOwnershipControlsRequest build() => _build();

  _$PutBucketOwnershipControlsRequest _build() {
    _$PutBucketOwnershipControlsRequest _$result;
    try {
      _$result = _$v ??
          new _$PutBucketOwnershipControlsRequest._(
              bucket: BuiltValueNullFieldError.checkNotNull(
                  bucket, r'PutBucketOwnershipControlsRequest', 'bucket'),
              contentMd5: contentMd5,
              expectedBucketOwner: expectedBucketOwner,
              ownershipControls: ownershipControls.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'ownershipControls';
        ownershipControls.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PutBucketOwnershipControlsRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
