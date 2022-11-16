// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_storage_s3_dart.s3.model.no_such_bucket;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NoSuchBucket extends NoSuchBucket {
  @override
  final int? statusCode;
  @override
  final Map<String, String>? headers;

  factory _$NoSuchBucket([void Function(NoSuchBucketBuilder)? updates]) =>
      (new NoSuchBucketBuilder()..update(updates))._build();

  _$NoSuchBucket._({this.statusCode, this.headers}) : super._();

  @override
  NoSuchBucket rebuild(void Function(NoSuchBucketBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NoSuchBucketBuilder toBuilder() => new NoSuchBucketBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NoSuchBucket;
  }

  @override
  int get hashCode {
    return 317849630;
  }
}

class NoSuchBucketBuilder
    implements Builder<NoSuchBucket, NoSuchBucketBuilder> {
  _$NoSuchBucket? _$v;

  int? _statusCode;
  int? get statusCode => _$this._statusCode;
  set statusCode(int? statusCode) => _$this._statusCode = statusCode;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  NoSuchBucketBuilder() {
    NoSuchBucket._init(this);
  }

  NoSuchBucketBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _statusCode = $v.statusCode;
      _headers = $v.headers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NoSuchBucket other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NoSuchBucket;
  }

  @override
  void update(void Function(NoSuchBucketBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NoSuchBucket build() => _build();

  _$NoSuchBucket _build() {
    final _$result =
        _$v ?? new _$NoSuchBucket._(statusCode: statusCode, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
