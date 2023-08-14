// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'network_interface_attachment_changes.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NetworkInterfaceAttachmentChanges
    extends NetworkInterfaceAttachmentChanges {
  @override
  final String? attachmentId;
  @override
  final bool deleteOnTermination;

  factory _$NetworkInterfaceAttachmentChanges(
          [void Function(NetworkInterfaceAttachmentChangesBuilder)? updates]) =>
      (new NetworkInterfaceAttachmentChangesBuilder()..update(updates))
          ._build();

  _$NetworkInterfaceAttachmentChanges._(
      {this.attachmentId, required this.deleteOnTermination})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(deleteOnTermination,
        r'NetworkInterfaceAttachmentChanges', 'deleteOnTermination');
  }

  @override
  NetworkInterfaceAttachmentChanges rebuild(
          void Function(NetworkInterfaceAttachmentChangesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NetworkInterfaceAttachmentChangesBuilder toBuilder() =>
      new NetworkInterfaceAttachmentChangesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NetworkInterfaceAttachmentChanges &&
        attachmentId == other.attachmentId &&
        deleteOnTermination == other.deleteOnTermination;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, attachmentId.hashCode);
    _$hash = $jc(_$hash, deleteOnTermination.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class NetworkInterfaceAttachmentChangesBuilder
    implements
        Builder<NetworkInterfaceAttachmentChanges,
            NetworkInterfaceAttachmentChangesBuilder> {
  _$NetworkInterfaceAttachmentChanges? _$v;

  String? _attachmentId;
  String? get attachmentId => _$this._attachmentId;
  set attachmentId(String? attachmentId) => _$this._attachmentId = attachmentId;

  bool? _deleteOnTermination;
  bool? get deleteOnTermination => _$this._deleteOnTermination;
  set deleteOnTermination(bool? deleteOnTermination) =>
      _$this._deleteOnTermination = deleteOnTermination;

  NetworkInterfaceAttachmentChangesBuilder() {
    NetworkInterfaceAttachmentChanges._init(this);
  }

  NetworkInterfaceAttachmentChangesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _attachmentId = $v.attachmentId;
      _deleteOnTermination = $v.deleteOnTermination;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NetworkInterfaceAttachmentChanges other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NetworkInterfaceAttachmentChanges;
  }

  @override
  void update(
      void Function(NetworkInterfaceAttachmentChangesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NetworkInterfaceAttachmentChanges build() => _build();

  _$NetworkInterfaceAttachmentChanges _build() {
    final _$result = _$v ??
        new _$NetworkInterfaceAttachmentChanges._(
            attachmentId: attachmentId,
            deleteOnTermination: BuiltValueNullFieldError.checkNotNull(
                deleteOnTermination,
                r'NetworkInterfaceAttachmentChanges',
                'deleteOnTermination'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
