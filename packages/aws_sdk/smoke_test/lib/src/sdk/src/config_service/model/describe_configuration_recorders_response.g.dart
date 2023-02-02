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
    var _$hash = 0;
    _$hash = $jc(_$hash, configurationRecorders.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
