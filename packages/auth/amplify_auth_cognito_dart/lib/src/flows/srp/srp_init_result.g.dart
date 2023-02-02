// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'srp_init_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SrpInitResult> _$srpInitResultSerializer =
    new _$SrpInitResultSerializer();

class _$SrpInitResultSerializer implements StructuredSerializer<SrpInitResult> {
  @override
  final Iterable<Type> types = const [SrpInitResult, _$SrpInitResult];
  @override
  final String wireName = 'SrpInitResult';

  @override
  Iterable<Object?> serialize(Serializers serializers, SrpInitResult object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'privateA',
      serializers.serialize(object.privateA,
          specifiedType: const FullType(BigInt)),
      'publicA',
      serializers.serialize(object.publicA,
          specifiedType: const FullType(BigInt)),
    ];

    return result;
  }

  @override
  SrpInitResult deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SrpInitResultBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'privateA':
          result.privateA = serializers.deserialize(value,
              specifiedType: const FullType(BigInt))! as BigInt;
          break;
        case 'publicA':
          result.publicA = serializers.deserialize(value,
              specifiedType: const FullType(BigInt))! as BigInt;
          break;
      }
    }

    return result.build();
  }
}

class _$SrpInitResult extends SrpInitResult {
  @override
  final BigInt privateA;
  @override
  final BigInt publicA;

  factory _$SrpInitResult([void Function(SrpInitResultBuilder)? updates]) =>
      (new SrpInitResultBuilder()..update(updates))._build();

  _$SrpInitResult._({required this.privateA, required this.publicA})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        privateA, r'SrpInitResult', 'privateA');
    BuiltValueNullFieldError.checkNotNull(publicA, r'SrpInitResult', 'publicA');
  }

  @override
  SrpInitResult rebuild(void Function(SrpInitResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SrpInitResultBuilder toBuilder() => new SrpInitResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SrpInitResult &&
        privateA == other.privateA &&
        publicA == other.publicA;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, privateA.hashCode);
    _$hash = $jc(_$hash, publicA.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SrpInitResult')
          ..add('privateA', privateA)
          ..add('publicA', publicA))
        .toString();
  }
}

class SrpInitResultBuilder
    implements Builder<SrpInitResult, SrpInitResultBuilder> {
  _$SrpInitResult? _$v;

  BigInt? _privateA;
  BigInt? get privateA => _$this._privateA;
  set privateA(BigInt? privateA) => _$this._privateA = privateA;

  BigInt? _publicA;
  BigInt? get publicA => _$this._publicA;
  set publicA(BigInt? publicA) => _$this._publicA = publicA;

  SrpInitResultBuilder();

  SrpInitResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _privateA = $v.privateA;
      _publicA = $v.publicA;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SrpInitResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SrpInitResult;
  }

  @override
  void update(void Function(SrpInitResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SrpInitResult build() => _build();

  _$SrpInitResult _build() {
    final _$result = _$v ??
        new _$SrpInitResult._(
            privateA: BuiltValueNullFieldError.checkNotNull(
                privateA, r'SrpInitResult', 'privateA'),
            publicA: BuiltValueNullFieldError.checkNotNull(
                publicA, r'SrpInitResult', 'publicA'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
