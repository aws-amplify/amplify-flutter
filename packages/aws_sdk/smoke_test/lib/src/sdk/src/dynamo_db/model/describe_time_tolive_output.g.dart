// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.describe_time_tolive_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeTimeToliveOutput extends DescribeTimeToliveOutput {
  @override
  final _i2.TimeToliveDescription? timeToliveDescription;

  factory _$DescribeTimeToliveOutput(
          [void Function(DescribeTimeToliveOutputBuilder)? updates]) =>
      (new DescribeTimeToliveOutputBuilder()..update(updates))._build();

  _$DescribeTimeToliveOutput._({this.timeToliveDescription}) : super._();

  @override
  DescribeTimeToliveOutput rebuild(
          void Function(DescribeTimeToliveOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeTimeToliveOutputBuilder toBuilder() =>
      new DescribeTimeToliveOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeTimeToliveOutput &&
        timeToliveDescription == other.timeToliveDescription;
  }

  @override
  int get hashCode {
    return $jf($jc(0, timeToliveDescription.hashCode));
  }
}

class DescribeTimeToliveOutputBuilder
    implements
        Builder<DescribeTimeToliveOutput, DescribeTimeToliveOutputBuilder> {
  _$DescribeTimeToliveOutput? _$v;

  _i2.TimeToliveDescriptionBuilder? _timeToliveDescription;
  _i2.TimeToliveDescriptionBuilder get timeToliveDescription =>
      _$this._timeToliveDescription ??= new _i2.TimeToliveDescriptionBuilder();
  set timeToliveDescription(
          _i2.TimeToliveDescriptionBuilder? timeToliveDescription) =>
      _$this._timeToliveDescription = timeToliveDescription;

  DescribeTimeToliveOutputBuilder() {
    DescribeTimeToliveOutput._init(this);
  }

  DescribeTimeToliveOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _timeToliveDescription = $v.timeToliveDescription?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeTimeToliveOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeTimeToliveOutput;
  }

  @override
  void update(void Function(DescribeTimeToliveOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeTimeToliveOutput build() => _build();

  _$DescribeTimeToliveOutput _build() {
    _$DescribeTimeToliveOutput _$result;
    try {
      _$result = _$v ??
          new _$DescribeTimeToliveOutput._(
              timeToliveDescription: _timeToliveDescription?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'timeToliveDescription';
        _timeToliveDescription?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeTimeToliveOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
