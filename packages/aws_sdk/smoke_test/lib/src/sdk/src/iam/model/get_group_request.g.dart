// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.get_group_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetGroupRequest extends GetGroupRequest {
  @override
  final String groupName;
  @override
  final String? marker;
  @override
  final int? maxItems;

  factory _$GetGroupRequest([void Function(GetGroupRequestBuilder)? updates]) =>
      (new GetGroupRequestBuilder()..update(updates))._build();

  _$GetGroupRequest._({required this.groupName, this.marker, this.maxItems})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        groupName, r'GetGroupRequest', 'groupName');
  }

  @override
  GetGroupRequest rebuild(void Function(GetGroupRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetGroupRequestBuilder toBuilder() =>
      new GetGroupRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetGroupRequest &&
        groupName == other.groupName &&
        marker == other.marker &&
        maxItems == other.maxItems;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, groupName.hashCode);
    _$hash = $jc(_$hash, marker.hashCode);
    _$hash = $jc(_$hash, maxItems.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetGroupRequestBuilder
    implements Builder<GetGroupRequest, GetGroupRequestBuilder> {
  _$GetGroupRequest? _$v;

  String? _groupName;
  String? get groupName => _$this._groupName;
  set groupName(String? groupName) => _$this._groupName = groupName;

  String? _marker;
  String? get marker => _$this._marker;
  set marker(String? marker) => _$this._marker = marker;

  int? _maxItems;
  int? get maxItems => _$this._maxItems;
  set maxItems(int? maxItems) => _$this._maxItems = maxItems;

  GetGroupRequestBuilder() {
    GetGroupRequest._init(this);
  }

  GetGroupRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _groupName = $v.groupName;
      _marker = $v.marker;
      _maxItems = $v.maxItems;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetGroupRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetGroupRequest;
  }

  @override
  void update(void Function(GetGroupRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetGroupRequest build() => _build();

  _$GetGroupRequest _build() {
    final _$result = _$v ??
        new _$GetGroupRequest._(
            groupName: BuiltValueNullFieldError.checkNotNull(
                groupName, r'GetGroupRequest', 'groupName'),
            marker: marker,
            maxItems: maxItems);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
