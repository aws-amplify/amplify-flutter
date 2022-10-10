// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.describe_remediation_configurations_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeRemediationConfigurationsResponse
    extends DescribeRemediationConfigurationsResponse {
  @override
  final _i3.BuiltList<_i2.RemediationConfiguration>? remediationConfigurations;

  factory _$DescribeRemediationConfigurationsResponse(
          [void Function(DescribeRemediationConfigurationsResponseBuilder)?
              updates]) =>
      (new DescribeRemediationConfigurationsResponseBuilder()..update(updates))
          ._build();

  _$DescribeRemediationConfigurationsResponse._(
      {this.remediationConfigurations})
      : super._();

  @override
  DescribeRemediationConfigurationsResponse rebuild(
          void Function(DescribeRemediationConfigurationsResponseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeRemediationConfigurationsResponseBuilder toBuilder() =>
      new DescribeRemediationConfigurationsResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeRemediationConfigurationsResponse &&
        remediationConfigurations == other.remediationConfigurations;
  }

  @override
  int get hashCode {
    return $jf($jc(0, remediationConfigurations.hashCode));
  }
}

class DescribeRemediationConfigurationsResponseBuilder
    implements
        Builder<DescribeRemediationConfigurationsResponse,
            DescribeRemediationConfigurationsResponseBuilder> {
  _$DescribeRemediationConfigurationsResponse? _$v;

  _i3.ListBuilder<_i2.RemediationConfiguration>? _remediationConfigurations;
  _i3.ListBuilder<_i2.RemediationConfiguration> get remediationConfigurations =>
      _$this._remediationConfigurations ??=
          new _i3.ListBuilder<_i2.RemediationConfiguration>();
  set remediationConfigurations(
          _i3.ListBuilder<_i2.RemediationConfiguration>?
              remediationConfigurations) =>
      _$this._remediationConfigurations = remediationConfigurations;

  DescribeRemediationConfigurationsResponseBuilder() {
    DescribeRemediationConfigurationsResponse._init(this);
  }

  DescribeRemediationConfigurationsResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _remediationConfigurations = $v.remediationConfigurations?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeRemediationConfigurationsResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeRemediationConfigurationsResponse;
  }

  @override
  void update(
      void Function(DescribeRemediationConfigurationsResponseBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeRemediationConfigurationsResponse build() => _build();

  _$DescribeRemediationConfigurationsResponse _build() {
    _$DescribeRemediationConfigurationsResponse _$result;
    try {
      _$result = _$v ??
          new _$DescribeRemediationConfigurationsResponse._(
              remediationConfigurations: _remediationConfigurations?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'remediationConfigurations';
        _remediationConfigurations?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeRemediationConfigurationsResponse',
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
