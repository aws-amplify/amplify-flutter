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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
