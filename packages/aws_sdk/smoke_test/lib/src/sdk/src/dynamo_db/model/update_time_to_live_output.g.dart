// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.update_time_to_live_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateTimeToLiveOutput extends UpdateTimeToLiveOutput {
  @override
  final _i2.TimeToLiveSpecification? timeToLiveSpecification;

  factory _$UpdateTimeToLiveOutput(
          [void Function(UpdateTimeToLiveOutputBuilder)? updates]) =>
      (new UpdateTimeToLiveOutputBuilder()..update(updates))._build();

  _$UpdateTimeToLiveOutput._({this.timeToLiveSpecification}) : super._();

  @override
  UpdateTimeToLiveOutput rebuild(
          void Function(UpdateTimeToLiveOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateTimeToLiveOutputBuilder toBuilder() =>
      new UpdateTimeToLiveOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateTimeToLiveOutput &&
        timeToLiveSpecification == other.timeToLiveSpecification;
  }

  @override
  int get hashCode {
    return $jf($jc(0, timeToLiveSpecification.hashCode));
  }
}

class UpdateTimeToLiveOutputBuilder
    implements Builder<UpdateTimeToLiveOutput, UpdateTimeToLiveOutputBuilder> {
  _$UpdateTimeToLiveOutput? _$v;

  _i2.TimeToLiveSpecificationBuilder? _timeToLiveSpecification;
  _i2.TimeToLiveSpecificationBuilder get timeToLiveSpecification =>
      _$this._timeToLiveSpecification ??=
          new _i2.TimeToLiveSpecificationBuilder();
  set timeToLiveSpecification(
          _i2.TimeToLiveSpecificationBuilder? timeToLiveSpecification) =>
      _$this._timeToLiveSpecification = timeToLiveSpecification;

  UpdateTimeToLiveOutputBuilder() {
    UpdateTimeToLiveOutput._init(this);
  }

  UpdateTimeToLiveOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _timeToLiveSpecification = $v.timeToLiveSpecification?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateTimeToLiveOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateTimeToLiveOutput;
  }

  @override
  void update(void Function(UpdateTimeToLiveOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateTimeToLiveOutput build() => _build();

  _$UpdateTimeToLiveOutput _build() {
    _$UpdateTimeToLiveOutput _$result;
    try {
      _$result = _$v ??
          new _$UpdateTimeToLiveOutput._(
              timeToLiveSpecification: _timeToLiveSpecification?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'timeToLiveSpecification';
        _timeToLiveSpecification?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UpdateTimeToLiveOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
