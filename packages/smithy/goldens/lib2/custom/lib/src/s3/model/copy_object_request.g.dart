// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'copy_object_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CopyObjectRequest extends CopyObjectRequest {
  @override
  final String bucket;
  @override
  final String copySource;
  @override
  final String key;

  factory _$CopyObjectRequest([
    void Function(CopyObjectRequestBuilder)? updates,
  ]) => (CopyObjectRequestBuilder()..update(updates))._build();

  _$CopyObjectRequest._({
    required this.bucket,
    required this.copySource,
    required this.key,
  }) : super._();
  @override
  CopyObjectRequest rebuild(void Function(CopyObjectRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CopyObjectRequestBuilder toBuilder() =>
      CopyObjectRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CopyObjectRequest &&
        bucket == other.bucket &&
        copySource == other.copySource &&
        key == other.key;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, bucket.hashCode);
    _$hash = $jc(_$hash, copySource.hashCode);
    _$hash = $jc(_$hash, key.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CopyObjectRequestBuilder
    implements Builder<CopyObjectRequest, CopyObjectRequestBuilder> {
  _$CopyObjectRequest? _$v;

  String? _bucket;
  String? get bucket => _$this._bucket;
  set bucket(String? bucket) => _$this._bucket = bucket;

  String? _copySource;
  String? get copySource => _$this._copySource;
  set copySource(String? copySource) => _$this._copySource = copySource;

  String? _key;
  String? get key => _$this._key;
  set key(String? key) => _$this._key = key;

  CopyObjectRequestBuilder();

  CopyObjectRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bucket = $v.bucket;
      _copySource = $v.copySource;
      _key = $v.key;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CopyObjectRequest other) {
    _$v = other as _$CopyObjectRequest;
  }

  @override
  void update(void Function(CopyObjectRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CopyObjectRequest build() => _build();

  _$CopyObjectRequest _build() {
    final _$result =
        _$v ??
        _$CopyObjectRequest._(
          bucket: BuiltValueNullFieldError.checkNotNull(
            bucket,
            r'CopyObjectRequest',
            'bucket',
          ),
          copySource: BuiltValueNullFieldError.checkNotNull(
            copySource,
            r'CopyObjectRequest',
            'copySource',
          ),
          key: BuiltValueNullFieldError.checkNotNull(
            key,
            r'CopyObjectRequest',
            'key',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

class _$CopyObjectRequestPayload extends CopyObjectRequestPayload {
  factory _$CopyObjectRequestPayload([
    void Function(CopyObjectRequestPayloadBuilder)? updates,
  ]) => (CopyObjectRequestPayloadBuilder()..update(updates))._build();

  _$CopyObjectRequestPayload._() : super._();
  @override
  CopyObjectRequestPayload rebuild(
    void Function(CopyObjectRequestPayloadBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  CopyObjectRequestPayloadBuilder toBuilder() =>
      CopyObjectRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CopyObjectRequestPayload;
  }

  @override
  int get hashCode {
    return 528129857;
  }
}

class CopyObjectRequestPayloadBuilder
    implements
        Builder<CopyObjectRequestPayload, CopyObjectRequestPayloadBuilder> {
  _$CopyObjectRequestPayload? _$v;

  CopyObjectRequestPayloadBuilder();

  @override
  void replace(CopyObjectRequestPayload other) {
    _$v = other as _$CopyObjectRequestPayload;
  }

  @override
  void update(void Function(CopyObjectRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CopyObjectRequestPayload build() => _build();

  _$CopyObjectRequestPayload _build() {
    final _$result = _$v ?? _$CopyObjectRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
