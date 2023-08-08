// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_user_policies_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListUserPoliciesResponse extends ListUserPoliciesResponse {
  @override
  final _i2.BuiltList<String> policyNames;
  @override
  final bool isTruncated;
  @override
  final String? marker;

  factory _$ListUserPoliciesResponse(
          [void Function(ListUserPoliciesResponseBuilder)? updates]) =>
      (new ListUserPoliciesResponseBuilder()..update(updates))._build();

  _$ListUserPoliciesResponse._(
      {required this.policyNames, required this.isTruncated, this.marker})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        policyNames, r'ListUserPoliciesResponse', 'policyNames');
    BuiltValueNullFieldError.checkNotNull(
        isTruncated, r'ListUserPoliciesResponse', 'isTruncated');
  }

  @override
  ListUserPoliciesResponse rebuild(
          void Function(ListUserPoliciesResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListUserPoliciesResponseBuilder toBuilder() =>
      new ListUserPoliciesResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListUserPoliciesResponse &&
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

class ListUserPoliciesResponseBuilder
    implements
        Builder<ListUserPoliciesResponse, ListUserPoliciesResponseBuilder> {
  _$ListUserPoliciesResponse? _$v;

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

  ListUserPoliciesResponseBuilder() {
    ListUserPoliciesResponse._init(this);
  }

  ListUserPoliciesResponseBuilder get _$this {
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
  void replace(ListUserPoliciesResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListUserPoliciesResponse;
  }

  @override
  void update(void Function(ListUserPoliciesResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListUserPoliciesResponse build() => _build();

  _$ListUserPoliciesResponse _build() {
    _$ListUserPoliciesResponse _$result;
    try {
      _$result = _$v ??
          new _$ListUserPoliciesResponse._(
              policyNames: policyNames.build(),
              isTruncated: BuiltValueNullFieldError.checkNotNull(
                  isTruncated, r'ListUserPoliciesResponse', 'isTruncated'),
              marker: marker);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'policyNames';
        policyNames.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ListUserPoliciesResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
