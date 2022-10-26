// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.describe_retention_configurations_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeRetentionConfigurationsResponse
    extends DescribeRetentionConfigurationsResponse {
  @override
  final String? nextToken;
  @override
  final _i3.BuiltList<_i2.RetentionConfiguration>? retentionConfigurations;

  factory _$DescribeRetentionConfigurationsResponse(
          [void Function(DescribeRetentionConfigurationsResponseBuilder)?
              updates]) =>
      (new DescribeRetentionConfigurationsResponseBuilder()..update(updates))
          ._build();

  _$DescribeRetentionConfigurationsResponse._(
      {this.nextToken, this.retentionConfigurations})
      : super._();

  @override
  DescribeRetentionConfigurationsResponse rebuild(
          void Function(DescribeRetentionConfigurationsResponseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeRetentionConfigurationsResponseBuilder toBuilder() =>
      new DescribeRetentionConfigurationsResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeRetentionConfigurationsResponse &&
        nextToken == other.nextToken &&
        retentionConfigurations == other.retentionConfigurations;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc(0, nextToken.hashCode), retentionConfigurations.hashCode));
  }
}

class DescribeRetentionConfigurationsResponseBuilder
    implements
        Builder<DescribeRetentionConfigurationsResponse,
            DescribeRetentionConfigurationsResponseBuilder> {
  _$DescribeRetentionConfigurationsResponse? _$v;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  _i3.ListBuilder<_i2.RetentionConfiguration>? _retentionConfigurations;
  _i3.ListBuilder<_i2.RetentionConfiguration> get retentionConfigurations =>
      _$this._retentionConfigurations ??=
          new _i3.ListBuilder<_i2.RetentionConfiguration>();
  set retentionConfigurations(
          _i3.ListBuilder<_i2.RetentionConfiguration>?
              retentionConfigurations) =>
      _$this._retentionConfigurations = retentionConfigurations;

  DescribeRetentionConfigurationsResponseBuilder() {
    DescribeRetentionConfigurationsResponse._init(this);
  }

  DescribeRetentionConfigurationsResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nextToken = $v.nextToken;
      _retentionConfigurations = $v.retentionConfigurations?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeRetentionConfigurationsResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeRetentionConfigurationsResponse;
  }

  @override
  void update(
      void Function(DescribeRetentionConfigurationsResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeRetentionConfigurationsResponse build() => _build();

  _$DescribeRetentionConfigurationsResponse _build() {
    _$DescribeRetentionConfigurationsResponse _$result;
    try {
      _$result = _$v ??
          new _$DescribeRetentionConfigurationsResponse._(
              nextToken: nextToken,
              retentionConfigurations: _retentionConfigurations?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'retentionConfigurations';
        _retentionConfigurations?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeRetentionConfigurationsResponse',
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
