// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_groups_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListGroupsResponse extends ListGroupsResponse {
  @override
  final _i3.BuiltList<_i2.Group> groups;
  @override
  final bool isTruncated;
  @override
  final String? marker;

  factory _$ListGroupsResponse(
          [void Function(ListGroupsResponseBuilder)? updates]) =>
      (new ListGroupsResponseBuilder()..update(updates))._build();

  _$ListGroupsResponse._(
      {required this.groups, required this.isTruncated, this.marker})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        groups, r'ListGroupsResponse', 'groups');
    BuiltValueNullFieldError.checkNotNull(
        isTruncated, r'ListGroupsResponse', 'isTruncated');
  }

  @override
  ListGroupsResponse rebuild(
          void Function(ListGroupsResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListGroupsResponseBuilder toBuilder() =>
      new ListGroupsResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListGroupsResponse &&
        groups == other.groups &&
        isTruncated == other.isTruncated &&
        marker == other.marker;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, groups.hashCode);
    _$hash = $jc(_$hash, isTruncated.hashCode);
    _$hash = $jc(_$hash, marker.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ListGroupsResponseBuilder
    implements Builder<ListGroupsResponse, ListGroupsResponseBuilder> {
  _$ListGroupsResponse? _$v;

  _i3.ListBuilder<_i2.Group>? _groups;
  _i3.ListBuilder<_i2.Group> get groups =>
      _$this._groups ??= new _i3.ListBuilder<_i2.Group>();
  set groups(_i3.ListBuilder<_i2.Group>? groups) => _$this._groups = groups;

  bool? _isTruncated;
  bool? get isTruncated => _$this._isTruncated;
  set isTruncated(bool? isTruncated) => _$this._isTruncated = isTruncated;

  String? _marker;
  String? get marker => _$this._marker;
  set marker(String? marker) => _$this._marker = marker;

  ListGroupsResponseBuilder() {
    ListGroupsResponse._init(this);
  }

  ListGroupsResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _groups = $v.groups.toBuilder();
      _isTruncated = $v.isTruncated;
      _marker = $v.marker;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListGroupsResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListGroupsResponse;
  }

  @override
  void update(void Function(ListGroupsResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListGroupsResponse build() => _build();

  _$ListGroupsResponse _build() {
    _$ListGroupsResponse _$result;
    try {
      _$result = _$v ??
          new _$ListGroupsResponse._(
              groups: groups.build(),
              isTruncated: BuiltValueNullFieldError.checkNotNull(
                  isTruncated, r'ListGroupsResponse', 'isTruncated'),
              marker: marker);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'groups';
        groups.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ListGroupsResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
