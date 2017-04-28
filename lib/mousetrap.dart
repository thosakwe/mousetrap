@JS()
library mousetrap;

import "package:js/js.dart";
import "dart:html" show KeyboardEvent, Element;
import "package:func/func.dart";

/// Type definitions for Mousetrap 1.5.x
/// Project: http://craig.is/killing/mice
/// Definitions by: Dániel Tar <https://github.com/qcz>
/// Definitions: https://github.com/DefinitelyTyped/DefinitelyTyped
@anonymous
@JS()
abstract class ExtendedKeyboardEvent implements KeyboardEvent {
  external bool get returnValue;
  external set returnValue(bool v);
}

@JS("Mousetrap")
abstract class MousetrapStatic {
  external MousetrapInstance call(Element el);
  external factory MousetrapStatic(Element el);
  external Func3<ExtendedKeyboardEvent, Element, String, bool> get stopCallback;
  external set stopCallback(
      Func3<ExtendedKeyboardEvent, Element, String, bool> v);
  external bind(dynamic /*String|List<String>*/ keys,
      dynamic callback(ExtendedKeyboardEvent e, String combo),
      [String action]);
  external unbind(dynamic /*String|List<String>*/ keys, [String action]);
  external trigger(String keys, [String action]);
  external reset();

  /// https://craig.is/killing/mice#extensions.global
  external bindGlobal(dynamic /*String|List<String>*/ keyArray,
      dynamic callback(ExtendedKeyboardEvent e, String combo),
      [String action]);
}

@anonymous
@JS()
abstract class MousetrapInstance {
  external Func3<ExtendedKeyboardEvent, Element, String, bool> get stopCallback;
  external set stopCallback(
      Func3<ExtendedKeyboardEvent, Element, String, bool> v);
  external bind(dynamic /*String|List<String>*/ keys,
      dynamic callback(ExtendedKeyboardEvent e, String combo),
      [String action]);
  external unbind(dynamic /*String|List<String>*/ keys, [String action]);
  external trigger(String keys, [String action]);
  external reset();
}

@JS()
external MousetrapStatic get Mousetrap;
@JS()
external set Mousetrap(MousetrapStatic v);
// Module mousetrap
/* WARNING: export assignment not yet supported. */

// End module mousetrap

