// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attach_network_interface_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AttachNetworkInterfaceResult extends AttachNetworkInterfaceResult {
  @override
  final String? attachmentId;
  @override
  final int networkCardIndex;

  factory _$AttachNetworkInterfaceResult(
          [void Function(AttachNetworkInterfaceResultBuilder)? updates]) =>
      (new AttachNetworkInterfaceResultBuilder()..update(updates))._build();

  _$AttachNetworkInterfaceResult._(
      {this.attachmentId, required this.networkCardIndex})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        networkCardIndex, r'AttachNetworkInterfaceResult', 'networkCardIndex');
  }

  @override
  AttachNetworkInterfaceResult rebuild(
          void Function(AttachNetworkInterfaceResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AttachNetworkInterfaceResultBuilder toBuilder() =>
      new AttachNetworkInterfaceResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AttachNetworkInterfaceResult &&
        attachmentId == other.attachmentId &&
        networkCardIndex == other.networkCardIndex;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, attachmentId.hashCode);
    _$hash = $jc(_$hash, networkCardIndex.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AttachNetworkInterfaceResultBuilder
    implements
        Builder<AttachNetworkInterfaceResult,
            AttachNetworkInterfaceResultBuilder> {
  _$AttachNetworkInterfaceResult? _$v;

  String? _attachmentId;
  String? get attachmentId => _$this._attachmentId;
  set attachmentId(String? attachmentId) => _$this._attachmentId = attachmentId;

  int? _networkCardIndex;
  int? get networkCardIndex => _$this._networkCardIndex;
  set networkCardIndex(int? networkCardIndex) =>
      _$this._networkCardIndex = networkCardIndex;

  AttachNetworkInterfaceResultBuilder() {
    AttachNetworkInterfaceResult._init(this);
  }

  AttachNetworkInterfaceResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _attachmentId = $v.attachmentId;
      _networkCardIndex = $v.networkCardIndex;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AttachNetworkInterfaceResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AttachNetworkInterfaceResult;
  }

  @override
  void update(void Function(AttachNetworkInterfaceResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AttachNetworkInterfaceResult build() => _build();

  _$AttachNetworkInterfaceResult _build() {
    final _$result = _$v ??
        new _$AttachNetworkInterfaceResult._(
            attachmentId: attachmentId,
            networkCardIndex: BuiltValueNullFieldError.checkNotNull(
                networkCardIndex,
                r'AttachNetworkInterfaceResult',
                'networkCardIndex'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
