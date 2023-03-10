// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.describe_remediation_configurations_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeRemediationConfigurationsRequest
    extends DescribeRemediationConfigurationsRequest {
  @override
  final _i3.BuiltList<String> configRuleNames;

  factory _$DescribeRemediationConfigurationsRequest(
          [void Function(DescribeRemediationConfigurationsRequestBuilder)?
              updates]) =>
      (new DescribeRemediationConfigurationsRequestBuilder()..update(updates))
          ._build();

  _$DescribeRemediationConfigurationsRequest._({required this.configRuleNames})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(configRuleNames,
        r'DescribeRemediationConfigurationsRequest', 'configRuleNames');
  }

  @override
  DescribeRemediationConfigurationsRequest rebuild(
          void Function(DescribeRemediationConfigurationsRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeRemediationConfigurationsRequestBuilder toBuilder() =>
      new DescribeRemediationConfigurationsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeRemediationConfigurationsRequest &&
        configRuleNames == other.configRuleNames;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, configRuleNames.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeRemediationConfigurationsRequestBuilder
    implements
        Builder<DescribeRemediationConfigurationsRequest,
            DescribeRemediationConfigurationsRequestBuilder> {
  _$DescribeRemediationConfigurationsRequest? _$v;

  _i3.ListBuilder<String>? _configRuleNames;
  _i3.ListBuilder<String> get configRuleNames =>
      _$this._configRuleNames ??= new _i3.ListBuilder<String>();
  set configRuleNames(_i3.ListBuilder<String>? configRuleNames) =>
      _$this._configRuleNames = configRuleNames;

  DescribeRemediationConfigurationsRequestBuilder() {
    DescribeRemediationConfigurationsRequest._init(this);
  }

  DescribeRemediationConfigurationsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _configRuleNames = $v.configRuleNames.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeRemediationConfigurationsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeRemediationConfigurationsRequest;
  }

  @override
  void update(
      void Function(DescribeRemediationConfigurationsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeRemediationConfigurationsRequest build() => _build();

  _$DescribeRemediationConfigurationsRequest _build() {
    _$DescribeRemediationConfigurationsRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeRemediationConfigurationsRequest._(
              configRuleNames: configRuleNames.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'configRuleNames';
        configRuleNames.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeRemediationConfigurationsRequest',
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
