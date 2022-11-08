// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.get_object_legal_hold_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetObjectLegalHoldOutput extends GetObjectLegalHoldOutput {
  @override
  final _i3.ObjectLockLegalHold? legalHold;

  factory _$GetObjectLegalHoldOutput(
          [void Function(GetObjectLegalHoldOutputBuilder)? updates]) =>
      (new GetObjectLegalHoldOutputBuilder()..update(updates))._build();

  _$GetObjectLegalHoldOutput._({this.legalHold}) : super._();

  @override
  GetObjectLegalHoldOutput rebuild(
          void Function(GetObjectLegalHoldOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetObjectLegalHoldOutputBuilder toBuilder() =>
      new GetObjectLegalHoldOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetObjectLegalHoldOutput && legalHold == other.legalHold;
  }

  @override
  int get hashCode {
    return $jf($jc(0, legalHold.hashCode));
  }
}

class GetObjectLegalHoldOutputBuilder
    implements
        Builder<GetObjectLegalHoldOutput, GetObjectLegalHoldOutputBuilder> {
  _$GetObjectLegalHoldOutput? _$v;

  _i3.ObjectLockLegalHoldBuilder? _legalHold;
  _i3.ObjectLockLegalHoldBuilder get legalHold =>
      _$this._legalHold ??= new _i3.ObjectLockLegalHoldBuilder();
  set legalHold(_i3.ObjectLockLegalHoldBuilder? legalHold) =>
      _$this._legalHold = legalHold;

  GetObjectLegalHoldOutputBuilder() {
    GetObjectLegalHoldOutput._init(this);
  }

  GetObjectLegalHoldOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _legalHold = $v.legalHold?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetObjectLegalHoldOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetObjectLegalHoldOutput;
  }

  @override
  void update(void Function(GetObjectLegalHoldOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetObjectLegalHoldOutput build() => _build();

  _$GetObjectLegalHoldOutput _build() {
    _$GetObjectLegalHoldOutput _$result;
    try {
      _$result = _$v ??
          new _$GetObjectLegalHoldOutput._(legalHold: _legalHold?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'legalHold';
        _legalHold?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetObjectLegalHoldOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
