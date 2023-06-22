// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_group_policies_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListGroupPoliciesResponse extends ListGroupPoliciesResponse {
  @override
  final _i2.BuiltList<String> policyNames;
  @override
  final bool isTruncated;
  @override
  final String? marker;

  factory _$ListGroupPoliciesResponse(
          [void Function(ListGroupPoliciesResponseBuilder)? updates]) =>
      (new ListGroupPoliciesResponseBuilder()..update(updates))._build();

  _$ListGroupPoliciesResponse._(
      {required this.policyNames, required this.isTruncated, this.marker})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        policyNames, r'ListGroupPoliciesResponse', 'policyNames');
    BuiltValueNullFieldError.checkNotNull(
        isTruncated, r'ListGroupPoliciesResponse', 'isTruncated');
  }

  @override
  ListGroupPoliciesResponse rebuild(
          void Function(ListGroupPoliciesResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListGroupPoliciesResponseBuilder toBuilder() =>
      new ListGroupPoliciesResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListGroupPoliciesResponse &&
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

class ListGroupPoliciesResponseBuilder
    implements
        Builder<ListGroupPoliciesResponse, ListGroupPoliciesResponseBuilder> {
  _$ListGroupPoliciesResponse? _$v;

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

  ListGroupPoliciesResponseBuilder() {
    ListGroupPoliciesResponse._init(this);
  }

  ListGroupPoliciesResponseBuilder get _$this {
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
  void replace(ListGroupPoliciesResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListGroupPoliciesResponse;
  }

  @override
  void update(void Function(ListGroupPoliciesResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListGroupPoliciesResponse build() => _build();

  _$ListGroupPoliciesResponse _build() {
    _$ListGroupPoliciesResponse _$result;
    try {
      _$result = _$v ??
          new _$ListGroupPoliciesResponse._(
              policyNames: policyNames.build(),
              isTruncated: BuiltValueNullFieldError.checkNotNull(
                  isTruncated, r'ListGroupPoliciesResponse', 'isTruncated'),
              marker: marker);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'policyNames';
        policyNames.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ListGroupPoliciesResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
