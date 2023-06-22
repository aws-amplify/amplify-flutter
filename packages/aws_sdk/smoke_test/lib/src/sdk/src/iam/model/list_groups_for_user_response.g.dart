// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_groups_for_user_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListGroupsForUserResponse extends ListGroupsForUserResponse {
  @override
  final _i3.BuiltList<_i2.Group> groups;
  @override
  final bool isTruncated;
  @override
  final String? marker;

  factory _$ListGroupsForUserResponse(
          [void Function(ListGroupsForUserResponseBuilder)? updates]) =>
      (new ListGroupsForUserResponseBuilder()..update(updates))._build();

  _$ListGroupsForUserResponse._(
      {required this.groups, required this.isTruncated, this.marker})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        groups, r'ListGroupsForUserResponse', 'groups');
    BuiltValueNullFieldError.checkNotNull(
        isTruncated, r'ListGroupsForUserResponse', 'isTruncated');
  }

  @override
  ListGroupsForUserResponse rebuild(
          void Function(ListGroupsForUserResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListGroupsForUserResponseBuilder toBuilder() =>
      new ListGroupsForUserResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListGroupsForUserResponse &&
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

class ListGroupsForUserResponseBuilder
    implements
        Builder<ListGroupsForUserResponse, ListGroupsForUserResponseBuilder> {
  _$ListGroupsForUserResponse? _$v;

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

  ListGroupsForUserResponseBuilder() {
    ListGroupsForUserResponse._init(this);
  }

  ListGroupsForUserResponseBuilder get _$this {
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
  void replace(ListGroupsForUserResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListGroupsForUserResponse;
  }

  @override
  void update(void Function(ListGroupsForUserResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListGroupsForUserResponse build() => _build();

  _$ListGroupsForUserResponse _build() {
    _$ListGroupsForUserResponse _$result;
    try {
      _$result = _$v ??
          new _$ListGroupsForUserResponse._(
              groups: groups.build(),
              isTruncated: BuiltValueNullFieldError.checkNotNull(
                  isTruncated, r'ListGroupsForUserResponse', 'isTruncated'),
              marker: marker);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'groups';
        groups.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ListGroupsForUserResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
