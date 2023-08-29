// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modify_id_format_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModifyIdFormatRequest extends ModifyIdFormatRequest {
  @override
  final String? resource;
  @override
  final bool useLongIds;

  factory _$ModifyIdFormatRequest(
          [void Function(ModifyIdFormatRequestBuilder)? updates]) =>
      (new ModifyIdFormatRequestBuilder()..update(updates))._build();

  _$ModifyIdFormatRequest._({this.resource, required this.useLongIds})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        useLongIds, r'ModifyIdFormatRequest', 'useLongIds');
  }

  @override
  ModifyIdFormatRequest rebuild(
          void Function(ModifyIdFormatRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModifyIdFormatRequestBuilder toBuilder() =>
      new ModifyIdFormatRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModifyIdFormatRequest &&
        resource == other.resource &&
        useLongIds == other.useLongIds;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, resource.hashCode);
    _$hash = $jc(_$hash, useLongIds.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ModifyIdFormatRequestBuilder
    implements Builder<ModifyIdFormatRequest, ModifyIdFormatRequestBuilder> {
  _$ModifyIdFormatRequest? _$v;

  String? _resource;
  String? get resource => _$this._resource;
  set resource(String? resource) => _$this._resource = resource;

  bool? _useLongIds;
  bool? get useLongIds => _$this._useLongIds;
  set useLongIds(bool? useLongIds) => _$this._useLongIds = useLongIds;

  ModifyIdFormatRequestBuilder() {
    ModifyIdFormatRequest._init(this);
  }

  ModifyIdFormatRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _resource = $v.resource;
      _useLongIds = $v.useLongIds;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModifyIdFormatRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModifyIdFormatRequest;
  }

  @override
  void update(void Function(ModifyIdFormatRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ModifyIdFormatRequest build() => _build();

  _$ModifyIdFormatRequest _build() {
    final _$result = _$v ??
        new _$ModifyIdFormatRequest._(
            resource: resource,
            useLongIds: BuiltValueNullFieldError.checkNotNull(
                useLongIds, r'ModifyIdFormatRequest', 'useLongIds'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
