// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_account_authorization_details_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetAccountAuthorizationDetailsResponse
    extends GetAccountAuthorizationDetailsResponse {
  @override
  final _i6.BuiltList<_i2.UserDetail>? userDetailList;
  @override
  final _i6.BuiltList<_i3.GroupDetail>? groupDetailList;
  @override
  final _i6.BuiltList<_i4.RoleDetail>? roleDetailList;
  @override
  final _i6.BuiltList<_i5.ManagedPolicyDetail>? policies;
  @override
  final bool isTruncated;
  @override
  final String? marker;

  factory _$GetAccountAuthorizationDetailsResponse(
          [void Function(GetAccountAuthorizationDetailsResponseBuilder)?
              updates]) =>
      (new GetAccountAuthorizationDetailsResponseBuilder()..update(updates))
          ._build();

  _$GetAccountAuthorizationDetailsResponse._(
      {this.userDetailList,
      this.groupDetailList,
      this.roleDetailList,
      this.policies,
      required this.isTruncated,
      this.marker})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        isTruncated, r'GetAccountAuthorizationDetailsResponse', 'isTruncated');
  }

  @override
  GetAccountAuthorizationDetailsResponse rebuild(
          void Function(GetAccountAuthorizationDetailsResponseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetAccountAuthorizationDetailsResponseBuilder toBuilder() =>
      new GetAccountAuthorizationDetailsResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetAccountAuthorizationDetailsResponse &&
        userDetailList == other.userDetailList &&
        groupDetailList == other.groupDetailList &&
        roleDetailList == other.roleDetailList &&
        policies == other.policies &&
        isTruncated == other.isTruncated &&
        marker == other.marker;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, userDetailList.hashCode);
    _$hash = $jc(_$hash, groupDetailList.hashCode);
    _$hash = $jc(_$hash, roleDetailList.hashCode);
    _$hash = $jc(_$hash, policies.hashCode);
    _$hash = $jc(_$hash, isTruncated.hashCode);
    _$hash = $jc(_$hash, marker.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetAccountAuthorizationDetailsResponseBuilder
    implements
        Builder<GetAccountAuthorizationDetailsResponse,
            GetAccountAuthorizationDetailsResponseBuilder> {
  _$GetAccountAuthorizationDetailsResponse? _$v;

  _i6.ListBuilder<_i2.UserDetail>? _userDetailList;
  _i6.ListBuilder<_i2.UserDetail> get userDetailList =>
      _$this._userDetailList ??= new _i6.ListBuilder<_i2.UserDetail>();
  set userDetailList(_i6.ListBuilder<_i2.UserDetail>? userDetailList) =>
      _$this._userDetailList = userDetailList;

  _i6.ListBuilder<_i3.GroupDetail>? _groupDetailList;
  _i6.ListBuilder<_i3.GroupDetail> get groupDetailList =>
      _$this._groupDetailList ??= new _i6.ListBuilder<_i3.GroupDetail>();
  set groupDetailList(_i6.ListBuilder<_i3.GroupDetail>? groupDetailList) =>
      _$this._groupDetailList = groupDetailList;

  _i6.ListBuilder<_i4.RoleDetail>? _roleDetailList;
  _i6.ListBuilder<_i4.RoleDetail> get roleDetailList =>
      _$this._roleDetailList ??= new _i6.ListBuilder<_i4.RoleDetail>();
  set roleDetailList(_i6.ListBuilder<_i4.RoleDetail>? roleDetailList) =>
      _$this._roleDetailList = roleDetailList;

  _i6.ListBuilder<_i5.ManagedPolicyDetail>? _policies;
  _i6.ListBuilder<_i5.ManagedPolicyDetail> get policies =>
      _$this._policies ??= new _i6.ListBuilder<_i5.ManagedPolicyDetail>();
  set policies(_i6.ListBuilder<_i5.ManagedPolicyDetail>? policies) =>
      _$this._policies = policies;

  bool? _isTruncated;
  bool? get isTruncated => _$this._isTruncated;
  set isTruncated(bool? isTruncated) => _$this._isTruncated = isTruncated;

  String? _marker;
  String? get marker => _$this._marker;
  set marker(String? marker) => _$this._marker = marker;

  GetAccountAuthorizationDetailsResponseBuilder() {
    GetAccountAuthorizationDetailsResponse._init(this);
  }

  GetAccountAuthorizationDetailsResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userDetailList = $v.userDetailList?.toBuilder();
      _groupDetailList = $v.groupDetailList?.toBuilder();
      _roleDetailList = $v.roleDetailList?.toBuilder();
      _policies = $v.policies?.toBuilder();
      _isTruncated = $v.isTruncated;
      _marker = $v.marker;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetAccountAuthorizationDetailsResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetAccountAuthorizationDetailsResponse;
  }

  @override
  void update(
      void Function(GetAccountAuthorizationDetailsResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetAccountAuthorizationDetailsResponse build() => _build();

  _$GetAccountAuthorizationDetailsResponse _build() {
    _$GetAccountAuthorizationDetailsResponse _$result;
    try {
      _$result = _$v ??
          new _$GetAccountAuthorizationDetailsResponse._(
              userDetailList: _userDetailList?.build(),
              groupDetailList: _groupDetailList?.build(),
              roleDetailList: _roleDetailList?.build(),
              policies: _policies?.build(),
              isTruncated: BuiltValueNullFieldError.checkNotNull(isTruncated,
                  r'GetAccountAuthorizationDetailsResponse', 'isTruncated'),
              marker: marker);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'userDetailList';
        _userDetailList?.build();
        _$failedField = 'groupDetailList';
        _groupDetailList?.build();
        _$failedField = 'roleDetailList';
        _roleDetailList?.build();
        _$failedField = 'policies';
        _policies?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetAccountAuthorizationDetailsResponse',
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
