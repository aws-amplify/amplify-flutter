// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

/// Shows a Material 3 dialog prompting the user for their FIDO2 security key PIN.
///
/// This is called internally by `LinuxWebAuthnPlatform` when the authenticator
/// requires a PIN. Application developers do not need to call this directly.
///
/// If [errorMessage] is provided (e.g. `'Wrong PIN'`), the dialog displays a
/// red error banner above the PIN text field. This is used when retrying after
/// an incorrect PIN attempt.
///
/// Returns the PIN string, or `null` if the user cancels.
Future<String?> showFidoPinDialog({
  required int retriesRemaining,
  String? errorMessage,
}) async {
  // Find the current navigator overlay from the widget binding.
  final context = _findNavigatorContext();
  if (context == null) {
    return null;
  }

  return showDialog<String>(
    context: context,
    barrierDismissible: false,
    builder: (ctx) => _FidoPinDialog(
      retriesRemaining: retriesRemaining,
      errorMessage: errorMessage,
    ),
  );
}

/// Shows a "Please touch your security key" dialog with a large fingerprint
/// icon, a pulsing animation, and a Cancel button.
///
/// Returns a [FidoTouchDialogHandle] containing:
///   - `dismiss`: call when the FIDO2 operation completes to close the dialog.
///   - `cancelled`: a Future that completes with `true` if the user presses
///     Cancel, or `false` if `dismiss` is called first.
///
/// This is called internally by `LinuxWebAuthnPlatform` just before a blocking
/// libfido2 operation (credential creation or assertion).
FidoTouchDialogHandle showFidoTouchDialog() {
  final context = _findNavigatorContext();
  if (context == null) {
    return FidoTouchDialogHandle(
      dismiss: () {},
      cancelled: Future.value(false),
    );
  }

  final cancelCompleter = Completer<bool>();
  var dismissed = false;

  showDialog<void>(
    context: context,
    barrierDismissible: false,
    builder: (ctx) => _FidoTouchDialog(
      onCancel: () {
        if (!dismissed && !cancelCompleter.isCompleted) {
          dismissed = true;
          cancelCompleter.complete(true);
          Navigator.of(ctx).pop();
        }
      },
    ),
  );

  return FidoTouchDialogHandle(
    dismiss: () {
      if (!dismissed) {
        dismissed = true;
        if (!cancelCompleter.isCompleted) {
          cancelCompleter.complete(false);
        }
        // Close the dialog. We need to find the navigator again because the
        // dialog may be on a different route.
        final navContext = _findNavigatorContext();
        if (navContext != null) {
          Navigator.of(navContext).pop();
        }
      }
    },
    cancelled: cancelCompleter.future,
  );
}

/// Handle returned by [showFidoTouchDialog].
class FidoTouchDialogHandle {
  /// Creates a handle for managing a touch dialog.
  FidoTouchDialogHandle({required this.dismiss, required this.cancelled});

  /// Dismisses the touch dialog. Safe to call multiple times.
  final VoidCallback dismiss;

  /// Completes with `true` if the user pressed Cancel, `false` if [dismiss]
  /// was called (i.e. the operation completed normally).
  final Future<bool> cancelled;
}

/// Shows a "Preparing your security key..." dialog with a spinner.
///
/// This is displayed when the user retries an operation after cancelling —
/// the previous background isolate is still holding the device and we need
/// to wait for the CTAP timeout to release it. Without this dialog, the user
/// would just see the app's loading spinner with no explanation.
///
/// Returns a [VoidCallback] to dismiss the dialog when the wait is over.
VoidCallback showFidoPreparingDialog() {
  final context = _findNavigatorContext();
  if (context == null) {
    return () {};
  }

  var dismissed = false;

  showDialog<void>(
    context: context,
    barrierDismissible: false,
    builder: (ctx) => const _FidoPreparingDialog(),
  );

  return () {
    if (!dismissed) {
      dismissed = true;
      final navContext = _findNavigatorContext();
      if (navContext != null) {
        Navigator.of(navContext).pop();
      }
    }
  };
}

