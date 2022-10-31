// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.get_object_retention_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetObjectRetentionOutput extends GetObjectRetentionOutput {
  @override
  final _i3.ObjectLockRetention? retention;

  factory _$GetObjectRetentionOutput(
          [void Function(GetObjectRetentionOutputBuilder)? updates]) =>
      (new GetObjectRetentionOutputBuilder()..update(updates))._build();

  _$GetObjectRetentionOutput._({this.retention}) : super._();

  @override
  GetObjectRetentionOutput rebuild(
          void Function(GetObjectRetentionOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetObjectRetentionOutputBuilder toBuilder() =>
      new GetObjectRetentionOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetObjectRetentionOutput && retention == other.retention;
  }

  @override
  int get hashCode {
    return $jf($jc(0, retention.hashCode));
  }
}

class GetObjectRetentionOutputBuilder
    implements
        Builder<GetObjectRetentionOutput, GetObjectRetentionOutputBuilder> {
  _$GetObjectRetentionOutput? _$v;

  _i3.ObjectLockRetentionBuilder? _retention;
  _i3.ObjectLockRetentionBuilder get retention =>
      _$this._retention ??= new _i3.ObjectLockRetentionBuilder();
  set retention(_i3.ObjectLockRetentionBuilder? retention) =>
      _$this._retention = retention;

  GetObjectRetentionOutputBuilder() {
    GetObjectRetentionOutput._init(this);
  }

  GetObjectRetentionOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _retention = $v.retention?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetObjectRetentionOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetObjectRetentionOutput;
  }

  @override
  void update(void Function(GetObjectRetentionOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetObjectRetentionOutput build() => _build();

  _$GetObjectRetentionOutput _build() {
    _$GetObjectRetentionOutput _$result;
    try {
      _$result = _$v ??
          new _$GetObjectRetentionOutput._(retention: _retention?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'retention';
        _retention?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetObjectRetentionOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
