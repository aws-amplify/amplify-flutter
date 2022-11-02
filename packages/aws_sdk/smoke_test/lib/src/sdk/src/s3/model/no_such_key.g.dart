// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.no_such_key;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NoSuchKey extends NoSuchKey {
  @override
  final int? statusCode;
  @override
  final Map<String, String>? headers;

  factory _$NoSuchKey([void Function(NoSuchKeyBuilder)? updates]) =>
      (new NoSuchKeyBuilder()..update(updates))._build();

  _$NoSuchKey._({this.statusCode, this.headers}) : super._();

  @override
  NoSuchKey rebuild(void Function(NoSuchKeyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NoSuchKeyBuilder toBuilder() => new NoSuchKeyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NoSuchKey;
  }

  @override
  int get hashCode {
    return 1056034675;
  }
}

class NoSuchKeyBuilder implements Builder<NoSuchKey, NoSuchKeyBuilder> {
  _$NoSuchKey? _$v;

  int? _statusCode;
  int? get statusCode => _$this._statusCode;
  set statusCode(int? statusCode) => _$this._statusCode = statusCode;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  NoSuchKeyBuilder() {
    NoSuchKey._init(this);
  }

  NoSuchKeyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _statusCode = $v.statusCode;
      _headers = $v.headers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NoSuchKey other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NoSuchKey;
  }

  @override
  void update(void Function(NoSuchKeyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NoSuchKey build() => _build();

  _$NoSuchKey _build() {
    final _$result =
        _$v ?? new _$NoSuchKey._(statusCode: statusCode, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
