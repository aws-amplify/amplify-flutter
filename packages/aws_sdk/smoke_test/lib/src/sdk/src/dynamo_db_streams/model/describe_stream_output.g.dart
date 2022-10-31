// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db_streams.model.describe_stream_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeStreamOutput extends DescribeStreamOutput {
  @override
  final _i2.StreamDescription? streamDescription;

  factory _$DescribeStreamOutput(
          [void Function(DescribeStreamOutputBuilder)? updates]) =>
      (new DescribeStreamOutputBuilder()..update(updates))._build();

  _$DescribeStreamOutput._({this.streamDescription}) : super._();

  @override
  DescribeStreamOutput rebuild(
          void Function(DescribeStreamOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeStreamOutputBuilder toBuilder() =>
      new DescribeStreamOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeStreamOutput &&
        streamDescription == other.streamDescription;
  }

  @override
  int get hashCode {
    return $jf($jc(0, streamDescription.hashCode));
  }
}

class DescribeStreamOutputBuilder
    implements Builder<DescribeStreamOutput, DescribeStreamOutputBuilder> {
  _$DescribeStreamOutput? _$v;

  _i2.StreamDescriptionBuilder? _streamDescription;
  _i2.StreamDescriptionBuilder get streamDescription =>
      _$this._streamDescription ??= new _i2.StreamDescriptionBuilder();
  set streamDescription(_i2.StreamDescriptionBuilder? streamDescription) =>
      _$this._streamDescription = streamDescription;

  DescribeStreamOutputBuilder() {
    DescribeStreamOutput._init(this);
  }

  DescribeStreamOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _streamDescription = $v.streamDescription?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeStreamOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeStreamOutput;
  }

  @override
  void update(void Function(DescribeStreamOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeStreamOutput build() => _build();

  _$DescribeStreamOutput _build() {
    _$DescribeStreamOutput _$result;
    try {
      _$result = _$v ??
          new _$DescribeStreamOutput._(
              streamDescription: _streamDescription?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'streamDescription';
        _streamDescription?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeStreamOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