/// Walks the Flutter element tree to find a [NavigatorState] context.
///
/// This allows the library to show dialogs without the app needing to
/// provide a navigator key or BuildContext.
BuildContext? _findNavigatorContext() {
  final binding = WidgetsBinding.instance;
  BuildContext? navigatorContext;

  void visitor(Element element) {
    if (navigatorContext != null) return;
    if (element is StatefulElement && element.state is NavigatorState) {
      navigatorContext = element;
      return;
    }
    element.visitChildren(visitor);
  }

  binding.rootElement?.visitChildren(visitor);
  return navigatorContext;
}

// ── PIN Dialog ─────────────────────────────────────────────────────────────

/// Internal PIN dialog widget.
class _FidoPinDialog extends StatefulWidget {
  const _FidoPinDialog({required this.retriesRemaining, this.errorMessage});

  /// Number of PIN attempts remaining before the authenticator locks.
  final int retriesRemaining;

  /// Optional error message to display (e.g. `'Wrong PIN'` after a failed
  /// attempt). When non-null, a red error banner is shown above the text field.
  final String? errorMessage;

  @override
  State<_FidoPinDialog> createState() => _FidoPinDialogState();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(IntProperty('retriesRemaining', retriesRemaining))
      ..add(StringProperty('errorMessage', errorMessage));
  }
}

class _FidoPinDialogState extends State<_FidoPinDialog> {
  final _pinController = TextEditingController();
  bool _obscure = true;
  String? _error;

  @override
  void dispose() {
    _pinController.dispose();
    super.dispose();
  }

  void _submit() {
    final pin = _pinController.text;
    if (pin.length < 4) {
      setState(() => _error = 'PIN must be at least 4 characters');
      return;
    }
    Navigator.of(context).pop(pin);
  }

