// ignore_for_file: camel_case_types, non_constant_identifier_names, require_trailing_commas, sort_constructors_first

// AUTO GENERATED FILE, DO NOT EDIT.
//
// Generated by `package:ffigen`.
// ignore_for_file: type=lint
import 'dart:ffi' as ffi;
import './core_foundation.bindings.g.dart' as coreFoundation;

/// Bindings for the Security Framework
class Security {
  /// Holds the symbol lookup function.
  final ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
  _lookup;

  /// The symbols are looked up in [dynamicLibrary].
  Security(ffi.DynamicLibrary dynamicLibrary) : _lookup = dynamicLibrary.lookup;

  /// The symbols are looked up with [lookup].
  Security.fromLookup(
    ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName) lookup,
  ) : _lookup = lookup;

  coreFoundation.CFStringRef SecCopyErrorMessageString(
    int status,
    ffi.Pointer<ffi.Void> reserved,
  ) {
    return _SecCopyErrorMessageString(status, reserved);
  }

  late final _SecCopyErrorMessageStringPtr = _lookup<
    ffi.NativeFunction<
      coreFoundation.CFStringRef Function(OSStatus, ffi.Pointer<ffi.Void>)
    >
  >('SecCopyErrorMessageString');
  late final _SecCopyErrorMessageString =
      _SecCopyErrorMessageStringPtr.asFunction<
        coreFoundation.CFStringRef Function(int, ffi.Pointer<ffi.Void>)
      >();

  late final ffi.Pointer<CFBooleanRef> _kCFBooleanTrue = _lookup<CFBooleanRef>(
    'kCFBooleanTrue',
  );

  CFBooleanRef get kCFBooleanTrue => _kCFBooleanTrue.value;

  set kCFBooleanTrue(CFBooleanRef value) => _kCFBooleanTrue.value = value;

  late final ffi.Pointer<coreFoundation.CFStringRef> _kSecClass =
      _lookup<coreFoundation.CFStringRef>('kSecClass');

  coreFoundation.CFStringRef get kSecClass => _kSecClass.value;

  set kSecClass(coreFoundation.CFStringRef value) => _kSecClass.value = value;

  late final ffi.Pointer<coreFoundation.CFStringRef> _kSecClassGenericPassword =
      _lookup<coreFoundation.CFStringRef>('kSecClassGenericPassword');

  coreFoundation.CFStringRef get kSecClassGenericPassword =>
      _kSecClassGenericPassword.value;

  set kSecClassGenericPassword(coreFoundation.CFStringRef value) =>
      _kSecClassGenericPassword.value = value;

  late final ffi.Pointer<coreFoundation.CFStringRef> _kSecAttrAccessible =
      _lookup<coreFoundation.CFStringRef>('kSecAttrAccessible');

  coreFoundation.CFStringRef get kSecAttrAccessible =>
      _kSecAttrAccessible.value;

  set kSecAttrAccessible(coreFoundation.CFStringRef value) =>
      _kSecAttrAccessible.value = value;

  late final ffi.Pointer<coreFoundation.CFStringRef> _kSecAttrAccessGroup =
      _lookup<coreFoundation.CFStringRef>('kSecAttrAccessGroup');

  coreFoundation.CFStringRef get kSecAttrAccessGroup =>
      _kSecAttrAccessGroup.value;

  set kSecAttrAccessGroup(coreFoundation.CFStringRef value) =>
      _kSecAttrAccessGroup.value = value;

  late final ffi.Pointer<coreFoundation.CFStringRef> _kSecAttrAccount =
      _lookup<coreFoundation.CFStringRef>('kSecAttrAccount');

  coreFoundation.CFStringRef get kSecAttrAccount => _kSecAttrAccount.value;

  set kSecAttrAccount(coreFoundation.CFStringRef value) =>
      _kSecAttrAccount.value = value;

  late final ffi.Pointer<coreFoundation.CFStringRef> _kSecAttrService =
      _lookup<coreFoundation.CFStringRef>('kSecAttrService');

  coreFoundation.CFStringRef get kSecAttrService => _kSecAttrService.value;

  set kSecAttrService(coreFoundation.CFStringRef value) =>
      _kSecAttrService.value = value;

  late final ffi.Pointer<coreFoundation.CFStringRef>
  _kSecAttrAccessibleWhenUnlocked = _lookup<coreFoundation.CFStringRef>(
    'kSecAttrAccessibleWhenUnlocked',
  );

  coreFoundation.CFStringRef get kSecAttrAccessibleWhenUnlocked =>
      _kSecAttrAccessibleWhenUnlocked.value;

  set kSecAttrAccessibleWhenUnlocked(coreFoundation.CFStringRef value) =>
      _kSecAttrAccessibleWhenUnlocked.value = value;

  late final ffi.Pointer<coreFoundation.CFStringRef>
  _kSecAttrAccessibleAfterFirstUnlock = _lookup<coreFoundation.CFStringRef>(
    'kSecAttrAccessibleAfterFirstUnlock',
  );

  coreFoundation.CFStringRef get kSecAttrAccessibleAfterFirstUnlock =>
      _kSecAttrAccessibleAfterFirstUnlock.value;

  set kSecAttrAccessibleAfterFirstUnlock(coreFoundation.CFStringRef value) =>
      _kSecAttrAccessibleAfterFirstUnlock.value = value;

  late final ffi.Pointer<coreFoundation.CFStringRef>
  _kSecAttrAccessibleWhenPasscodeSetThisDeviceOnly =
      _lookup<coreFoundation.CFStringRef>(
        'kSecAttrAccessibleWhenPasscodeSetThisDeviceOnly',
      );

  coreFoundation.CFStringRef
  get kSecAttrAccessibleWhenPasscodeSetThisDeviceOnly =>
      _kSecAttrAccessibleWhenPasscodeSetThisDeviceOnly.value;

  set kSecAttrAccessibleWhenPasscodeSetThisDeviceOnly(
    coreFoundation.CFStringRef value,
  ) => _kSecAttrAccessibleWhenPasscodeSetThisDeviceOnly.value = value;

  late final ffi.Pointer<coreFoundation.CFStringRef>
  _kSecAttrAccessibleWhenUnlockedThisDeviceOnly =
      _lookup<coreFoundation.CFStringRef>(
        'kSecAttrAccessibleWhenUnlockedThisDeviceOnly',
      );

  coreFoundation.CFStringRef get kSecAttrAccessibleWhenUnlockedThisDeviceOnly =>
      _kSecAttrAccessibleWhenUnlockedThisDeviceOnly.value;

  set kSecAttrAccessibleWhenUnlockedThisDeviceOnly(
    coreFoundation.CFStringRef value,
  ) => _kSecAttrAccessibleWhenUnlockedThisDeviceOnly.value = value;

  late final ffi.Pointer<coreFoundation.CFStringRef>
  _kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly =
      _lookup<coreFoundation.CFStringRef>(
        'kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly',
      );

  coreFoundation.CFStringRef
  get kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly =>
      _kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly.value;

  set kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly(
    coreFoundation.CFStringRef value,
  ) => _kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly.value = value;

  late final ffi.Pointer<coreFoundation.CFStringRef> _kSecMatchLimit =
      _lookup<coreFoundation.CFStringRef>('kSecMatchLimit');

  coreFoundation.CFStringRef get kSecMatchLimit => _kSecMatchLimit.value;

  set kSecMatchLimit(coreFoundation.CFStringRef value) =>
      _kSecMatchLimit.value = value;

  late final ffi.Pointer<coreFoundation.CFStringRef> _kSecMatchLimitOne =
      _lookup<coreFoundation.CFStringRef>('kSecMatchLimitOne');

  coreFoundation.CFStringRef get kSecMatchLimitOne => _kSecMatchLimitOne.value;

  set kSecMatchLimitOne(coreFoundation.CFStringRef value) =>
      _kSecMatchLimitOne.value = value;

  late final ffi.Pointer<coreFoundation.CFStringRef> _kSecMatchLimitAll =
      _lookup<coreFoundation.CFStringRef>('kSecMatchLimitAll');

  coreFoundation.CFStringRef get kSecMatchLimitAll => _kSecMatchLimitAll.value;

  set kSecMatchLimitAll(coreFoundation.CFStringRef value) =>
      _kSecMatchLimitAll.value = value;

  late final ffi.Pointer<coreFoundation.CFStringRef> _kSecReturnData =
      _lookup<coreFoundation.CFStringRef>('kSecReturnData');

  coreFoundation.CFStringRef get kSecReturnData => _kSecReturnData.value;

  set kSecReturnData(coreFoundation.CFStringRef value) =>
      _kSecReturnData.value = value;

  late final ffi.Pointer<coreFoundation.CFStringRef> _kSecValueData =
      _lookup<coreFoundation.CFStringRef>('kSecValueData');

  coreFoundation.CFStringRef get kSecValueData => _kSecValueData.value;

  set kSecValueData(coreFoundation.CFStringRef value) =>
      _kSecValueData.value = value;

  late final ffi.Pointer<coreFoundation.CFStringRef>
  _kSecUseDataProtectionKeychain = _lookup<coreFoundation.CFStringRef>(
    'kSecUseDataProtectionKeychain',
  );

  coreFoundation.CFStringRef get kSecUseDataProtectionKeychain =>
      _kSecUseDataProtectionKeychain.value;

  set kSecUseDataProtectionKeychain(coreFoundation.CFStringRef value) =>
      _kSecUseDataProtectionKeychain.value = value;

  int SecItemCopyMatching(
    coreFoundation.CFDictionaryRef query,
    ffi.Pointer<coreFoundation.CFTypeRef> result,
  ) {
    return _SecItemCopyMatching(query, result);
  }

  late final _SecItemCopyMatchingPtr = _lookup<
    ffi.NativeFunction<
      OSStatus Function(
        coreFoundation.CFDictionaryRef,
        ffi.Pointer<coreFoundation.CFTypeRef>,
      )
    >
  >('SecItemCopyMatching');
  late final _SecItemCopyMatching =
      _SecItemCopyMatchingPtr.asFunction<
        int Function(
          coreFoundation.CFDictionaryRef,
          ffi.Pointer<coreFoundation.CFTypeRef>,
        )
      >();

  int SecItemAdd(
    coreFoundation.CFDictionaryRef attributes,
    ffi.Pointer<coreFoundation.CFTypeRef> result,
  ) {
    return _SecItemAdd(attributes, result);
  }

  late final _SecItemAddPtr = _lookup<
    ffi.NativeFunction<
      OSStatus Function(
        coreFoundation.CFDictionaryRef,
        ffi.Pointer<coreFoundation.CFTypeRef>,
      )
    >
  >('SecItemAdd');
  late final _SecItemAdd =
      _SecItemAddPtr.asFunction<
        int Function(
          coreFoundation.CFDictionaryRef,
          ffi.Pointer<coreFoundation.CFTypeRef>,
        )
      >();

  int SecItemUpdate(
    coreFoundation.CFDictionaryRef query,
    coreFoundation.CFDictionaryRef attributesToUpdate,
  ) {
    return _SecItemUpdate(query, attributesToUpdate);
  }

  late final _SecItemUpdatePtr = _lookup<
    ffi.NativeFunction<
      OSStatus Function(
        coreFoundation.CFDictionaryRef,
        coreFoundation.CFDictionaryRef,
      )
    >
  >('SecItemUpdate');
  late final _SecItemUpdate =
      _SecItemUpdatePtr.asFunction<
        int Function(
          coreFoundation.CFDictionaryRef,
          coreFoundation.CFDictionaryRef,
        )
      >();

  int SecItemDelete(coreFoundation.CFDictionaryRef query) {
    return _SecItemDelete(query);
  }

  late final _SecItemDeletePtr = _lookup<
    ffi.NativeFunction<OSStatus Function(coreFoundation.CFDictionaryRef)>
  >('SecItemDelete');
  late final _SecItemDelete =
      _SecItemDeletePtr.asFunction<
        int Function(coreFoundation.CFDictionaryRef)
      >();
}

typedef OSStatus = SInt32;
typedef SInt32 = ffi.Int;
typedef CFBooleanRef = ffi.Pointer<__CFBoolean>;

final class __CFBoolean extends ffi.Opaque {}

const int errSecSuccess = 0;

const int errSecUserCanceled = -128;

const int errSecMissingEntitlement = -34018;

const int errSecAuthFailed = -25293;

const int errSecDuplicateItem = -25299;

const int errSecItemNotFound = -25300;

const int errSecInteractionRequired = -25315;

const int errSecInvalidOwnerEdit = -25244;
