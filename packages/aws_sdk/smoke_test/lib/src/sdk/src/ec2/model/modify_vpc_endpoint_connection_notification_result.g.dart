// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modify_vpc_endpoint_connection_notification_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModifyVpcEndpointConnectionNotificationResult
    extends ModifyVpcEndpointConnectionNotificationResult {
  @override
  final bool returnValue;

  factory _$ModifyVpcEndpointConnectionNotificationResult(
          [void Function(ModifyVpcEndpointConnectionNotificationResultBuilder)?
              updates]) =>
      (new ModifyVpcEndpointConnectionNotificationResultBuilder()
            ..update(updates))
          ._build();

  _$ModifyVpcEndpointConnectionNotificationResult._({required this.returnValue})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(returnValue,
        r'ModifyVpcEndpointConnectionNotificationResult', 'returnValue');
  }

  @override
  ModifyVpcEndpointConnectionNotificationResult rebuild(
          void Function(ModifyVpcEndpointConnectionNotificationResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModifyVpcEndpointConnectionNotificationResultBuilder toBuilder() =>
      new ModifyVpcEndpointConnectionNotificationResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModifyVpcEndpointConnectionNotificationResult &&
        returnValue == other.returnValue;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, returnValue.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ModifyVpcEndpointConnectionNotificationResultBuilder
    implements
        Builder<ModifyVpcEndpointConnectionNotificationResult,
            ModifyVpcEndpointConnectionNotificationResultBuilder> {
  _$ModifyVpcEndpointConnectionNotificationResult? _$v;

  bool? _returnValue;
  bool? get returnValue => _$this._returnValue;
  set returnValue(bool? returnValue) => _$this._returnValue = returnValue;

  ModifyVpcEndpointConnectionNotificationResultBuilder() {
    ModifyVpcEndpointConnectionNotificationResult._init(this);
  }

  ModifyVpcEndpointConnectionNotificationResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _returnValue = $v.returnValue;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModifyVpcEndpointConnectionNotificationResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModifyVpcEndpointConnectionNotificationResult;
  }

  @override
  void update(
      void Function(ModifyVpcEndpointConnectionNotificationResultBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  ModifyVpcEndpointConnectionNotificationResult build() => _build();

  _$ModifyVpcEndpointConnectionNotificationResult _build() {
    final _$result = _$v ??
        new _$ModifyVpcEndpointConnectionNotificationResult._(
            returnValue: BuiltValueNullFieldError.checkNotNull(
                returnValue,
                r'ModifyVpcEndpointConnectionNotificationResult',
                'returnValue'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
