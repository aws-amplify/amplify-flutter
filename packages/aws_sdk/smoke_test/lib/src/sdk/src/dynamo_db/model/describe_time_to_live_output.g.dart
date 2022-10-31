// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.describe_time_to_live_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeTimeToLiveOutput extends DescribeTimeToLiveOutput {
  @override
  final _i2.TimeToLiveDescription? timeToLiveDescription;

  factory _$DescribeTimeToLiveOutput(
          [void Function(DescribeTimeToLiveOutputBuilder)? updates]) =>
      (new DescribeTimeToLiveOutputBuilder()..update(updates))._build();

  _$DescribeTimeToLiveOutput._({this.timeToLiveDescription}) : super._();

  @override
  DescribeTimeToLiveOutput rebuild(
          void Function(DescribeTimeToLiveOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeTimeToLiveOutputBuilder toBuilder() =>
      new DescribeTimeToLiveOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeTimeToLiveOutput &&
        timeToLiveDescription == other.timeToLiveDescription;
  }

  @override
  int get hashCode {
    return $jf($jc(0, timeToLiveDescription.hashCode));
  }
}

class DescribeTimeToLiveOutputBuilder
    implements
        Builder<DescribeTimeToLiveOutput, DescribeTimeToLiveOutputBuilder> {
  _$DescribeTimeToLiveOutput? _$v;

  _i2.TimeToLiveDescriptionBuilder? _timeToLiveDescription;
  _i2.TimeToLiveDescriptionBuilder get timeToLiveDescription =>
      _$this._timeToLiveDescription ??= new _i2.TimeToLiveDescriptionBuilder();
  set timeToLiveDescription(
          _i2.TimeToLiveDescriptionBuilder? timeToLiveDescription) =>
      _$this._timeToLiveDescription = timeToLiveDescription;

  DescribeTimeToLiveOutputBuilder() {
    DescribeTimeToLiveOutput._init(this);
  }

  DescribeTimeToLiveOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _timeToLiveDescription = $v.timeToLiveDescription?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeTimeToLiveOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeTimeToLiveOutput;
  }

  @override
  void update(void Function(DescribeTimeToLiveOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeTimeToLiveOutput build() => _build();

  _$DescribeTimeToLiveOutput _build() {
    _$DescribeTimeToLiveOutput _$result;
    try {
      _$result = _$v ??
          new _$DescribeTimeToLiveOutput._(
              timeToLiveDescription: _timeToLiveDescription?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'timeToLiveDescription';
        _timeToLiveDescription?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeTimeToLiveOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
