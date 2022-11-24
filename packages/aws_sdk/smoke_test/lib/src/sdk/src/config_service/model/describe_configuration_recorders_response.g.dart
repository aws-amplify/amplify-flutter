// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.describe_configuration_recorders_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeConfigurationRecordersResponse
    extends DescribeConfigurationRecordersResponse {
  @override
  final _i3.BuiltList<_i2.ConfigurationRecorder>? configurationRecorders;

  factory _$DescribeConfigurationRecordersResponse(
          [void Function(DescribeConfigurationRecordersResponseBuilder)?
              updates]) =>
      (new DescribeConfigurationRecordersResponseBuilder()..update(updates))
          ._build();

  _$DescribeConfigurationRecordersResponse._({this.configurationRecorders})
      : super._();

  @override
  DescribeConfigurationRecordersResponse rebuild(
          void Function(DescribeConfigurationRecordersResponseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeConfigurationRecordersResponseBuilder toBuilder() =>
      new DescribeConfigurationRecordersResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeConfigurationRecordersResponse &&
        configurationRecorders == other.configurationRecorders;
  }

  @override
  int get hashCode {
    return $jf($jc(0, configurationRecorders.hashCode));
  }
}

class DescribeConfigurationRecordersResponseBuilder
    implements
        Builder<DescribeConfigurationRecordersResponse,
            DescribeConfigurationRecordersResponseBuilder> {
  _$DescribeConfigurationRecordersResponse? _$v;

  _i3.ListBuilder<_i2.ConfigurationRecorder>? _configurationRecorders;
  _i3.ListBuilder<_i2.ConfigurationRecorder> get configurationRecorders =>
      _$this._configurationRecorders ??=
          new _i3.ListBuilder<_i2.ConfigurationRecorder>();
  set configurationRecorders(
          _i3.ListBuilder<_i2.ConfigurationRecorder>? configurationRecorders) =>
      _$this._configurationRecorders = configurationRecorders;

  DescribeConfigurationRecordersResponseBuilder() {
    DescribeConfigurationRecordersResponse._init(this);
  }

  DescribeConfigurationRecordersResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _configurationRecorders = $v.configurationRecorders?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeConfigurationRecordersResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeConfigurationRecordersResponse;
  }

  @override
  void update(
      void Function(DescribeConfigurationRecordersResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeConfigurationRecordersResponse build() => _build();

  _$DescribeConfigurationRecordersResponse _build() {
    _$DescribeConfigurationRecordersResponse _$result;
    try {
      _$result = _$v ??
          new _$DescribeConfigurationRecordersResponse._(
              configurationRecorders: _configurationRecorders?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'configurationRecorders';
        _configurationRecorders?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeConfigurationRecordersResponse',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
