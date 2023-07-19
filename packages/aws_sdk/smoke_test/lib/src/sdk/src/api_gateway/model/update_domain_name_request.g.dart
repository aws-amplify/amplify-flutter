// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_domain_name_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateDomainNameRequest extends UpdateDomainNameRequest {
  @override
  final String domainName;
  @override
  final _i4.BuiltList<_i3.PatchOperation>? patchOperations;

  factory _$UpdateDomainNameRequest(
          [void Function(UpdateDomainNameRequestBuilder)? updates]) =>
      (new UpdateDomainNameRequestBuilder()..update(updates))._build();

  _$UpdateDomainNameRequest._({required this.domainName, this.patchOperations})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        domainName, r'UpdateDomainNameRequest', 'domainName');
  }

  @override
  UpdateDomainNameRequest rebuild(
          void Function(UpdateDomainNameRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateDomainNameRequestBuilder toBuilder() =>
      new UpdateDomainNameRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateDomainNameRequest &&
        domainName == other.domainName &&
        patchOperations == other.patchOperations;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, domainName.hashCode);
    _$hash = $jc(_$hash, patchOperations.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class UpdateDomainNameRequestBuilder
    implements
        Builder<UpdateDomainNameRequest, UpdateDomainNameRequestBuilder> {
  _$UpdateDomainNameRequest? _$v;

  String? _domainName;
  String? get domainName => _$this._domainName;
  set domainName(String? domainName) => _$this._domainName = domainName;

  _i4.ListBuilder<_i3.PatchOperation>? _patchOperations;
  _i4.ListBuilder<_i3.PatchOperation> get patchOperations =>
      _$this._patchOperations ??= new _i4.ListBuilder<_i3.PatchOperation>();
  set patchOperations(_i4.ListBuilder<_i3.PatchOperation>? patchOperations) =>
      _$this._patchOperations = patchOperations;

  UpdateDomainNameRequestBuilder();

  UpdateDomainNameRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _domainName = $v.domainName;
      _patchOperations = $v.patchOperations?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateDomainNameRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateDomainNameRequest;
  }

  @override
  void update(void Function(UpdateDomainNameRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateDomainNameRequest build() => _build();

  _$UpdateDomainNameRequest _build() {
    _$UpdateDomainNameRequest _$result;
    try {
      _$result = _$v ??
          new _$UpdateDomainNameRequest._(
              domainName: BuiltValueNullFieldError.checkNotNull(
                  domainName, r'UpdateDomainNameRequest', 'domainName'),
              patchOperations: _patchOperations?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'patchOperations';
        _patchOperations?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UpdateDomainNameRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$UpdateDomainNameRequestPayload extends UpdateDomainNameRequestPayload {
  @override
  final _i4.BuiltList<_i3.PatchOperation>? patchOperations;

  factory _$UpdateDomainNameRequestPayload(
          [void Function(UpdateDomainNameRequestPayloadBuilder)? updates]) =>
      (new UpdateDomainNameRequestPayloadBuilder()..update(updates))._build();

  _$UpdateDomainNameRequestPayload._({this.patchOperations}) : super._();

  @override
  UpdateDomainNameRequestPayload rebuild(
          void Function(UpdateDomainNameRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateDomainNameRequestPayloadBuilder toBuilder() =>
      new UpdateDomainNameRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateDomainNameRequestPayload &&
        patchOperations == other.patchOperations;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, patchOperations.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class UpdateDomainNameRequestPayloadBuilder
    implements
        Builder<UpdateDomainNameRequestPayload,
            UpdateDomainNameRequestPayloadBuilder> {
  _$UpdateDomainNameRequestPayload? _$v;

  _i4.ListBuilder<_i3.PatchOperation>? _patchOperations;
  _i4.ListBuilder<_i3.PatchOperation> get patchOperations =>
      _$this._patchOperations ??= new _i4.ListBuilder<_i3.PatchOperation>();
  set patchOperations(_i4.ListBuilder<_i3.PatchOperation>? patchOperations) =>
      _$this._patchOperations = patchOperations;

  UpdateDomainNameRequestPayloadBuilder();

  UpdateDomainNameRequestPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _patchOperations = $v.patchOperations?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateDomainNameRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateDomainNameRequestPayload;
  }

  @override
  void update(void Function(UpdateDomainNameRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateDomainNameRequestPayload build() => _build();

  _$UpdateDomainNameRequestPayload _build() {
    _$UpdateDomainNameRequestPayload _$result;
    try {
      _$result = _$v ??
          new _$UpdateDomainNameRequestPayload._(
              patchOperations: _patchOperations?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'patchOperations';
        _patchOperations?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UpdateDomainNameRequestPayload', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
