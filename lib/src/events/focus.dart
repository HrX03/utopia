import 'package:flutter/foundation.dart';
import 'package:utopia_wm/src/entry.dart';
import 'package:utopia_wm/src/events/base.dart';

/// Mixin to add shorthands for events sent when window focus changes.
mixin FocusEvents on WindowEventHandler {
  @override
  void onEvent(WindowEvent event) {
    return switch (event) {
      WindowFocusGain() => onFocusGain(),
      WindowFocusLost() => onFocusLost(),
      _ => super.onEvent(event),
    };
  }

  /// Handler for [WindowFocusGain] events.
  @protected
  void onFocusGain() {}

  /// Handler for [WindowFocusLost] events.
  @protected
  void onFocusLost() {}
}

/// Event generated when the window gains focus.
class WindowFocusGain extends WindowEvent {
  const WindowFocusGain({required super.timestamp});
}

/// Event generated when the window loses focus.
class WindowFocusLost extends WindowEvent {
  const WindowFocusLost({required super.timestamp});
}
