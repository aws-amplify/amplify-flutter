// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.failure_exception;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FailureException extends FailureException {
  @override
  final String? exceptionDescription;
  @override
  final String? exceptionName;

  factory _$FailureException(
          [void Function(FailureExceptionBuilder)? updates]) =>
      (new FailureExceptionBuilder()..update(updates))._build();

  _$FailureException._({this.exceptionDescription, this.exceptionName})
      : super._();

  @override
  FailureException rebuild(void Function(FailureExceptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FailureExceptionBuilder toBuilder() =>
      new FailureExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FailureException &&
        exceptionDescription == other.exceptionDescription &&
        exceptionName == other.exceptionName;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc(0, exceptionDescription.hashCode), exceptionName.hashCode));
  }
}

class FailureExceptionBuilder
    implements Builder<FailureException, FailureExceptionBuilder> {
  _$FailureException? _$v;

  String? _exceptionDescription;
  String? get exceptionDescription => _$this._exceptionDescription;
  set exceptionDescription(String? exceptionDescription) =>
      _$this._exceptionDescription = exceptionDescription;

  String? _exceptionName;
  String? get exceptionName => _$this._exceptionName;
  set exceptionName(String? exceptionName) =>
      _$this._exceptionName = exceptionName;

  FailureExceptionBuilder() {
    FailureException._init(this);
  }

  FailureExceptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _exceptionDescription = $v.exceptionDescription;
      _exceptionName = $v.exceptionName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FailureException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FailureException;
  }

  @override
  void update(void Function(FailureExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FailureException build() => _build();

  _$FailureException _build() {
    final _$result = _$v ??
        new _$FailureException._(
            exceptionDescription: exceptionDescription,
            exceptionName: exceptionName);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
