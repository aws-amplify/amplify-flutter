// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.list_groups_for_user_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListGroupsForUserRequest extends ListGroupsForUserRequest {
  @override
  final String userName;
  @override
  final String? marker;
  @override
  final int? maxItems;

  factory _$ListGroupsForUserRequest(
          [void Function(ListGroupsForUserRequestBuilder)? updates]) =>
      (new ListGroupsForUserRequestBuilder()..update(updates))._build();

  _$ListGroupsForUserRequest._(
      {required this.userName, this.marker, this.maxItems})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        userName, r'ListGroupsForUserRequest', 'userName');
  }

  @override
  ListGroupsForUserRequest rebuild(
          void Function(ListGroupsForUserRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListGroupsForUserRequestBuilder toBuilder() =>
      new ListGroupsForUserRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListGroupsForUserRequest &&
        userName == other.userName &&
        marker == other.marker &&
        maxItems == other.maxItems;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, userName.hashCode);
    _$hash = $jc(_$hash, marker.hashCode);
    _$hash = $jc(_$hash, maxItems.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ListGroupsForUserRequestBuilder
    implements
        Builder<ListGroupsForUserRequest, ListGroupsForUserRequestBuilder> {
  _$ListGroupsForUserRequest? _$v;

  String? _userName;
  String? get userName => _$this._userName;
  set userName(String? userName) => _$this._userName = userName;

  String? _marker;
  String? get marker => _$this._marker;
  set marker(String? marker) => _$this._marker = marker;

  int? _maxItems;
  int? get maxItems => _$this._maxItems;
  set maxItems(int? maxItems) => _$this._maxItems = maxItems;

  ListGroupsForUserRequestBuilder() {
    ListGroupsForUserRequest._init(this);
  }

  ListGroupsForUserRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userName = $v.userName;
      _marker = $v.marker;
      _maxItems = $v.maxItems;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListGroupsForUserRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListGroupsForUserRequest;
  }

  @override
  void update(void Function(ListGroupsForUserRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListGroupsForUserRequest build() => _build();

  _$ListGroupsForUserRequest _build() {
    final _$result = _$v ??
        new _$ListGroupsForUserRequest._(
            userName: BuiltValueNullFieldError.checkNotNull(
                userName, r'ListGroupsForUserRequest', 'userName'),
            marker: marker,
            maxItems: maxItems);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
