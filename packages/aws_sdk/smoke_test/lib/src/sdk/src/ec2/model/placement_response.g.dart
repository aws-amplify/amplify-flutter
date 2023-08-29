// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'placement_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PlacementResponse extends PlacementResponse {
  @override
  final String? groupName;

  factory _$PlacementResponse(
          [void Function(PlacementResponseBuilder)? updates]) =>
      (new PlacementResponseBuilder()..update(updates))._build();

  _$PlacementResponse._({this.groupName}) : super._();

  @override
  PlacementResponse rebuild(void Function(PlacementResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PlacementResponseBuilder toBuilder() =>
      new PlacementResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PlacementResponse && groupName == other.groupName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, groupName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PlacementResponseBuilder
    implements Builder<PlacementResponse, PlacementResponseBuilder> {
  _$PlacementResponse? _$v;

  String? _groupName;
  String? get groupName => _$this._groupName;
  set groupName(String? groupName) => _$this._groupName = groupName;

  PlacementResponseBuilder();

  PlacementResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _groupName = $v.groupName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PlacementResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PlacementResponse;
  }

  @override
  void update(void Function(PlacementResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PlacementResponse build() => _build();

  _$PlacementResponse _build() {
    final _$result = _$v ?? new _$PlacementResponse._(groupName: groupName);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
