// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.create_virtual_mfa_device_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateVirtualMfaDeviceRequest extends CreateVirtualMfaDeviceRequest {
  @override
  final String? path;
  @override
  final String virtualMfaDeviceName;
  @override
  final _i4.BuiltList<_i3.Tag>? tags;

  factory _$CreateVirtualMfaDeviceRequest(
          [void Function(CreateVirtualMfaDeviceRequestBuilder)? updates]) =>
      (new CreateVirtualMfaDeviceRequestBuilder()..update(updates))._build();

  _$CreateVirtualMfaDeviceRequest._(
      {this.path, required this.virtualMfaDeviceName, this.tags})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(virtualMfaDeviceName,
        r'CreateVirtualMfaDeviceRequest', 'virtualMfaDeviceName');
  }

  @override
  CreateVirtualMfaDeviceRequest rebuild(
          void Function(CreateVirtualMfaDeviceRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateVirtualMfaDeviceRequestBuilder toBuilder() =>
      new CreateVirtualMfaDeviceRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateVirtualMfaDeviceRequest &&
        path == other.path &&
        virtualMfaDeviceName == other.virtualMfaDeviceName &&
        tags == other.tags;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, path.hashCode);
    _$hash = $jc(_$hash, virtualMfaDeviceName.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateVirtualMfaDeviceRequestBuilder
    implements
        Builder<CreateVirtualMfaDeviceRequest,
            CreateVirtualMfaDeviceRequestBuilder> {
  _$CreateVirtualMfaDeviceRequest? _$v;

  String? _path;
  String? get path => _$this._path;
  set path(String? path) => _$this._path = path;

  String? _virtualMfaDeviceName;
  String? get virtualMfaDeviceName => _$this._virtualMfaDeviceName;
  set virtualMfaDeviceName(String? virtualMfaDeviceName) =>
      _$this._virtualMfaDeviceName = virtualMfaDeviceName;

  _i4.ListBuilder<_i3.Tag>? _tags;
  _i4.ListBuilder<_i3.Tag> get tags =>
      _$this._tags ??= new _i4.ListBuilder<_i3.Tag>();
  set tags(_i4.ListBuilder<_i3.Tag>? tags) => _$this._tags = tags;

  CreateVirtualMfaDeviceRequestBuilder() {
    CreateVirtualMfaDeviceRequest._init(this);
  }

  CreateVirtualMfaDeviceRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _path = $v.path;
      _virtualMfaDeviceName = $v.virtualMfaDeviceName;
      _tags = $v.tags?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateVirtualMfaDeviceRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateVirtualMfaDeviceRequest;
  }

  @override
  void update(void Function(CreateVirtualMfaDeviceRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateVirtualMfaDeviceRequest build() => _build();

  _$CreateVirtualMfaDeviceRequest _build() {
    _$CreateVirtualMfaDeviceRequest _$result;
    try {
      _$result = _$v ??
          new _$CreateVirtualMfaDeviceRequest._(
              path: path,
              virtualMfaDeviceName: BuiltValueNullFieldError.checkNotNull(
                  virtualMfaDeviceName,
                  r'CreateVirtualMfaDeviceRequest',
                  'virtualMfaDeviceName'),
              tags: _tags?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateVirtualMfaDeviceRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
