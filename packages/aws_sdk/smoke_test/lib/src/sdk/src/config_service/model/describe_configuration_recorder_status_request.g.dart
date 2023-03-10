// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.describe_configuration_recorder_status_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeConfigurationRecorderStatusRequest
    extends DescribeConfigurationRecorderStatusRequest {
  @override
  final _i3.BuiltList<String>? configurationRecorderNames;

  factory _$DescribeConfigurationRecorderStatusRequest(
          [void Function(DescribeConfigurationRecorderStatusRequestBuilder)?
              updates]) =>
      (new DescribeConfigurationRecorderStatusRequestBuilder()..update(updates))
          ._build();

  _$DescribeConfigurationRecorderStatusRequest._(
      {this.configurationRecorderNames})
      : super._();

  @override
  DescribeConfigurationRecorderStatusRequest rebuild(
          void Function(DescribeConfigurationRecorderStatusRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeConfigurationRecorderStatusRequestBuilder toBuilder() =>
      new DescribeConfigurationRecorderStatusRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeConfigurationRecorderStatusRequest &&
        configurationRecorderNames == other.configurationRecorderNames;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, configurationRecorderNames.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeConfigurationRecorderStatusRequestBuilder
    implements
        Builder<DescribeConfigurationRecorderStatusRequest,
            DescribeConfigurationRecorderStatusRequestBuilder> {
  _$DescribeConfigurationRecorderStatusRequest? _$v;

  _i3.ListBuilder<String>? _configurationRecorderNames;
  _i3.ListBuilder<String> get configurationRecorderNames =>
      _$this._configurationRecorderNames ??= new _i3.ListBuilder<String>();
  set configurationRecorderNames(
          _i3.ListBuilder<String>? configurationRecorderNames) =>
      _$this._configurationRecorderNames = configurationRecorderNames;

  DescribeConfigurationRecorderStatusRequestBuilder() {
    DescribeConfigurationRecorderStatusRequest._init(this);
  }

  DescribeConfigurationRecorderStatusRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _configurationRecorderNames = $v.configurationRecorderNames?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeConfigurationRecorderStatusRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeConfigurationRecorderStatusRequest;
  }

  @override
  void update(
      void Function(DescribeConfigurationRecorderStatusRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeConfigurationRecorderStatusRequest build() => _build();

  _$DescribeConfigurationRecorderStatusRequest _build() {
    _$DescribeConfigurationRecorderStatusRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeConfigurationRecorderStatusRequest._(
              configurationRecorderNames: _configurationRecorderNames?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'configurationRecorderNames';
        _configurationRecorderNames?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeConfigurationRecorderStatusRequest',
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