  @override
  Widget build(BuildContext context) {
    final isLowRetries = widget.retriesRemaining <= 3;

    return AlertDialog(
      icon: const Icon(Icons.lock_outline, size: 40),
      title: const Text('Security Key PIN'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Enter the FIDO2 PIN for your security key.'),
          if (widget.errorMessage != null) ...[
            const SizedBox(height: 8),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              decoration: BoxDecoration(
                color: Colors.red.shade50,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.red.shade200),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.error_outline,
                    size: 18,
                    color: Colors.red.shade700,
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      widget.errorMessage!,
                      style: TextStyle(
                        color: Colors.red.shade700,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
          const SizedBox(height: 8),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            decoration: BoxDecoration(
              color: isLowRetries ? Colors.orange.shade50 : Colors.blue.shade50,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              children: [
                Icon(
                  isLowRetries ? Icons.warning_amber : Icons.info_outline,
                  size: 18,
                  color: isLowRetries
                      ? Colors.orange.shade700
                      : Colors.blue.shade700,
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    '${widget.retriesRemaining} attempt'
                    '${widget.retriesRemaining == 1 ? '' : 's'} remaining',
                    style: TextStyle(
                      color: isLowRetries
                          ? Colors.orange.shade700
                          : Colors.blue.shade700,
                      fontWeight: isLowRetries
                          ? FontWeight.bold
                          : FontWeight.normal,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          TextField(
            controller: _pinController,
            autofocus: true,
            obscureText: _obscure,
            decoration: InputDecoration(
              labelText: 'PIN',
              border: const OutlineInputBorder(),
              prefixIcon: const Icon(Icons.pin),
              suffixIcon: IconButton(
                icon: Icon(_obscure ? Icons.visibility : Icons.visibility_off),
                onPressed: () => setState(() => _obscure = !_obscure),
              ),
              errorText: _error,
            ),
            onSubmitted: (_) => _submit(),
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(null),
          child: const Text('Cancel'),
        ),
        FilledButton(onPressed: _submit, child: const Text('Unlock')),
      ],
    );
  }
}

// ── Touch Dialog ───────────────────────────────────────────────────────────

/// "Touch your security key" dialog with fingerprint icon and pulsing glow.
class _FidoTouchDialog extends StatefulWidget {
  const _FidoTouchDialog({required this.onCancel});

  final VoidCallback onCancel;

  @override
  State<_FidoTouchDialog> createState() => _FidoTouchDialogState();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(ObjectFlagProperty<VoidCallback>.has('onCancel', onCancel));
  }
}

class _FidoTouchDialogState extends State<_FidoTouchDialog>
    with SingleTickerProviderStateMixin {
  late final AnimationController _pulseController;
  late final Animation<double> _pulseAnimation;

  @override
  void initState() {
    super.initState();
    _pulseController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1200),
    )..repeat(reverse: true);
    _pulseAnimation = Tween<double>(begin: 0.6, end: 1).animate(
      CurvedAnimation(parent: _pulseController, curve: Curves.easeInOut),
    );
  }

  @override
  void dispose() {
    _pulseController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      contentPadding: const EdgeInsets.fromLTRB(24, 28, 24, 8),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Pulsing fingerprint icon inside a glowing circle
          AnimatedBuilder(
            animation: _pulseAnimation,
            builder: (context, child) {
              final v = _pulseAnimation.value;
              return Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: colorScheme.primaryContainer.withValues(
                    alpha: v * 0.3,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: colorScheme.primary.withValues(alpha: v * 0.25),
                      blurRadius: 20 * v,
                      spreadRadius: 4 * v,
                    ),
                  ],
                ),
                child: Icon(
                  Icons.fingerprint,
                  size: 56,
                  color: colorScheme.primary.withValues(alpha: 0.5 + v * 0.5),
                ),
              );
            },
          ),
          const SizedBox(height: 24),
          Text(
            'Touch your security key',
            style: theme.textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'Tap or press the button on your key\nto complete the operation.',
            textAlign: TextAlign.center,
            style: theme.textTheme.bodyMedium?.copyWith(
              color: colorScheme.onSurfaceVariant,
            ),
          ),
          const SizedBox(height: 8),
          // Subtle blinking key icon indicator
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedBuilder(
                animation: _pulseAnimation,
                builder: (context, child) {
                  return Icon(
                    Icons.usb,
                    size: 16,
                    color: colorScheme.onSurfaceVariant.withValues(
                      alpha: _pulseAnimation.value * 0.6,
                    ),
                  );
                },
              ),
              const SizedBox(width: 6),
              Text(
                'Waiting for touch…',
                style: theme.textTheme.bodySmall?.copyWith(
                  color: colorScheme.onSurfaceVariant.withValues(alpha: 0.7),
                  fontStyle: FontStyle.italic,
                ),
              ),
            ],
          ),
        ],
      ),
      actions: [
        Center(
          child: TextButton.icon(
            onPressed: widget.onCancel,
            icon: const Icon(Icons.close),
            label: const Text('Cancel'),
            style: TextButton.styleFrom(foregroundColor: colorScheme.error),
          ),
        ),
      ],
    );
  }
}

// ── Preparing Dialog ───────────────────────────────────────────────────────

/// "Preparing your security key..." dialog shown while waiting for a
/// previous cancelled operation's background isolate to release the device.
class _FidoPreparingDialog extends StatelessWidget {
  const _FidoPreparingDialog();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      contentPadding: const EdgeInsets.fromLTRB(24, 28, 24, 24),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: 64,
            height: 64,
            child: CircularProgressIndicator(
              strokeWidth: 3,
              color: colorScheme.primary,
            ),
          ),
          const SizedBox(height: 24),
          Text(
            'Preparing your security key',
            style: theme.textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'Please wait while the previous\noperation completes…',
            textAlign: TextAlign.center,
            style: theme.textTheme.bodyMedium?.copyWith(
              color: colorScheme.onSurfaceVariant,
            ),
          ),
        ],
      ),
    );
  }
}
