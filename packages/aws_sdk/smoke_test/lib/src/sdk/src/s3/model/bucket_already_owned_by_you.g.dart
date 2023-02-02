// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.bucket_already_owned_by_you;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BucketAlreadyOwnedByYou extends BucketAlreadyOwnedByYou {
  @override
  final int? statusCode;
  @override
  final Map<String, String>? headers;

  factory _$BucketAlreadyOwnedByYou(
          [void Function(BucketAlreadyOwnedByYouBuilder)? updates]) =>
      (new BucketAlreadyOwnedByYouBuilder()..update(updates))._build();

  _$BucketAlreadyOwnedByYou._({this.statusCode, this.headers}) : super._();

  @override
  BucketAlreadyOwnedByYou rebuild(
          void Function(BucketAlreadyOwnedByYouBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BucketAlreadyOwnedByYouBuilder toBuilder() =>
      new BucketAlreadyOwnedByYouBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BucketAlreadyOwnedByYou;
  }

  @override
  int get hashCode {
    return 95224915;
  }
}

class BucketAlreadyOwnedByYouBuilder
    implements
        Builder<BucketAlreadyOwnedByYou, BucketAlreadyOwnedByYouBuilder> {
  _$BucketAlreadyOwnedByYou? _$v;

  int? _statusCode;
  int? get statusCode => _$this._statusCode;
  set statusCode(int? statusCode) => _$this._statusCode = statusCode;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  BucketAlreadyOwnedByYouBuilder() {
    BucketAlreadyOwnedByYou._init(this);
  }

  BucketAlreadyOwnedByYouBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _statusCode = $v.statusCode;
      _headers = $v.headers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BucketAlreadyOwnedByYou other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BucketAlreadyOwnedByYou;
  }

  @override
  void update(void Function(BucketAlreadyOwnedByYouBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BucketAlreadyOwnedByYou build() => _build();

  _$BucketAlreadyOwnedByYou _build() {
    final _$result = _$v ??
        new _$BucketAlreadyOwnedByYou._(
            statusCode: statusCode, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
