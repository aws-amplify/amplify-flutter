// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_attached_role_policies_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListAttachedRolePoliciesResponse
    extends ListAttachedRolePoliciesResponse {
  @override
  final _i3.BuiltList<_i2.AttachedPolicy>? attachedPolicies;
  @override
  final bool isTruncated;
  @override
  final String? marker;

  factory _$ListAttachedRolePoliciesResponse(
          [void Function(ListAttachedRolePoliciesResponseBuilder)? updates]) =>
      (new ListAttachedRolePoliciesResponseBuilder()..update(updates))._build();

  _$ListAttachedRolePoliciesResponse._(
      {this.attachedPolicies, required this.isTruncated, this.marker})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        isTruncated, r'ListAttachedRolePoliciesResponse', 'isTruncated');
  }

  @override
  ListAttachedRolePoliciesResponse rebuild(
          void Function(ListAttachedRolePoliciesResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListAttachedRolePoliciesResponseBuilder toBuilder() =>
      new ListAttachedRolePoliciesResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListAttachedRolePoliciesResponse &&
        attachedPolicies == other.attachedPolicies &&
        isTruncated == other.isTruncated &&
        marker == other.marker;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, attachedPolicies.hashCode);
    _$hash = $jc(_$hash, isTruncated.hashCode);
    _$hash = $jc(_$hash, marker.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ListAttachedRolePoliciesResponseBuilder
    implements
        Builder<ListAttachedRolePoliciesResponse,
            ListAttachedRolePoliciesResponseBuilder> {
  _$ListAttachedRolePoliciesResponse? _$v;

  _i3.ListBuilder<_i2.AttachedPolicy>? _attachedPolicies;
  _i3.ListBuilder<_i2.AttachedPolicy> get attachedPolicies =>
      _$this._attachedPolicies ??= new _i3.ListBuilder<_i2.AttachedPolicy>();
  set attachedPolicies(_i3.ListBuilder<_i2.AttachedPolicy>? attachedPolicies) =>
      _$this._attachedPolicies = attachedPolicies;

  bool? _isTruncated;
  bool? get isTruncated => _$this._isTruncated;
  set isTruncated(bool? isTruncated) => _$this._isTruncated = isTruncated;

  String? _marker;
  String? get marker => _$this._marker;
  set marker(String? marker) => _$this._marker = marker;

  ListAttachedRolePoliciesResponseBuilder() {
    ListAttachedRolePoliciesResponse._init(this);
  }

  ListAttachedRolePoliciesResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _attachedPolicies = $v.attachedPolicies?.toBuilder();
      _isTruncated = $v.isTruncated;
      _marker = $v.marker;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListAttachedRolePoliciesResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListAttachedRolePoliciesResponse;
  }

  @override
  void update(void Function(ListAttachedRolePoliciesResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListAttachedRolePoliciesResponse build() => _build();

  _$ListAttachedRolePoliciesResponse _build() {
    _$ListAttachedRolePoliciesResponse _$result;
    try {
      _$result = _$v ??
          new _$ListAttachedRolePoliciesResponse._(
              attachedPolicies: _attachedPolicies?.build(),
              isTruncated: BuiltValueNullFieldError.checkNotNull(isTruncated,
                  r'ListAttachedRolePoliciesResponse', 'isTruncated'),
              marker: marker);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'attachedPolicies';
        _attachedPolicies?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ListAttachedRolePoliciesResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
