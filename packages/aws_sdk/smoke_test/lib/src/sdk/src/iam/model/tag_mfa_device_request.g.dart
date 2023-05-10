// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.tag_mfa_device_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TagMfaDeviceRequest extends TagMfaDeviceRequest {
  @override
  final String serialNumber;
  @override
  final _i4.BuiltList<_i3.Tag> tags;

  factory _$TagMfaDeviceRequest(
          [void Function(TagMfaDeviceRequestBuilder)? updates]) =>
      (new TagMfaDeviceRequestBuilder()..update(updates))._build();

  _$TagMfaDeviceRequest._({required this.serialNumber, required this.tags})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        serialNumber, r'TagMfaDeviceRequest', 'serialNumber');
    BuiltValueNullFieldError.checkNotNull(tags, r'TagMfaDeviceRequest', 'tags');
  }

  @override
  TagMfaDeviceRequest rebuild(
          void Function(TagMfaDeviceRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TagMfaDeviceRequestBuilder toBuilder() =>
      new TagMfaDeviceRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TagMfaDeviceRequest &&
        serialNumber == other.serialNumber &&
        tags == other.tags;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, serialNumber.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class TagMfaDeviceRequestBuilder
    implements Builder<TagMfaDeviceRequest, TagMfaDeviceRequestBuilder> {
  _$TagMfaDeviceRequest? _$v;

  String? _serialNumber;
  String? get serialNumber => _$this._serialNumber;
  set serialNumber(String? serialNumber) => _$this._serialNumber = serialNumber;

  _i4.ListBuilder<_i3.Tag>? _tags;
  _i4.ListBuilder<_i3.Tag> get tags =>
      _$this._tags ??= new _i4.ListBuilder<_i3.Tag>();
  set tags(_i4.ListBuilder<_i3.Tag>? tags) => _$this._tags = tags;

  TagMfaDeviceRequestBuilder() {
    TagMfaDeviceRequest._init(this);
  }

  TagMfaDeviceRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _serialNumber = $v.serialNumber;
      _tags = $v.tags.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TagMfaDeviceRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TagMfaDeviceRequest;
  }

  @override
  void update(void Function(TagMfaDeviceRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TagMfaDeviceRequest build() => _build();

  _$TagMfaDeviceRequest _build() {
    _$TagMfaDeviceRequest _$result;
    try {
      _$result = _$v ??
          new _$TagMfaDeviceRequest._(
              serialNumber: BuiltValueNullFieldError.checkNotNull(
                  serialNumber, r'TagMfaDeviceRequest', 'serialNumber'),
              tags: tags.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tags';
        tags.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'TagMfaDeviceRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
