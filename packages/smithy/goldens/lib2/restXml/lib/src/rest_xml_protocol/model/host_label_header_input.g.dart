// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_xml_v2.rest_xml_protocol.model.host_label_header_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HostLabelHeaderInput extends HostLabelHeaderInput {
  @override
  final String accountId;

  factory _$HostLabelHeaderInput(
          [void Function(HostLabelHeaderInputBuilder)? updates]) =>
      (new HostLabelHeaderInputBuilder()..update(updates))._build();

  _$HostLabelHeaderInput._({required this.accountId}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        accountId, r'HostLabelHeaderInput', 'accountId');
  }

  @override
  HostLabelHeaderInput rebuild(
          void Function(HostLabelHeaderInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HostLabelHeaderInputBuilder toBuilder() =>
      new HostLabelHeaderInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HostLabelHeaderInput && accountId == other.accountId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, accountId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class HostLabelHeaderInputBuilder
    implements Builder<HostLabelHeaderInput, HostLabelHeaderInputBuilder> {
  _$HostLabelHeaderInput? _$v;

  String? _accountId;
  String? get accountId => _$this._accountId;
  set accountId(String? accountId) => _$this._accountId = accountId;

  HostLabelHeaderInputBuilder() {
    HostLabelHeaderInput._init(this);
  }

  HostLabelHeaderInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accountId = $v.accountId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HostLabelHeaderInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HostLabelHeaderInput;
  }

  @override
  void update(void Function(HostLabelHeaderInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HostLabelHeaderInput build() => _build();

  _$HostLabelHeaderInput _build() {
    final _$result = _$v ??
        new _$HostLabelHeaderInput._(
            accountId: BuiltValueNullFieldError.checkNotNull(
                accountId, r'HostLabelHeaderInput', 'accountId'));
    replace(_$result);
    return _$result;
  }
}

class _$HostLabelHeaderInputPayload extends HostLabelHeaderInputPayload {
  factory _$HostLabelHeaderInputPayload(
          [void Function(HostLabelHeaderInputPayloadBuilder)? updates]) =>
      (new HostLabelHeaderInputPayloadBuilder()..update(updates))._build();

  _$HostLabelHeaderInputPayload._() : super._();

  @override
  HostLabelHeaderInputPayload rebuild(
          void Function(HostLabelHeaderInputPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HostLabelHeaderInputPayloadBuilder toBuilder() =>
      new HostLabelHeaderInputPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HostLabelHeaderInputPayload;
  }

  @override
  int get hashCode {
    return 827052485;
  }
}

class HostLabelHeaderInputPayloadBuilder
    implements
        Builder<HostLabelHeaderInputPayload,
            HostLabelHeaderInputPayloadBuilder> {
  _$HostLabelHeaderInputPayload? _$v;

  HostLabelHeaderInputPayloadBuilder() {
    HostLabelHeaderInputPayload._init(this);
  }

  @override
  void replace(HostLabelHeaderInputPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HostLabelHeaderInputPayload;
  }

  @override
  void update(void Function(HostLabelHeaderInputPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HostLabelHeaderInputPayload build() => _build();

  _$HostLabelHeaderInputPayload _build() {
    final _$result = _$v ?? new _$HostLabelHeaderInputPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
