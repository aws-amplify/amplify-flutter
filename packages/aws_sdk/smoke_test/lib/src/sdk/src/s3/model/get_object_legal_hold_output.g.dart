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
    var _$hash = 0;
    _$hash = $jc(_$hash, legalHold.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
