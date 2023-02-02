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
    var _$hash = 0;
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, retentionConfigurations.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
