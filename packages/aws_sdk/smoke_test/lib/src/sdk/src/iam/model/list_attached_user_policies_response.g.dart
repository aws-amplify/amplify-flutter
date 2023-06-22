// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_attached_user_policies_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListAttachedUserPoliciesResponse
    extends ListAttachedUserPoliciesResponse {
  @override
  final _i3.BuiltList<_i2.AttachedPolicy>? attachedPolicies;
  @override
  final bool isTruncated;
  @override
  final String? marker;

  factory _$ListAttachedUserPoliciesResponse(
          [void Function(ListAttachedUserPoliciesResponseBuilder)? updates]) =>
      (new ListAttachedUserPoliciesResponseBuilder()..update(updates))._build();

  _$ListAttachedUserPoliciesResponse._(
      {this.attachedPolicies, required this.isTruncated, this.marker})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        isTruncated, r'ListAttachedUserPoliciesResponse', 'isTruncated');
  }

  @override
  ListAttachedUserPoliciesResponse rebuild(
          void Function(ListAttachedUserPoliciesResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListAttachedUserPoliciesResponseBuilder toBuilder() =>
      new ListAttachedUserPoliciesResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListAttachedUserPoliciesResponse &&
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

class ListAttachedUserPoliciesResponseBuilder
    implements
        Builder<ListAttachedUserPoliciesResponse,
            ListAttachedUserPoliciesResponseBuilder> {
  _$ListAttachedUserPoliciesResponse? _$v;

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

  ListAttachedUserPoliciesResponseBuilder() {
    ListAttachedUserPoliciesResponse._init(this);
  }

  ListAttachedUserPoliciesResponseBuilder get _$this {
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
  void replace(ListAttachedUserPoliciesResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListAttachedUserPoliciesResponse;
  }

  @override
  void update(void Function(ListAttachedUserPoliciesResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListAttachedUserPoliciesResponse build() => _build();

  _$ListAttachedUserPoliciesResponse _build() {
    _$ListAttachedUserPoliciesResponse _$result;
    try {
      _$result = _$v ??
          new _$ListAttachedUserPoliciesResponse._(
              attachedPolicies: _attachedPolicies?.build(),
              isTruncated: BuiltValueNullFieldError.checkNotNull(isTruncated,
                  r'ListAttachedUserPoliciesResponse', 'isTruncated'),
              marker: marker);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'attachedPolicies';
        _attachedPolicies?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ListAttachedUserPoliciesResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
