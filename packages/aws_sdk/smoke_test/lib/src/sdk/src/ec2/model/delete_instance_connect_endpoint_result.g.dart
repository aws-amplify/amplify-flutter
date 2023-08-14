// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_instance_connect_endpoint_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteInstanceConnectEndpointResult
    extends DeleteInstanceConnectEndpointResult {
  @override
  final Ec2InstanceConnectEndpoint? instanceConnectEndpoint;

  factory _$DeleteInstanceConnectEndpointResult(
          [void Function(DeleteInstanceConnectEndpointResultBuilder)?
              updates]) =>
      (new DeleteInstanceConnectEndpointResultBuilder()..update(updates))
          ._build();

  _$DeleteInstanceConnectEndpointResult._({this.instanceConnectEndpoint})
      : super._();

  @override
  DeleteInstanceConnectEndpointResult rebuild(
          void Function(DeleteInstanceConnectEndpointResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteInstanceConnectEndpointResultBuilder toBuilder() =>
      new DeleteInstanceConnectEndpointResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteInstanceConnectEndpointResult &&
        instanceConnectEndpoint == other.instanceConnectEndpoint;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, instanceConnectEndpoint.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteInstanceConnectEndpointResultBuilder
    implements
        Builder<DeleteInstanceConnectEndpointResult,
            DeleteInstanceConnectEndpointResultBuilder> {
  _$DeleteInstanceConnectEndpointResult? _$v;

  Ec2InstanceConnectEndpointBuilder? _instanceConnectEndpoint;
  Ec2InstanceConnectEndpointBuilder get instanceConnectEndpoint =>
      _$this._instanceConnectEndpoint ??=
          new Ec2InstanceConnectEndpointBuilder();
  set instanceConnectEndpoint(
          Ec2InstanceConnectEndpointBuilder? instanceConnectEndpoint) =>
      _$this._instanceConnectEndpoint = instanceConnectEndpoint;

  DeleteInstanceConnectEndpointResultBuilder();

  DeleteInstanceConnectEndpointResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _instanceConnectEndpoint = $v.instanceConnectEndpoint?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteInstanceConnectEndpointResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteInstanceConnectEndpointResult;
  }

  @override
  void update(
      void Function(DeleteInstanceConnectEndpointResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteInstanceConnectEndpointResult build() => _build();

  _$DeleteInstanceConnectEndpointResult _build() {
    _$DeleteInstanceConnectEndpointResult _$result;
    try {
      _$result = _$v ??
          new _$DeleteInstanceConnectEndpointResult._(
              instanceConnectEndpoint: _instanceConnectEndpoint?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'instanceConnectEndpoint';
        _instanceConnectEndpoint?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DeleteInstanceConnectEndpointResult',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
