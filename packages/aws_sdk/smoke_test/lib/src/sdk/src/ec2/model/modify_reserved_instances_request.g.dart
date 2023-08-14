// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modify_reserved_instances_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModifyReservedInstancesRequest extends ModifyReservedInstancesRequest {
  @override
  final _i3.BuiltList<String>? reservedInstancesIds;
  @override
  final String? clientToken;
  @override
  final _i3.BuiltList<ReservedInstancesConfiguration>? targetConfigurations;

  factory _$ModifyReservedInstancesRequest(
          [void Function(ModifyReservedInstancesRequestBuilder)? updates]) =>
      (new ModifyReservedInstancesRequestBuilder()..update(updates))._build();

  _$ModifyReservedInstancesRequest._(
      {this.reservedInstancesIds, this.clientToken, this.targetConfigurations})
      : super._();

  @override
  ModifyReservedInstancesRequest rebuild(
          void Function(ModifyReservedInstancesRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModifyReservedInstancesRequestBuilder toBuilder() =>
      new ModifyReservedInstancesRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModifyReservedInstancesRequest &&
        reservedInstancesIds == other.reservedInstancesIds &&
        clientToken == other.clientToken &&
        targetConfigurations == other.targetConfigurations;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, reservedInstancesIds.hashCode);
    _$hash = $jc(_$hash, clientToken.hashCode);
    _$hash = $jc(_$hash, targetConfigurations.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ModifyReservedInstancesRequestBuilder
    implements
        Builder<ModifyReservedInstancesRequest,
            ModifyReservedInstancesRequestBuilder> {
  _$ModifyReservedInstancesRequest? _$v;

  _i3.ListBuilder<String>? _reservedInstancesIds;
  _i3.ListBuilder<String> get reservedInstancesIds =>
      _$this._reservedInstancesIds ??= new _i3.ListBuilder<String>();
  set reservedInstancesIds(_i3.ListBuilder<String>? reservedInstancesIds) =>
      _$this._reservedInstancesIds = reservedInstancesIds;

  String? _clientToken;
  String? get clientToken => _$this._clientToken;
  set clientToken(String? clientToken) => _$this._clientToken = clientToken;

  _i3.ListBuilder<ReservedInstancesConfiguration>? _targetConfigurations;
  _i3.ListBuilder<ReservedInstancesConfiguration> get targetConfigurations =>
      _$this._targetConfigurations ??=
          new _i3.ListBuilder<ReservedInstancesConfiguration>();
  set targetConfigurations(
          _i3.ListBuilder<ReservedInstancesConfiguration>?
              targetConfigurations) =>
      _$this._targetConfigurations = targetConfigurations;

  ModifyReservedInstancesRequestBuilder();

  ModifyReservedInstancesRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _reservedInstancesIds = $v.reservedInstancesIds?.toBuilder();
      _clientToken = $v.clientToken;
      _targetConfigurations = $v.targetConfigurations?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModifyReservedInstancesRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModifyReservedInstancesRequest;
  }

  @override
  void update(void Function(ModifyReservedInstancesRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ModifyReservedInstancesRequest build() => _build();

  _$ModifyReservedInstancesRequest _build() {
    _$ModifyReservedInstancesRequest _$result;
    try {
      _$result = _$v ??
          new _$ModifyReservedInstancesRequest._(
              reservedInstancesIds: _reservedInstancesIds?.build(),
              clientToken: clientToken,
              targetConfigurations: _targetConfigurations?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'reservedInstancesIds';
        _reservedInstancesIds?.build();

        _$failedField = 'targetConfigurations';
        _targetConfigurations?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ModifyReservedInstancesRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
