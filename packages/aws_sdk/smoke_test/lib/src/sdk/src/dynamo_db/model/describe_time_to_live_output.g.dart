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
    var _$hash = 0;
    _$hash = $jc(_$hash, timeToLiveDescription.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
