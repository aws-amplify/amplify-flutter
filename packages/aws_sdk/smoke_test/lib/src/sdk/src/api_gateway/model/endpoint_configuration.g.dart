// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.endpoint_configuration;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EndpointConfiguration extends EndpointConfiguration {
  @override
  final _i3.BuiltList<_i2.EndpointType>? types;
  @override
  final _i3.BuiltList<String>? vpcEndpointIds;

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
    return $jf($jc($jc(0, types.hashCode), vpcEndpointIds.hashCode));
  }
}

class EndpointConfigurationBuilder
    implements Builder<EndpointConfiguration, EndpointConfigurationBuilder> {
  _$EndpointConfiguration? _$v;

  _i3.ListBuilder<_i2.EndpointType>? _types;
  _i3.ListBuilder<_i2.EndpointType> get types =>
      _$this._types ??= new _i3.ListBuilder<_i2.EndpointType>();
  set types(_i3.ListBuilder<_i2.EndpointType>? types) => _$this._types = types;

  _i3.ListBuilder<String>? _vpcEndpointIds;
  _i3.ListBuilder<String> get vpcEndpointIds =>
      _$this._vpcEndpointIds ??= new _i3.ListBuilder<String>();
  set vpcEndpointIds(_i3.ListBuilder<String>? vpcEndpointIds) =>
      _$this._vpcEndpointIds = vpcEndpointIds;

  EndpointConfigurationBuilder() {
    EndpointConfiguration._init(this);
  }

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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
