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
    var _$hash = 0;
    _$hash = $jc(_$hash, remediationConfigurations.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
