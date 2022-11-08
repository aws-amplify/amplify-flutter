// GENERATED CODE - DO NOT MODIFY BY HAND

part of custom_v2.s3.model.copy_object_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CopyObjectOutput extends CopyObjectOutput {
  @override
  final _i3.CopyObjectResult? copyObjectResult;

  factory _$CopyObjectOutput(
          [void Function(CopyObjectOutputBuilder)? updates]) =>
      (new CopyObjectOutputBuilder()..update(updates))._build();

  _$CopyObjectOutput._({this.copyObjectResult}) : super._();

  @override
  CopyObjectOutput rebuild(void Function(CopyObjectOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CopyObjectOutputBuilder toBuilder() =>
      new CopyObjectOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CopyObjectOutput &&
        copyObjectResult == other.copyObjectResult;
  }

  @override
  int get hashCode {
    return $jf($jc(0, copyObjectResult.hashCode));
  }
}

class CopyObjectOutputBuilder
    implements Builder<CopyObjectOutput, CopyObjectOutputBuilder> {
  _$CopyObjectOutput? _$v;

  _i3.CopyObjectResultBuilder? _copyObjectResult;
  _i3.CopyObjectResultBuilder get copyObjectResult =>
      _$this._copyObjectResult ??= new _i3.CopyObjectResultBuilder();
  set copyObjectResult(_i3.CopyObjectResultBuilder? copyObjectResult) =>
      _$this._copyObjectResult = copyObjectResult;

  CopyObjectOutputBuilder() {
    CopyObjectOutput._init(this);
  }

  CopyObjectOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _copyObjectResult = $v.copyObjectResult?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CopyObjectOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CopyObjectOutput;
  }

  @override
  void update(void Function(CopyObjectOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CopyObjectOutput build() => _build();

  _$CopyObjectOutput _build() {
    _$CopyObjectOutput _$result;
    try {
      _$result = _$v ??
          new _$CopyObjectOutput._(
              copyObjectResult: _copyObjectResult?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'copyObjectResult';
        _copyObjectResult?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CopyObjectOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
