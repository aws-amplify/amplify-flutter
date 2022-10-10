// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.describe_configuration_recorders_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeConfigurationRecordersRequest
    extends DescribeConfigurationRecordersRequest {
  @override
  final _i3.BuiltList<String>? configurationRecorderNames;

  factory _$DescribeConfigurationRecordersRequest(
          [void Function(DescribeConfigurationRecordersRequestBuilder)?
              updates]) =>
      (new DescribeConfigurationRecordersRequestBuilder()..update(updates))
          ._build();

  _$DescribeConfigurationRecordersRequest._({this.configurationRecorderNames})
      : super._();

  @override
  DescribeConfigurationRecordersRequest rebuild(
          void Function(DescribeConfigurationRecordersRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeConfigurationRecordersRequestBuilder toBuilder() =>
      new DescribeConfigurationRecordersRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeConfigurationRecordersRequest &&
        configurationRecorderNames == other.configurationRecorderNames;
  }

  @override
  int get hashCode {
    return $jf($jc(0, configurationRecorderNames.hashCode));
  }
}

class DescribeConfigurationRecordersRequestBuilder
    implements
        Builder<DescribeConfigurationRecordersRequest,
            DescribeConfigurationRecordersRequestBuilder> {
  _$DescribeConfigurationRecordersRequest? _$v;

  _i3.ListBuilder<String>? _configurationRecorderNames;
  _i3.ListBuilder<String> get configurationRecorderNames =>
      _$this._configurationRecorderNames ??= new _i3.ListBuilder<String>();
  set configurationRecorderNames(
          _i3.ListBuilder<String>? configurationRecorderNames) =>
      _$this._configurationRecorderNames = configurationRecorderNames;

  DescribeConfigurationRecordersRequestBuilder() {
    DescribeConfigurationRecordersRequest._init(this);
  }

  DescribeConfigurationRecordersRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _configurationRecorderNames = $v.configurationRecorderNames?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeConfigurationRecordersRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeConfigurationRecordersRequest;
  }

  @override
  void update(
      void Function(DescribeConfigurationRecordersRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeConfigurationRecordersRequest build() => _build();

  _$DescribeConfigurationRecordersRequest _build() {
    _$DescribeConfigurationRecordersRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeConfigurationRecordersRequest._(
              configurationRecorderNames: _configurationRecorderNames?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'configurationRecorderNames';
        _configurationRecorderNames?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeConfigurationRecordersRequest',
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
