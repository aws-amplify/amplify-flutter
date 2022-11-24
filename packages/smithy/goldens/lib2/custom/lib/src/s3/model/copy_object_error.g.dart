// GENERATED CODE - DO NOT MODIFY BY HAND

part of custom_v2.s3.model.copy_object_error;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CopyObjectError extends CopyObjectError {
  @override
  final Map<String, String>? headers;

  factory _$CopyObjectError([void Function(CopyObjectErrorBuilder)? updates]) =>
      (new CopyObjectErrorBuilder()..update(updates))._build();

  _$CopyObjectError._({this.headers}) : super._();

  @override
  CopyObjectError rebuild(void Function(CopyObjectErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CopyObjectErrorBuilder toBuilder() =>
      new CopyObjectErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CopyObjectError;
  }

  @override
  int get hashCode {
    return 1014735209;
  }
}

class CopyObjectErrorBuilder
    implements Builder<CopyObjectError, CopyObjectErrorBuilder> {
  _$CopyObjectError? _$v;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  CopyObjectErrorBuilder() {
    CopyObjectError._init(this);
  }

  CopyObjectErrorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _headers = $v.headers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CopyObjectError other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CopyObjectError;
  }

  @override
  void update(void Function(CopyObjectErrorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CopyObjectError build() => _build();

  _$CopyObjectError _build() {
    final _$result = _$v ?? new _$CopyObjectError._(headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
