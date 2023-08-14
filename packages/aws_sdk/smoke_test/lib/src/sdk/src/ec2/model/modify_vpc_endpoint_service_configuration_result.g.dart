// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modify_vpc_endpoint_service_configuration_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModifyVpcEndpointServiceConfigurationResult
    extends ModifyVpcEndpointServiceConfigurationResult {
  @override
  final bool return_;

  factory _$ModifyVpcEndpointServiceConfigurationResult(
          [void Function(ModifyVpcEndpointServiceConfigurationResultBuilder)?
              updates]) =>
      (new ModifyVpcEndpointServiceConfigurationResultBuilder()
            ..update(updates))
          ._build();

  _$ModifyVpcEndpointServiceConfigurationResult._({required this.return_})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        return_, r'ModifyVpcEndpointServiceConfigurationResult', 'return_');
  }

  @override
  ModifyVpcEndpointServiceConfigurationResult rebuild(
          void Function(ModifyVpcEndpointServiceConfigurationResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModifyVpcEndpointServiceConfigurationResultBuilder toBuilder() =>
      new ModifyVpcEndpointServiceConfigurationResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModifyVpcEndpointServiceConfigurationResult &&
        return_ == other.return_;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, return_.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ModifyVpcEndpointServiceConfigurationResultBuilder
    implements
        Builder<ModifyVpcEndpointServiceConfigurationResult,
            ModifyVpcEndpointServiceConfigurationResultBuilder> {
  _$ModifyVpcEndpointServiceConfigurationResult? _$v;

  bool? _return_;
  bool? get return_ => _$this._return_;
  set return_(bool? return_) => _$this._return_ = return_;

  ModifyVpcEndpointServiceConfigurationResultBuilder() {
    ModifyVpcEndpointServiceConfigurationResult._init(this);
  }

  ModifyVpcEndpointServiceConfigurationResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _return_ = $v.return_;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModifyVpcEndpointServiceConfigurationResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModifyVpcEndpointServiceConfigurationResult;
  }

  @override
  void update(
      void Function(ModifyVpcEndpointServiceConfigurationResultBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  ModifyVpcEndpointServiceConfigurationResult build() => _build();

  _$ModifyVpcEndpointServiceConfigurationResult _build() {
    final _$result = _$v ??
        new _$ModifyVpcEndpointServiceConfigurationResult._(
            return_: BuiltValueNullFieldError.checkNotNull(return_,
                r'ModifyVpcEndpointServiceConfigurationResult', 'return_'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
