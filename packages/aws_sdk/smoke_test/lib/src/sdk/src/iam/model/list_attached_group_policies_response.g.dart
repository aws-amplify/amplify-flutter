// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_attached_group_policies_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListAttachedGroupPoliciesResponse
    extends ListAttachedGroupPoliciesResponse {
  @override
  final _i3.BuiltList<_i2.AttachedPolicy>? attachedPolicies;
  @override
  final bool isTruncated;
  @override
  final String? marker;

  factory _$ListAttachedGroupPoliciesResponse(
          [void Function(ListAttachedGroupPoliciesResponseBuilder)? updates]) =>
      (new ListAttachedGroupPoliciesResponseBuilder()..update(updates))
          ._build();

  _$ListAttachedGroupPoliciesResponse._(
      {this.attachedPolicies, required this.isTruncated, this.marker})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        isTruncated, r'ListAttachedGroupPoliciesResponse', 'isTruncated');
  }

  @override
  ListAttachedGroupPoliciesResponse rebuild(
          void Function(ListAttachedGroupPoliciesResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListAttachedGroupPoliciesResponseBuilder toBuilder() =>
      new ListAttachedGroupPoliciesResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListAttachedGroupPoliciesResponse &&
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

class ListAttachedGroupPoliciesResponseBuilder
    implements
        Builder<ListAttachedGroupPoliciesResponse,
            ListAttachedGroupPoliciesResponseBuilder> {
  _$ListAttachedGroupPoliciesResponse? _$v;

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

  ListAttachedGroupPoliciesResponseBuilder() {
    ListAttachedGroupPoliciesResponse._init(this);
  }

  ListAttachedGroupPoliciesResponseBuilder get _$this {
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
  void replace(ListAttachedGroupPoliciesResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListAttachedGroupPoliciesResponse;
  }

  @override
  void update(
      void Function(ListAttachedGroupPoliciesResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListAttachedGroupPoliciesResponse build() => _build();

  _$ListAttachedGroupPoliciesResponse _build() {
    _$ListAttachedGroupPoliciesResponse _$result;
    try {
      _$result = _$v ??
          new _$ListAttachedGroupPoliciesResponse._(
              attachedPolicies: _attachedPolicies?.build(),
              isTruncated: BuiltValueNullFieldError.checkNotNull(isTruncated,
                  r'ListAttachedGroupPoliciesResponse', 'isTruncated'),
              marker: marker);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'attachedPolicies';
        _attachedPolicies?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ListAttachedGroupPoliciesResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
