// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_policies_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListPoliciesResponse extends ListPoliciesResponse {
  @override
  final _i3.BuiltList<_i2.Policy>? policies;
  @override
  final bool isTruncated;
  @override
  final String? marker;

  factory _$ListPoliciesResponse(
          [void Function(ListPoliciesResponseBuilder)? updates]) =>
      (new ListPoliciesResponseBuilder()..update(updates))._build();

  _$ListPoliciesResponse._(
      {this.policies, required this.isTruncated, this.marker})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        isTruncated, r'ListPoliciesResponse', 'isTruncated');
  }

  @override
  ListPoliciesResponse rebuild(
          void Function(ListPoliciesResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListPoliciesResponseBuilder toBuilder() =>
      new ListPoliciesResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListPoliciesResponse &&
        policies == other.policies &&
        isTruncated == other.isTruncated &&
        marker == other.marker;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, policies.hashCode);
    _$hash = $jc(_$hash, isTruncated.hashCode);
    _$hash = $jc(_$hash, marker.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ListPoliciesResponseBuilder
    implements Builder<ListPoliciesResponse, ListPoliciesResponseBuilder> {
  _$ListPoliciesResponse? _$v;

  _i3.ListBuilder<_i2.Policy>? _policies;
  _i3.ListBuilder<_i2.Policy> get policies =>
      _$this._policies ??= new _i3.ListBuilder<_i2.Policy>();
  set policies(_i3.ListBuilder<_i2.Policy>? policies) =>
      _$this._policies = policies;

  bool? _isTruncated;
  bool? get isTruncated => _$this._isTruncated;
  set isTruncated(bool? isTruncated) => _$this._isTruncated = isTruncated;

  String? _marker;
  String? get marker => _$this._marker;
  set marker(String? marker) => _$this._marker = marker;

  ListPoliciesResponseBuilder() {
    ListPoliciesResponse._init(this);
  }

  ListPoliciesResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _policies = $v.policies?.toBuilder();
      _isTruncated = $v.isTruncated;
      _marker = $v.marker;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListPoliciesResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListPoliciesResponse;
  }

  @override
  void update(void Function(ListPoliciesResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListPoliciesResponse build() => _build();

  _$ListPoliciesResponse _build() {
    _$ListPoliciesResponse _$result;
    try {
      _$result = _$v ??
          new _$ListPoliciesResponse._(
              policies: _policies?.build(),
              isTruncated: BuiltValueNullFieldError.checkNotNull(
                  isTruncated, r'ListPoliciesResponse', 'isTruncated'),
              marker: marker);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'policies';
        _policies?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ListPoliciesResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
