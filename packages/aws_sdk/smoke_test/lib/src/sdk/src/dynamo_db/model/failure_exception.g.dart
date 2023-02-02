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
    var _$hash = 0;
    _$hash = $jc(_$hash, exceptionDescription.hashCode);
    _$hash = $jc(_$hash, exceptionName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
