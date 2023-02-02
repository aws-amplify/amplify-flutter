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
    var _$hash = 0;
    _$hash = $jc(_$hash, timeToLiveSpecification.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
