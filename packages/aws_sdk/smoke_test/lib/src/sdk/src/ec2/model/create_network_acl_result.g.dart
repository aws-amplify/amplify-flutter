// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_network_acl_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateNetworkAclResult extends CreateNetworkAclResult {
  @override
  final NetworkAcl? networkAcl;

  factory _$CreateNetworkAclResult(
          [void Function(CreateNetworkAclResultBuilder)? updates]) =>
      (new CreateNetworkAclResultBuilder()..update(updates))._build();

  _$CreateNetworkAclResult._({this.networkAcl}) : super._();

  @override
  CreateNetworkAclResult rebuild(
          void Function(CreateNetworkAclResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateNetworkAclResultBuilder toBuilder() =>
      new CreateNetworkAclResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateNetworkAclResult && networkAcl == other.networkAcl;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, networkAcl.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateNetworkAclResultBuilder
    implements Builder<CreateNetworkAclResult, CreateNetworkAclResultBuilder> {
  _$CreateNetworkAclResult? _$v;

  NetworkAclBuilder? _networkAcl;
  NetworkAclBuilder get networkAcl =>
      _$this._networkAcl ??= new NetworkAclBuilder();
  set networkAcl(NetworkAclBuilder? networkAcl) =>
      _$this._networkAcl = networkAcl;

  CreateNetworkAclResultBuilder();

  CreateNetworkAclResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _networkAcl = $v.networkAcl?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateNetworkAclResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateNetworkAclResult;
  }

  @override
  void update(void Function(CreateNetworkAclResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateNetworkAclResult build() => _build();

  _$CreateNetworkAclResult _build() {
    _$CreateNetworkAclResult _$result;
    try {
      _$result = _$v ??
          new _$CreateNetworkAclResult._(networkAcl: _networkAcl?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'networkAcl';
        _networkAcl?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateNetworkAclResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
