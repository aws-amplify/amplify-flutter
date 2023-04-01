// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.untag_mfa_device_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UntagMfaDeviceRequest extends UntagMfaDeviceRequest {
  @override
  final String serialNumber;
  @override
  final _i3.BuiltList<String> tagKeys;

  factory _$UntagMfaDeviceRequest(
          [void Function(UntagMfaDeviceRequestBuilder)? updates]) =>
      (new UntagMfaDeviceRequestBuilder()..update(updates))._build();

  _$UntagMfaDeviceRequest._({required this.serialNumber, required this.tagKeys})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        serialNumber, r'UntagMfaDeviceRequest', 'serialNumber');
    BuiltValueNullFieldError.checkNotNull(
        tagKeys, r'UntagMfaDeviceRequest', 'tagKeys');
  }

  @override
  UntagMfaDeviceRequest rebuild(
          void Function(UntagMfaDeviceRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UntagMfaDeviceRequestBuilder toBuilder() =>
      new UntagMfaDeviceRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UntagMfaDeviceRequest &&
        serialNumber == other.serialNumber &&
        tagKeys == other.tagKeys;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, serialNumber.hashCode);
    _$hash = $jc(_$hash, tagKeys.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class UntagMfaDeviceRequestBuilder
    implements Builder<UntagMfaDeviceRequest, UntagMfaDeviceRequestBuilder> {
  _$UntagMfaDeviceRequest? _$v;

  String? _serialNumber;
  String? get serialNumber => _$this._serialNumber;
  set serialNumber(String? serialNumber) => _$this._serialNumber = serialNumber;

  _i3.ListBuilder<String>? _tagKeys;
  _i3.ListBuilder<String> get tagKeys =>
      _$this._tagKeys ??= new _i3.ListBuilder<String>();
  set tagKeys(_i3.ListBuilder<String>? tagKeys) => _$this._tagKeys = tagKeys;

  UntagMfaDeviceRequestBuilder() {
    UntagMfaDeviceRequest._init(this);
  }

  UntagMfaDeviceRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _serialNumber = $v.serialNumber;
      _tagKeys = $v.tagKeys.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UntagMfaDeviceRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UntagMfaDeviceRequest;
  }

  @override
  void update(void Function(UntagMfaDeviceRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UntagMfaDeviceRequest build() => _build();

  _$UntagMfaDeviceRequest _build() {
    _$UntagMfaDeviceRequest _$result;
    try {
      _$result = _$v ??
          new _$UntagMfaDeviceRequest._(
              serialNumber: BuiltValueNullFieldError.checkNotNull(
                  serialNumber, r'UntagMfaDeviceRequest', 'serialNumber'),
              tagKeys: tagKeys.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tagKeys';
        tagKeys.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UntagMfaDeviceRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
