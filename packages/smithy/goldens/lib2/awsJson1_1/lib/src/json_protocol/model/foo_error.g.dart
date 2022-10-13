// GENERATED CODE - DO NOT MODIFY BY HAND

part of aws_json1_1_v2.json_protocol.model.foo_error;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FooError extends FooError {
  @override
  final int? statusCode;
  @override
  final Map<String, String>? headers;

  factory _$FooError([void Function(FooErrorBuilder)? updates]) =>
      (new FooErrorBuilder()..update(updates))._build();

  _$FooError._({this.statusCode, this.headers}) : super._();

  @override
  FooError rebuild(void Function(FooErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FooErrorBuilder toBuilder() => new FooErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FooError;
  }

  @override
  int get hashCode {
    return 445467195;
  }
}

class FooErrorBuilder implements Builder<FooError, FooErrorBuilder> {
  _$FooError? _$v;

  int? _statusCode;
  int? get statusCode => _$this._statusCode;
  set statusCode(int? statusCode) => _$this._statusCode = statusCode;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  FooErrorBuilder() {
    FooError._init(this);
  }

  FooErrorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _statusCode = $v.statusCode;
      _headers = $v.headers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FooError other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FooError;
  }

  @override
  void update(void Function(FooErrorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FooError build() => _build();

  _$FooError _build() {
    final _$result =
        _$v ?? new _$FooError._(statusCode: statusCode, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
