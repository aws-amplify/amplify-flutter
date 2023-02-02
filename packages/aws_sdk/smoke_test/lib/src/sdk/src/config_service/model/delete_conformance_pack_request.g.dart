// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.delete_conformance_pack_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteConformancePackRequest extends DeleteConformancePackRequest {
  @override
  final String conformancePackName;

  factory _$DeleteConformancePackRequest(
          [void Function(DeleteConformancePackRequestBuilder)? updates]) =>
      (new DeleteConformancePackRequestBuilder()..update(updates))._build();

  _$DeleteConformancePackRequest._({required this.conformancePackName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(conformancePackName,
        r'DeleteConformancePackRequest', 'conformancePackName');
  }

  @override
  DeleteConformancePackRequest rebuild(
          void Function(DeleteConformancePackRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteConformancePackRequestBuilder toBuilder() =>
      new DeleteConformancePackRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteConformancePackRequest &&
        conformancePackName == other.conformancePackName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, conformancePackName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteConformancePackRequestBuilder
    implements
        Builder<DeleteConformancePackRequest,
            DeleteConformancePackRequestBuilder> {
  _$DeleteConformancePackRequest? _$v;

  String? _conformancePackName;
  String? get conformancePackName => _$this._conformancePackName;
  set conformancePackName(String? conformancePackName) =>
      _$this._conformancePackName = conformancePackName;

  DeleteConformancePackRequestBuilder() {
    DeleteConformancePackRequest._init(this);
  }

  DeleteConformancePackRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _conformancePackName = $v.conformancePackName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteConformancePackRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteConformancePackRequest;
  }

  @override
  void update(void Function(DeleteConformancePackRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteConformancePackRequest build() => _build();

  _$DeleteConformancePackRequest _build() {
    final _$result = _$v ??
        new _$DeleteConformancePackRequest._(
            conformancePackName: BuiltValueNullFieldError.checkNotNull(
                conformancePackName,
                r'DeleteConformancePackRequest',
                'conformancePackName'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
