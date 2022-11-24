// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_storage_s3_dart.s3.model.not_found;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NotFound extends NotFound {
  @override
  final int? statusCode;
  @override
  final Map<String, String>? headers;

  factory _$NotFound([void Function(NotFoundBuilder)? updates]) =>
      (new NotFoundBuilder()..update(updates))._build();

  _$NotFound._({this.statusCode, this.headers}) : super._();

  @override
  NotFound rebuild(void Function(NotFoundBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NotFoundBuilder toBuilder() => new NotFoundBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NotFound;
  }

  @override
  int get hashCode {
    return 538792363;
  }
}

class NotFoundBuilder implements Builder<NotFound, NotFoundBuilder> {
  _$NotFound? _$v;

  int? _statusCode;
  int? get statusCode => _$this._statusCode;
  set statusCode(int? statusCode) => _$this._statusCode = statusCode;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  NotFoundBuilder() {
    NotFound._init(this);
  }

  NotFoundBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _statusCode = $v.statusCode;
      _headers = $v.headers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NotFound other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NotFound;
  }

  @override
  void update(void Function(NotFoundBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NotFound build() => _build();

  _$NotFound _build() {
    final _$result =
        _$v ?? new _$NotFound._(statusCode: statusCode, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
