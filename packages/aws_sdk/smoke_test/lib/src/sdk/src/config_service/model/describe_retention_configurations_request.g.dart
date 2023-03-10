// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.describe_retention_configurations_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeRetentionConfigurationsRequest
    extends DescribeRetentionConfigurationsRequest {
  @override
  final String? nextToken;
  @override
  final _i3.BuiltList<String>? retentionConfigurationNames;

  factory _$DescribeRetentionConfigurationsRequest(
          [void Function(DescribeRetentionConfigurationsRequestBuilder)?
              updates]) =>
      (new DescribeRetentionConfigurationsRequestBuilder()..update(updates))
          ._build();

  _$DescribeRetentionConfigurationsRequest._(
      {this.nextToken, this.retentionConfigurationNames})
      : super._();

  @override
  DescribeRetentionConfigurationsRequest rebuild(
          void Function(DescribeRetentionConfigurationsRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeRetentionConfigurationsRequestBuilder toBuilder() =>
      new DescribeRetentionConfigurationsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeRetentionConfigurationsRequest &&
        nextToken == other.nextToken &&
        retentionConfigurationNames == other.retentionConfigurationNames;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, retentionConfigurationNames.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeRetentionConfigurationsRequestBuilder
    implements
        Builder<DescribeRetentionConfigurationsRequest,
            DescribeRetentionConfigurationsRequestBuilder> {
  _$DescribeRetentionConfigurationsRequest? _$v;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  _i3.ListBuilder<String>? _retentionConfigurationNames;
  _i3.ListBuilder<String> get retentionConfigurationNames =>
      _$this._retentionConfigurationNames ??= new _i3.ListBuilder<String>();
  set retentionConfigurationNames(
          _i3.ListBuilder<String>? retentionConfigurationNames) =>
      _$this._retentionConfigurationNames = retentionConfigurationNames;

  DescribeRetentionConfigurationsRequestBuilder() {
    DescribeRetentionConfigurationsRequest._init(this);
  }

  DescribeRetentionConfigurationsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nextToken = $v.nextToken;
      _retentionConfigurationNames =
          $v.retentionConfigurationNames?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeRetentionConfigurationsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeRetentionConfigurationsRequest;
  }

  @override
  void update(
      void Function(DescribeRetentionConfigurationsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeRetentionConfigurationsRequest build() => _build();

  _$DescribeRetentionConfigurationsRequest _build() {
    _$DescribeRetentionConfigurationsRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeRetentionConfigurationsRequest._(
              nextToken: nextToken,
              retentionConfigurationNames:
                  _retentionConfigurationNames?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'retentionConfigurationNames';
        _retentionConfigurationNames?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeRetentionConfigurationsRequest',
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
