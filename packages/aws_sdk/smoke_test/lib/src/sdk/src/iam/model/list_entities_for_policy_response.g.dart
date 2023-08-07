// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_entities_for_policy_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListEntitiesForPolicyResponse extends ListEntitiesForPolicyResponse {
  @override
  final _i2.BuiltList<PolicyGroup>? policyGroups;
  @override
  final _i2.BuiltList<PolicyUser>? policyUsers;
  @override
  final _i2.BuiltList<PolicyRole>? policyRoles;
  @override
  final bool isTruncated;
  @override
  final String? marker;

  factory _$ListEntitiesForPolicyResponse(
          [void Function(ListEntitiesForPolicyResponseBuilder)? updates]) =>
      (new ListEntitiesForPolicyResponseBuilder()..update(updates))._build();

  _$ListEntitiesForPolicyResponse._(
      {this.policyGroups,
      this.policyUsers,
      this.policyRoles,
      required this.isTruncated,
      this.marker})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        isTruncated, r'ListEntitiesForPolicyResponse', 'isTruncated');
  }

  @override
  ListEntitiesForPolicyResponse rebuild(
          void Function(ListEntitiesForPolicyResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListEntitiesForPolicyResponseBuilder toBuilder() =>
      new ListEntitiesForPolicyResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListEntitiesForPolicyResponse &&
        policyGroups == other.policyGroups &&
        policyUsers == other.policyUsers &&
        policyRoles == other.policyRoles &&
        isTruncated == other.isTruncated &&
        marker == other.marker;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, policyGroups.hashCode);
    _$hash = $jc(_$hash, policyUsers.hashCode);
    _$hash = $jc(_$hash, policyRoles.hashCode);
    _$hash = $jc(_$hash, isTruncated.hashCode);
    _$hash = $jc(_$hash, marker.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ListEntitiesForPolicyResponseBuilder
    implements
        Builder<ListEntitiesForPolicyResponse,
            ListEntitiesForPolicyResponseBuilder> {
  _$ListEntitiesForPolicyResponse? _$v;

  _i2.ListBuilder<PolicyGroup>? _policyGroups;
  _i2.ListBuilder<PolicyGroup> get policyGroups =>
      _$this._policyGroups ??= new _i2.ListBuilder<PolicyGroup>();
  set policyGroups(_i2.ListBuilder<PolicyGroup>? policyGroups) =>
      _$this._policyGroups = policyGroups;

  _i2.ListBuilder<PolicyUser>? _policyUsers;
  _i2.ListBuilder<PolicyUser> get policyUsers =>
      _$this._policyUsers ??= new _i2.ListBuilder<PolicyUser>();
  set policyUsers(_i2.ListBuilder<PolicyUser>? policyUsers) =>
      _$this._policyUsers = policyUsers;

  _i2.ListBuilder<PolicyRole>? _policyRoles;
  _i2.ListBuilder<PolicyRole> get policyRoles =>
      _$this._policyRoles ??= new _i2.ListBuilder<PolicyRole>();
  set policyRoles(_i2.ListBuilder<PolicyRole>? policyRoles) =>
      _$this._policyRoles = policyRoles;

  bool? _isTruncated;
  bool? get isTruncated => _$this._isTruncated;
  set isTruncated(bool? isTruncated) => _$this._isTruncated = isTruncated;

  String? _marker;
  String? get marker => _$this._marker;
  set marker(String? marker) => _$this._marker = marker;

  ListEntitiesForPolicyResponseBuilder() {
    ListEntitiesForPolicyResponse._init(this);
  }

  ListEntitiesForPolicyResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _policyGroups = $v.policyGroups?.toBuilder();
      _policyUsers = $v.policyUsers?.toBuilder();
      _policyRoles = $v.policyRoles?.toBuilder();
      _isTruncated = $v.isTruncated;
      _marker = $v.marker;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListEntitiesForPolicyResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListEntitiesForPolicyResponse;
  }

  @override
  void update(void Function(ListEntitiesForPolicyResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListEntitiesForPolicyResponse build() => _build();

  _$ListEntitiesForPolicyResponse _build() {
    _$ListEntitiesForPolicyResponse _$result;
    try {
      _$result = _$v ??
          new _$ListEntitiesForPolicyResponse._(
              policyGroups: _policyGroups?.build(),
              policyUsers: _policyUsers?.build(),
              policyRoles: _policyRoles?.build(),
              isTruncated: BuiltValueNullFieldError.checkNotNull(
                  isTruncated, r'ListEntitiesForPolicyResponse', 'isTruncated'),
              marker: marker);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'policyGroups';
        _policyGroups?.build();
        _$failedField = 'policyUsers';
        _policyUsers?.build();
        _$failedField = 'policyRoles';
        _policyRoles?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ListEntitiesForPolicyResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
