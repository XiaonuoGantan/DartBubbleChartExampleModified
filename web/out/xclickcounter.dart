// Auto-generated from xclickcounter.html.
// DO NOT EDIT.

library x_click_counter;

import 'dart:html' as autogenerated;
import 'dart:svg' as autogenerated_svg;
import 'package:web_ui/web_ui.dart' as autogenerated;
import 'package:web_ui/observe/observable.dart' as __observe;
import 'package:web_ui/web_ui.dart';



class CounterComponent extends WebComponent {
  /** Autogenerated from the template. */

  /** CSS class constants. */
  static Map<String, String> _css = {};

  /**
   * Shadow root for this component. We use 'var' to allow simulating shadow DOM
   * on browsers that don't support this feature.
   */
  var _root;
  static final __shadowTemplate = new autogenerated.DocumentFragment.html('''
        <div>
          <button>Click me</button><br>
          <span></span>
        </div>
      ''');
  autogenerated.ButtonElement __e0;
  autogenerated.SpanElement __e2;
  autogenerated.Template __t;

  void created_autogenerated() {
    _root = createShadowRoot();
    __t = new autogenerated.Template(_root);
    _root.nodes.add(__shadowTemplate.clone(true));
    __e0 = _root.nodes[1].nodes[1];
    __t.listen(__e0.onClick, ($event) { increment(); });
    __e2 = _root.nodes[1].nodes[4];
    var __binding1 = __t.contentBind(() => count, false);
    __e2.nodes.addAll([new autogenerated.Text('(click count: '),
        __binding1,
        new autogenerated.Text(')')]);
    __t.create();
  }

  void inserted_autogenerated() {
    __t.insert();
  }

  void removed_autogenerated() {
    __t.remove();
    __t = __e0 = __e2 = null;
  }

  void composeChildren() {
    super.composeChildren();
    if (_root is! autogenerated.ShadowRoot) _root = this;
  }

  /** Original code from the component. */

  int count = 0;

  void increment() {
    count++;
  }
}

//@ sourceMappingURL=xclickcounter.dart.map