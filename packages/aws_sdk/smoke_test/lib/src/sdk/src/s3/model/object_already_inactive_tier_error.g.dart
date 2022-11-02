// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.object_already_inactive_tier_error;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ObjectAlreadyInactiveTierError extends ObjectAlreadyInactiveTierError {
  @override
  final int? statusCode;
  @override
  final Map<String, String>? headers;

  factory _$ObjectAlreadyInactiveTierError(
          [void Function(ObjectAlreadyInactiveTierErrorBuilder)? updates]) =>
      (new ObjectAlreadyInactiveTierErrorBuilder()..update(updates))._build();

  _$ObjectAlreadyInactiveTierError._({this.statusCode, this.headers})
      : super._();

  @override
  ObjectAlreadyInactiveTierError rebuild(
          void Function(ObjectAlreadyInactiveTierErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ObjectAlreadyInactiveTierErrorBuilder toBuilder() =>
      new ObjectAlreadyInactiveTierErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ObjectAlreadyInactiveTierError;
  }

  @override
  int get hashCode {
    return 1042711125;
  }
}

class ObjectAlreadyInactiveTierErrorBuilder
    implements
        Builder<ObjectAlreadyInactiveTierError,
            ObjectAlreadyInactiveTierErrorBuilder> {
  _$ObjectAlreadyInactiveTierError? _$v;

  int? _statusCode;
  int? get statusCode => _$this._statusCode;
  set statusCode(int? statusCode) => _$this._statusCode = statusCode;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  ObjectAlreadyInactiveTierErrorBuilder() {
    ObjectAlreadyInactiveTierError._init(this);
  }

  ObjectAlreadyInactiveTierErrorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _statusCode = $v.statusCode;
      _headers = $v.headers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ObjectAlreadyInactiveTierError other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ObjectAlreadyInactiveTierError;
  }

  @override
  void update(void Function(ObjectAlreadyInactiveTierErrorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ObjectAlreadyInactiveTierError build() => _build();

  _$ObjectAlreadyInactiveTierError _build() {
    final _$result = _$v ??
        new _$ObjectAlreadyInactiveTierError._(
            statusCode: statusCode, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
