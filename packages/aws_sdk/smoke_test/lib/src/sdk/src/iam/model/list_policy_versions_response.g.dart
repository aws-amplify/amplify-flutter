// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_policy_versions_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListPolicyVersionsResponse extends ListPolicyVersionsResponse {
  @override
  final _i3.BuiltList<_i2.PolicyVersion>? versions;
  @override
  final bool isTruncated;
  @override
  final String? marker;

  factory _$ListPolicyVersionsResponse(
          [void Function(ListPolicyVersionsResponseBuilder)? updates]) =>
      (new ListPolicyVersionsResponseBuilder()..update(updates))._build();

  _$ListPolicyVersionsResponse._(
      {this.versions, required this.isTruncated, this.marker})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        isTruncated, r'ListPolicyVersionsResponse', 'isTruncated');
  }

  @override
  ListPolicyVersionsResponse rebuild(
          void Function(ListPolicyVersionsResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListPolicyVersionsResponseBuilder toBuilder() =>
      new ListPolicyVersionsResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListPolicyVersionsResponse &&
        versions == other.versions &&
        isTruncated == other.isTruncated &&
        marker == other.marker;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, versions.hashCode);
    _$hash = $jc(_$hash, isTruncated.hashCode);
    _$hash = $jc(_$hash, marker.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ListPolicyVersionsResponseBuilder
    implements
        Builder<ListPolicyVersionsResponse, ListPolicyVersionsResponseBuilder> {
  _$ListPolicyVersionsResponse? _$v;

  _i3.ListBuilder<_i2.PolicyVersion>? _versions;
  _i3.ListBuilder<_i2.PolicyVersion> get versions =>
      _$this._versions ??= new _i3.ListBuilder<_i2.PolicyVersion>();
  set versions(_i3.ListBuilder<_i2.PolicyVersion>? versions) =>
      _$this._versions = versions;

  bool? _isTruncated;
  bool? get isTruncated => _$this._isTruncated;
  set isTruncated(bool? isTruncated) => _$this._isTruncated = isTruncated;

  String? _marker;
  String? get marker => _$this._marker;
  set marker(String? marker) => _$this._marker = marker;

  ListPolicyVersionsResponseBuilder() {
    ListPolicyVersionsResponse._init(this);
  }

  ListPolicyVersionsResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _versions = $v.versions?.toBuilder();
      _isTruncated = $v.isTruncated;
      _marker = $v.marker;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListPolicyVersionsResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListPolicyVersionsResponse;
  }

  @override
  void update(void Function(ListPolicyVersionsResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListPolicyVersionsResponse build() => _build();

  _$ListPolicyVersionsResponse _build() {
    _$ListPolicyVersionsResponse _$result;
    try {
      _$result = _$v ??
          new _$ListPolicyVersionsResponse._(
              versions: _versions?.build(),
              isTruncated: BuiltValueNullFieldError.checkNotNull(
                  isTruncated, r'ListPolicyVersionsResponse', 'isTruncated'),
              marker: marker);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'versions';
        _versions?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ListPolicyVersionsResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
