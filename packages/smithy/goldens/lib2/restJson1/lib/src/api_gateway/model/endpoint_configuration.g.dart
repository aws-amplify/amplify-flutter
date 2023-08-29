// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'endpoint_configuration.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EndpointConfiguration extends EndpointConfiguration {
  @override
  final _i2.BuiltList<EndpointType>? types;
  @override
  final _i2.BuiltList<String>? vpcEndpointIds;

  factory _$EndpointConfiguration(
          [void Function(EndpointConfigurationBuilder)? updates]) =>
      (new EndpointConfigurationBuilder()..update(updates))._build();

  _$EndpointConfiguration._({this.types, this.vpcEndpointIds}) : super._();

  @override
  EndpointConfiguration rebuild(
          void Function(EndpointConfigurationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EndpointConfigurationBuilder toBuilder() =>
      new EndpointConfigurationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EndpointConfiguration &&
        types == other.types &&
        vpcEndpointIds == other.vpcEndpointIds;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, types.hashCode);
    _$hash = $jc(_$hash, vpcEndpointIds.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class EndpointConfigurationBuilder
    implements Builder<EndpointConfiguration, EndpointConfigurationBuilder> {
  _$EndpointConfiguration? _$v;

  _i2.ListBuilder<EndpointType>? _types;
  _i2.ListBuilder<EndpointType> get types =>
      _$this._types ??= new _i2.ListBuilder<EndpointType>();
  set types(_i2.ListBuilder<EndpointType>? types) => _$this._types = types;

  _i2.ListBuilder<String>? _vpcEndpointIds;
  _i2.ListBuilder<String> get vpcEndpointIds =>
      _$this._vpcEndpointIds ??= new _i2.ListBuilder<String>();
  set vpcEndpointIds(_i2.ListBuilder<String>? vpcEndpointIds) =>
      _$this._vpcEndpointIds = vpcEndpointIds;

  EndpointConfigurationBuilder();

  EndpointConfigurationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _types = $v.types?.toBuilder();
      _vpcEndpointIds = $v.vpcEndpointIds?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EndpointConfiguration other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EndpointConfiguration;
  }

  @override
  void update(void Function(EndpointConfigurationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EndpointConfiguration build() => _build();

  _$EndpointConfiguration _build() {
    _$EndpointConfiguration _$result;
    try {
      _$result = _$v ??
          new _$EndpointConfiguration._(
              types: _types?.build(), vpcEndpointIds: _vpcEndpointIds?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'types';
        _types?.build();
        _$failedField = 'vpcEndpointIds';
        _vpcEndpointIds?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'EndpointConfiguration', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
