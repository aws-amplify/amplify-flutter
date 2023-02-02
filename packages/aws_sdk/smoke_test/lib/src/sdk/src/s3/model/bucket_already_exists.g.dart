// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.bucket_already_exists;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BucketAlreadyExists extends BucketAlreadyExists {
  @override
  final int? statusCode;
  @override
  final Map<String, String>? headers;

  factory _$BucketAlreadyExists(
          [void Function(BucketAlreadyExistsBuilder)? updates]) =>
      (new BucketAlreadyExistsBuilder()..update(updates))._build();

  _$BucketAlreadyExists._({this.statusCode, this.headers}) : super._();

  @override
  BucketAlreadyExists rebuild(
          void Function(BucketAlreadyExistsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BucketAlreadyExistsBuilder toBuilder() =>
      new BucketAlreadyExistsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BucketAlreadyExists;
  }

  @override
  int get hashCode {
    return 220123962;
  }
}

class BucketAlreadyExistsBuilder
    implements Builder<BucketAlreadyExists, BucketAlreadyExistsBuilder> {
  _$BucketAlreadyExists? _$v;

  int? _statusCode;
  int? get statusCode => _$this._statusCode;
  set statusCode(int? statusCode) => _$this._statusCode = statusCode;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  BucketAlreadyExistsBuilder() {
    BucketAlreadyExists._init(this);
  }

  BucketAlreadyExistsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _statusCode = $v.statusCode;
      _headers = $v.headers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BucketAlreadyExists other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BucketAlreadyExists;
  }

  @override
  void update(void Function(BucketAlreadyExistsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BucketAlreadyExists build() => _build();

  _$BucketAlreadyExists _build() {
    final _$result = _$v ??
        new _$BucketAlreadyExists._(statusCode: statusCode, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
