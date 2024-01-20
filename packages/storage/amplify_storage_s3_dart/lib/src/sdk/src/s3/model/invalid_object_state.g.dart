// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invalid_object_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InvalidObjectState extends InvalidObjectState {
  @override
  final StorageClass? storageClass;
  @override
  final IntelligentTieringAccessTier? accessTier;
  @override
  final Map<String, String>? headers;

  factory _$InvalidObjectState(
          [void Function(InvalidObjectStateBuilder)? updates]) =>
      (new InvalidObjectStateBuilder()..update(updates))._build();

  _$InvalidObjectState._({this.storageClass, this.accessTier, this.headers})
      : super._();

  @override
  InvalidObjectState rebuild(
          void Function(InvalidObjectStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InvalidObjectStateBuilder toBuilder() =>
      new InvalidObjectStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InvalidObjectState &&
        storageClass == other.storageClass &&
        accessTier == other.accessTier;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, storageClass.hashCode);
    _$hash = $jc(_$hash, accessTier.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class InvalidObjectStateBuilder
    implements Builder<InvalidObjectState, InvalidObjectStateBuilder> {
  _$InvalidObjectState? _$v;

  StorageClass? _storageClass;
  StorageClass? get storageClass => _$this._storageClass;
  set storageClass(StorageClass? storageClass) =>
      _$this._storageClass = storageClass;

  IntelligentTieringAccessTier? _accessTier;
  IntelligentTieringAccessTier? get accessTier => _$this._accessTier;
  set accessTier(IntelligentTieringAccessTier? accessTier) =>
      _$this._accessTier = accessTier;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  InvalidObjectStateBuilder();

  InvalidObjectStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _storageClass = $v.storageClass;
      _accessTier = $v.accessTier;
      _headers = $v.headers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InvalidObjectState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InvalidObjectState;
  }

  @override
  void update(void Function(InvalidObjectStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InvalidObjectState build() => _build();

  _$InvalidObjectState _build() {
    final _$result = _$v ??
        new _$InvalidObjectState._(
            storageClass: storageClass,
            accessTier: accessTier,
            headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
