// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authorization_rule.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AuthorizationRule extends AuthorizationRule {
  @override
  final String? clientVpnEndpointId;
  @override
  final String? description;
  @override
  final String? groupId;
  @override
  final bool accessAll;
  @override
  final String? destinationCidr;
  @override
  final ClientVpnAuthorizationRuleStatus? status;

  factory _$AuthorizationRule(
          [void Function(AuthorizationRuleBuilder)? updates]) =>
      (new AuthorizationRuleBuilder()..update(updates))._build();

  _$AuthorizationRule._(
      {this.clientVpnEndpointId,
      this.description,
      this.groupId,
      required this.accessAll,
      this.destinationCidr,
      this.status})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        accessAll, r'AuthorizationRule', 'accessAll');
  }

  @override
  AuthorizationRule rebuild(void Function(AuthorizationRuleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AuthorizationRuleBuilder toBuilder() =>
      new AuthorizationRuleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AuthorizationRule &&
        clientVpnEndpointId == other.clientVpnEndpointId &&
        description == other.description &&
        groupId == other.groupId &&
        accessAll == other.accessAll &&
        destinationCidr == other.destinationCidr &&
        status == other.status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, clientVpnEndpointId.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, groupId.hashCode);
    _$hash = $jc(_$hash, accessAll.hashCode);
    _$hash = $jc(_$hash, destinationCidr.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AuthorizationRuleBuilder
    implements Builder<AuthorizationRule, AuthorizationRuleBuilder> {
  _$AuthorizationRule? _$v;

  String? _clientVpnEndpointId;
  String? get clientVpnEndpointId => _$this._clientVpnEndpointId;
  set clientVpnEndpointId(String? clientVpnEndpointId) =>
      _$this._clientVpnEndpointId = clientVpnEndpointId;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _groupId;
  String? get groupId => _$this._groupId;
  set groupId(String? groupId) => _$this._groupId = groupId;

  bool? _accessAll;
  bool? get accessAll => _$this._accessAll;
  set accessAll(bool? accessAll) => _$this._accessAll = accessAll;

  String? _destinationCidr;
  String? get destinationCidr => _$this._destinationCidr;
  set destinationCidr(String? destinationCidr) =>
      _$this._destinationCidr = destinationCidr;

  ClientVpnAuthorizationRuleStatusBuilder? _status;
  ClientVpnAuthorizationRuleStatusBuilder get status =>
      _$this._status ??= new ClientVpnAuthorizationRuleStatusBuilder();
  set status(ClientVpnAuthorizationRuleStatusBuilder? status) =>
      _$this._status = status;

  AuthorizationRuleBuilder() {
    AuthorizationRule._init(this);
  }

  AuthorizationRuleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _clientVpnEndpointId = $v.clientVpnEndpointId;
      _description = $v.description;
      _groupId = $v.groupId;
      _accessAll = $v.accessAll;
      _destinationCidr = $v.destinationCidr;
      _status = $v.status?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AuthorizationRule other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AuthorizationRule;
  }

  @override
  void update(void Function(AuthorizationRuleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AuthorizationRule build() => _build();

  _$AuthorizationRule _build() {
    _$AuthorizationRule _$result;
    try {
      _$result = _$v ??
          new _$AuthorizationRule._(
              clientVpnEndpointId: clientVpnEndpointId,
              description: description,
              groupId: groupId,
              accessAll: BuiltValueNullFieldError.checkNotNull(
                  accessAll, r'AuthorizationRule', 'accessAll'),
              destinationCidr: destinationCidr,
              status: _status?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'status';
        _status?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AuthorizationRule', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
