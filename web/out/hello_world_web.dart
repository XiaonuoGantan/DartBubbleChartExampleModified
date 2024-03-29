// Auto-generated from hello_world_web.html.
// DO NOT EDIT.

library hello_world_web_html;

import 'dart:html' as autogenerated;
import 'dart:svg' as autogenerated_svg;
import 'package:web_ui/web_ui.dart' as autogenerated;
import 'package:web_ui/observe/observable.dart' as __observe;
import 'dart:html';
import 'package:web_ui/web_ui.dart';
import 'package:js/js.dart' as js;


// Original code


// initial value for click-counter
int startingCount = 0;

/**
 * Learn about the Web UI package by visiting
 * http://www.dartlang.org/articles/dart-web-components/.
 */
void main() {
  // Enable this to use Shadow DOM in the browser.
  useShadowDom = true;
  js.context.google.load('visualization', '1', js.map(
      {
        'packages': ['corechart'],
        'callback': new js.Callback.once(chartVisualization)
      }));
}

void chartVisualization() {
  var gviz = js.context.google.visualization;
  
// Create and populate the data table.
  var listData = [
    ['ID', 'Life Expectancy', 'Fertility Rate', 'Region',     'Population'],
    ['CAN',    79.66,              1.97,      'North America',  33739900],
    ['USA',    78.09,              2.05,      'North America',  307007000]
  ];

  var arrayData = js.array(listData);

  var tableData = gviz.arrayToDataTable(arrayData);

  var options = js.map({
    'title': 'Correlation between life expectancy, fertility rate and population of some world countries (2010)',
    'hAxis': {'title': 'Life Expectancy'},
    'vAxis': {'title': 'Fertility Rate'},
    'bubble': {'textStyle': {'fontSize': 10}}
  });

  // Create and draw the visualization.
  var chart = new js.Proxy(gviz.BubbleChart, query('#visualization'));
  chart.draw(tableData, options);
}

// Additional generated code
void init_autogenerated() {
  var _root = autogenerated.document.body;
  var __t = new autogenerated.Template(_root);
  __t.create();
  __t.insert();
}

//@ sourceMappingURL=hello_world_web.dart.map