// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_role_policies_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListRolePoliciesResponse extends ListRolePoliciesResponse {
  @override
  final _i2.BuiltList<String> policyNames;
  @override
  final bool isTruncated;
  @override
  final String? marker;

  factory _$ListRolePoliciesResponse(
          [void Function(ListRolePoliciesResponseBuilder)? updates]) =>
      (new ListRolePoliciesResponseBuilder()..update(updates))._build();

  _$ListRolePoliciesResponse._(
      {required this.policyNames, required this.isTruncated, this.marker})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        policyNames, r'ListRolePoliciesResponse', 'policyNames');
    BuiltValueNullFieldError.checkNotNull(
        isTruncated, r'ListRolePoliciesResponse', 'isTruncated');
  }

  @override
  ListRolePoliciesResponse rebuild(
          void Function(ListRolePoliciesResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListRolePoliciesResponseBuilder toBuilder() =>
      new ListRolePoliciesResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListRolePoliciesResponse &&
        policyNames == other.policyNames &&
        isTruncated == other.isTruncated &&
        marker == other.marker;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, policyNames.hashCode);
    _$hash = $jc(_$hash, isTruncated.hashCode);
    _$hash = $jc(_$hash, marker.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ListRolePoliciesResponseBuilder
    implements
        Builder<ListRolePoliciesResponse, ListRolePoliciesResponseBuilder> {
  _$ListRolePoliciesResponse? _$v;

  _i2.ListBuilder<String>? _policyNames;
  _i2.ListBuilder<String> get policyNames =>
      _$this._policyNames ??= new _i2.ListBuilder<String>();
  set policyNames(_i2.ListBuilder<String>? policyNames) =>
      _$this._policyNames = policyNames;

  bool? _isTruncated;
  bool? get isTruncated => _$this._isTruncated;
  set isTruncated(bool? isTruncated) => _$this._isTruncated = isTruncated;

  String? _marker;
  String? get marker => _$this._marker;
  set marker(String? marker) => _$this._marker = marker;

  ListRolePoliciesResponseBuilder() {
    ListRolePoliciesResponse._init(this);
  }

  ListRolePoliciesResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _policyNames = $v.policyNames.toBuilder();
      _isTruncated = $v.isTruncated;
      _marker = $v.marker;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListRolePoliciesResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListRolePoliciesResponse;
  }

  @override
  void update(void Function(ListRolePoliciesResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListRolePoliciesResponse build() => _build();

  _$ListRolePoliciesResponse _build() {
    _$ListRolePoliciesResponse _$result;
    try {
      _$result = _$v ??
          new _$ListRolePoliciesResponse._(
              policyNames: policyNames.build(),
              isTruncated: BuiltValueNullFieldError.checkNotNull(
                  isTruncated, r'ListRolePoliciesResponse', 'isTruncated'),
              marker: marker);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'policyNames';
        policyNames.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ListRolePoliciesResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
