// Auto-generated from converter-element.html.
// DO NOT EDIT.

library x_converter;

import 'dart:html' as autogenerated;
import 'dart:svg' as autogenerated_svg;
import 'package:web_ui/web_ui.dart' as autogenerated;
import 'package:web_ui/observe/observable.dart' as __observe;
import 'package:web_ui/web_ui.dart';



class ConverterComponent extends WebComponent {
  /** Autogenerated from the template. */

  /** CSS class constants. */
  static Map<String, String> _css = {};

  /** This field is deprecated, use getShadowRoot instead. */
  get _root => getShadowRoot("x-converter");
  static final __shadowTemplate = new autogenerated.DocumentFragment.html('''
      <div class="x-converter">
        <span> <content select=".label-one"></content> </span>
        <input type="text" style="text-align:right">
          &lt; &gt;
        <input type="text">
        <span> <content select=".label-two"></content> </span>
      </div>
    ''');
  autogenerated.InputElement __e14, __e15;
  autogenerated.Template __t;

  void created_autogenerated() {
    var __root = createShadowRoot("x-converter");
    __t = new autogenerated.Template(__root);
    __root.nodes.add(__shadowTemplate.clone(true));
    __e14 = __root.nodes[1].nodes[3];
    __t.listen(__e14.onChange, ($event) { convertOnetoTwo(); });
    __t.listen(__e14.onInput, ($event) { thing_one = __e14.value; });
    __t.oneWayBind(() => thing_one, (e) { if (__e14.value != e) __e14.value = e; }, false, false);
    __e15 = __root.nodes[1].nodes[5];
    __t.listen(__e15.onChange, ($event) { convertTwotoOne(); });
    __t.listen(__e15.onInput, ($event) { thing_two = __e15.value; });
    __t.oneWayBind(() => thing_two, (e) { if (__e15.value != e) __e15.value = e; }, false, false);
    __t.create();
  }

  void inserted_autogenerated() {
    __t.insert();
  }

  void removed_autogenerated() {
    __t.remove();
    __t = __e14 = __e15 = null;
  }

  /** Original code from the component. */

  
  num ratio = 0.5;
  String thing_one = '0';
  String thing_two = '0';

  void convertOnetoTwo() {
    var one = double.parse(thing_one);
    var two = one/ratio;
    thing_two = two.toStringAsFixed(2);
  }

  void convertTwotoOne() {
    var two = double.parse(thing_two);
    var one = two*ratio;
    thing_one = one.toStringAsFixed(2);
  }
}


//@ sourceMappingURL=convertercomponent.dart.map