// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'srp_init_worker.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializers _$serializers = (new Serializers().toBuilder()
      ..add(SrpInitMessage.serializer)
      ..add(SrpInitResult.serializer))
    .build();
Serializer<SrpInitMessage> _$srpInitMessageSerializer =
    new _$SrpInitMessageSerializer();

class _$SrpInitMessageSerializer
    implements StructuredSerializer<SrpInitMessage> {
  @override
  final Iterable<Type> types = const [SrpInitMessage, _$SrpInitMessage];
  @override
  final String wireName = 'SrpInitMessage';

  @override
  Iterable<Object?> serialize(Serializers serializers, SrpInitMessage object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  SrpInitMessage deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new SrpInitMessageBuilder().build();
  }
}

class _$SrpInitMessage extends SrpInitMessage {
  factory _$SrpInitMessage([void Function(SrpInitMessageBuilder)? updates]) =>
      (new SrpInitMessageBuilder()..update(updates))._build();

  _$SrpInitMessage._() : super._();

  @override
  SrpInitMessage rebuild(void Function(SrpInitMessageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SrpInitMessageBuilder toBuilder() =>
      new SrpInitMessageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SrpInitMessage;
  }

  @override
  int get hashCode {
    return 812384468;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'SrpInitMessage').toString();
  }
}

class SrpInitMessageBuilder
    implements Builder<SrpInitMessage, SrpInitMessageBuilder> {
  _$SrpInitMessage? _$v;

  SrpInitMessageBuilder();

  @override
  void replace(SrpInitMessage other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SrpInitMessage;
  }

  @override
  void update(void Function(SrpInitMessageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SrpInitMessage build() => _build();

  _$SrpInitMessage _build() {
    final _$result = _$v ?? new _$SrpInitMessage._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
