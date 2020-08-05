import 'dart:core';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gallery_ultimate/Drawer/divideroutput.dart';
import 'package:flutter_gallery_ultimate/ExpansionAppBar/expansionappbaroutput.dart';
import 'package:flutter_gallery_ultimate/ExpansionPannel/expansionpanneloutput.dart';
import 'package:flutter_gallery_ultimate/FadeInImage/fadeinimageoutput.dart';
import 'package:flutter_gallery_ultimate/ListModelTest.dart';

import 'package:flutter_gallery_ultimate/Alert/alertoutput.dart';
import 'package:flutter_gallery_ultimate/Align/alignoutput.dart';
import 'package:flutter_gallery_ultimate/BottomNavigationBar/bottomnavigationbaroutput.dart';
import 'package:flutter_gallery_ultimate/BottomSheet/bottomsheetoutput.dart';
import 'package:flutter_gallery_ultimate/Card/cardoutput.dart';
import 'package:flutter_gallery_ultimate/ClipReact/clipreactoutput.dart';
import 'package:flutter_gallery_ultimate/Column/columnoutput.dart';
import 'package:flutter_gallery_ultimate/DatePicker/datepickeroutput.dart';
import 'package:flutter_gallery_ultimate/Dismissible/dismissibleoutput.dart';
import 'package:flutter_gallery_ultimate/Divider/divideroutput.dart';
import 'package:flutter_gallery_ultimate/FlatButton/flatbuttonoutput.dart';
import 'package:flutter_gallery_ultimate/FloatActionButton/floatactionbuttonoutput.dart';
import 'package:flutter_gallery_ultimate/Flow/flowoutput.dart';
import 'package:flutter_gallery_ultimate/GridView/gridviewoutput.dart';
import 'package:flutter_gallery_ultimate/Hero/herooutput.dart';
import 'package:flutter_gallery_ultimate/HeroAnimationScreen/heroanimationoutput.dart';
import 'package:flutter_gallery_ultimate/HttpRequest/httpreqoutput.dart';
import 'package:flutter_gallery_ultimate/IconButton/iconbuttonoutput.dart';
import 'package:flutter_gallery_ultimate/List/listoutput.dart';
import 'package:flutter_gallery_ultimate/MaterialButton/materialbuttonoutput.dart';
import 'package:flutter_gallery_ultimate/Opacity/opacityoutput.dart';
import 'package:flutter_gallery_ultimate/PageView/pageviewoutput.dart';
import 'package:flutter_gallery_ultimate/RichText/richtextoutput.dart';
import 'package:flutter_gallery_ultimate/Route/routeoutput.dart';
import 'package:flutter_gallery_ultimate/SafeArea/safeareaoutput.dart';
import 'package:flutter_gallery_ultimate/ScrollView/scrollviewoutput.dart';
import 'package:flutter_gallery_ultimate/SelectedText/selectedtextoutput.dart';
import 'package:flutter_gallery_ultimate/Slider/slideroutput.dart';
import 'package:flutter_gallery_ultimate/SnackBar/snackbaroutput.dart';
import 'package:flutter_gallery_ultimate/Spacer/spaceroutput.dart';
import 'package:flutter_gallery_ultimate/Stack/stackoutput.dart';
import 'package:flutter_gallery_ultimate/Stepper/flowoutput.dart';
import 'package:flutter_gallery_ultimate/TabBar/tabbaroutput.dart';
import 'package:flutter_gallery_ultimate/TextField/textfieldoutput.dart';
import 'package:flutter_gallery_ultimate/Tooltip/tooltipoutput.dart';
import 'package:flutter_gallery_ultimate/Wrap/wrapoutput.dart';

//navigator files ends
var modelList = [
  WidgetModel.setData(
      name: "Alert",
      description:
          "A Pop Up material design alert dialog. An alert dialog informs the user about situations that require acknowledgement.",
      widget: AlertOutput()),
  WidgetModel.setData(
      name: "Align",
      description:
          "A widget that aligns its child within itself and optionally sizes itself based on the child's size.",
      widget: AlignOutput()),
  WidgetModel.setData(
      name: "Bottom Navigation Bar",
      description:
          "A material widget that's displayed at the bottom of an app for selecting among a small number of views, typically between three and five",
      widget: BottomNavigationBarOutput()),
  WidgetModel.setData(
      name: "Bottom Sheet",
      description:
          "A material widget like Alert but pops out from bottom of the screen",
      widget: BottomSheetOutput()),
  WidgetModel.setData(
      name: "Card",
      description:
          "A card is a sheet of Material used to represent some related information, for example an album, a geographical location, a meal, contact details, etc.",
      widget: CardOutput()),
  WidgetModel.setData(
      name: "ClipRect",
      description:
          "A widget that clips its child using a rectangle. By default, ClipRect prevents its child from painting outside its bounds, but the size and location of the clip rect can be customized using a custom clipper.",
      widget: ClipReactOutput()),
  WidgetModel.setData(
      name: "Column",
      description:
          "A widget that displays its children in a vertical array.To cause a child to expand to fill the available vertical space, wrap the child in an Expanded widget, also the Column widget does not scroll ",
      widget: ColumntOutput()),
  WidgetModel.setData(
      name: "DatePicker",
      description:
          "Shows a dialog containing a Material Design date picker and returns a Future.The returned Future resolves to the date selected by the user when the user confirms the dialog. If the user cancels the dialog, null is returned.",
      widget: DatePickerOutput()),
  WidgetModel.setData(
      name: "Dismissble",
      description:
          "A widget that can be dismissed by dragging in the indicated direction.Dragging or flinging this widget in the DismissDirection causes the child to slide out of view.",
      widget: DismissibleOutput()),
  WidgetModel.setData(
      name: "Divider",
      description:
          "A thin horizontal line, with padding on either side.In the material design language, this represents a divider. Dividers can be used in lists, Drawers, and elsewhere to separate content.",
      widget: DividerOutput()),
  WidgetModel.setData(
      name: "Drawer",
      description:
          "In apps that use Material Design, there are two primary options for navigation: tabs and drawers. When there is insufficient space to support tabs, drawers provide a handy alternative",
      widget: DrawerOutput()),
  WidgetModel.setData(
      name: "Expansion App Bar",
      description:
          "An app bar consists of a toolbar and potentially other widgets, such as a TabBar and a FlexibleSpaceBar. App bars typically expose one or more common actions with IconButtons which are optionally followed by a PopupMenuButton for less common operations",
      widget: ExpansionAppBarOutput()),
  WidgetModel.setData(
      name: "Expansion",
      description:
          "A widget that expands a child of a Row, Column, or Flex so that the child fills the available space",
      widget: ExpansionPanelOutput()),
  WidgetModel.setData(
      name: "FadeIn Image Panel",
      description:
          "A widget that expands a child of a Row, Column, or Flex so that the child fills the available space",
      widget: FadeInImageOutput()),
  WidgetModel.setData(
      name: "Flat Button",
      description:
          "A flat button is a text label displayed on a (zero elevation) Material widget that reacts to touches by filling with color.",
      widget: FlatButtonOutput()),
  WidgetModel.setData(
      name: "Floating Action Button",
      description:
          "A floating action button is a circular icon button that hovers over content to promote a primary action in the application. Floating action buttons are most commonly used in the Scaffold.floatingActionButton field",
      widget: FloatActionButtonOutput()),
  WidgetModel.setData(
      name: "Flow",
      description:
          "A widget that sizes and positions children efficiently, according to the logic in a FlowDelegate.Flow layouts are optimized for repositioning children using transformation matrices.",
      widget: FlowOutput()),
  WidgetModel.setData(
      name: "Grid View",
      description:
          "A scrollable, 2D array of widgets.The main axis direction of a grid is the direction in which it scrolls (the scrollDirection).",
      widget: GridViewOutput()),
  WidgetModel.setData(
      name: "Hero",
      description:
          "A standard hero animation flies the hero from one route to a new route, usually landing at a different location and with a different size",
      widget: HeroOutput()),
  WidgetModel.setData(
      name: "Hero Animation",
      description:
          "A standard hero animation flies the hero from one route to a new route",
      widget: HeroAnimationOutput()),
  WidgetModel.setData(
      name: "HTTP Request List",
      description:
          "A Sample Http List fetched from network in json format and parsed into a list",
      widget: HttpRequestOutput()),
  WidgetModel.setData(
      name: "Icon Button",
      description:
          "A Button which accepts a child as an Icon widget with a ripple effect",
      widget: IconButtonOutput()),
  WidgetModel.setData(
      name: "List",
      description:
          "ListView is the most commonly used scrolling widget. It displays its children one after another in the scroll direction. In the cross axis, the children are required to fill the ListView.",
      widget: ListOutput()),
  WidgetModel.setData(
      name: "Material Button",
      description:
          "A utility class for building Material buttons that depend on the ambient ButtonTheme and Theme.The button's size will expand to fit the child widget, if necessary",
      widget: MaterialButtonOutput()),
  WidgetModel.setData(
      name: "Opacity",
      description:
          "A widget that makes its child partially transparent.This class paints its child into an intermediate buffer and then blends the child back into the scene partially transparent",
      widget: OpacityOutput()),
  WidgetModel.setData(
      name: "Page View",
      description:
          "A scrollable list that works page by page.Each child of a page view is forced to be the same size as the viewport",
      widget: PageViewOutput()),
  WidgetModel.setData(
      name: "Rich Text",
      description:
          "The RichText widget displays text that uses multiple different styles. The text to display is described using a tree of TextSpan objects, each of which has an associated style that is used for that subtree. The text might break across multiple lines or might all be displayed on the same line depending on the layout constraints.",
      widget: RichTextOutput()),
  WidgetModel.setData(
      name: "Route",
      description:
          "Navigate to the second screen With the widgets and routes in place, trigger navigation by using the Navigator. pushNamed() method. This tells Flutter to build the widget defined in the routes table and launch the screen.",
      widget: RouteOutput()),
  WidgetModel.setData(
      name: "Safe Area",
      description:
          "SafeArea class. A widget that insets its child by sufficient padding to avoid intrusions by the operating system. For example, this will indent the child by enough to avoid the status bar at the top of the screen.",
      widget: SafeAreaOutput()),
  WidgetModel.setData(
      name: "Scroll View",
      description:
          "A Scrollable widget, which listens for various user gestures and implements the interaction design for scrolling.",
      widget: ScrollViewOutput()),
  WidgetModel.setData(
      name: "Selected Text",
      description:
          "The SelectableText widget displays a string of text with a single style. The string might break across multiple lines or might all be displayed on the same line depending on the layout constraints.",
      widget: SelectedTextOutput()),
  WidgetModel.setData(
      name: "Slider",
      description:
          "Slider class. A slider can be used to select from either a continuous or a discrete set of values. The slider will be disabled if onChanged is null or if the range given by min.. The slider widget itself does not maintain any state.",
      widget: SliderOutput()),
  WidgetModel.setData(
      name: "Snack Bar",
      description:
          "A lightweight message with an optional action which briefly displays at the bottom of the screen",
      widget: SnackBarOutput()),
  WidgetModel.setData(
      name: "Spacer",
      description:
          "Spacer creates an adjustable, empty spacer that can be used to tune the spacing between widgets in a Flex container, like Row or Column.",
      widget: SpacerOutput()),
  WidgetModel.setData(
      name: "Stack",
      description:
          "This class is useful if you want to overlap several children in a simple way, for example having some text and an image, overlaid with a gradient and a button attached to the bottom",
      widget: StackOutput()),
  WidgetModel.setData(
      name: "Stepper",
      description:
          "A material stepper widget that displays progress through a sequence of steps. Steppers are particularly useful in the case of forms where one step requires the completion of another one, or where multiple steps need to be completed in order to submit the whole form",
      widget: StepperOutput()),
  WidgetModel.setData(
      name: "Tab Bar",
      description:
          "A material design widget that displays a horizontal row of tabs.Typically created as the AppBar.bottom part of an AppBar and in conjunction with a TabBarView.",
      widget: TabBarOutput()),
  WidgetModel.setData(
      name: "Text Field",
      description:
          "The text field lets the user enter text, either with hardware keyboard or with an onscreen keyboard.",
      widget: TextFieldOutput()),
  WidgetModel.setData(
      name: "Tool Tip",
      description:
          "TTooltips provide text labels that help explain the function of a button or other user interface action",
      widget: ToolTipOutput()),
  WidgetModel.setData(
      name: "Wrap",
      description:
          "A Wrap lays out each child and attempts to place the child adjacent to the previous child in the main axis, given by direction, leaving spacing space in between. If there is not enough space to fit the child, Wrap creates a new run adjacent to the existing children in the cross axis.",
      widget: WrapOutput()),
];

List<LinearGradient> gradientList = [
//  LinearGradient(colors: [Color(0xffBA8B02), Color(0xff181818)]),
  LinearGradient(colors: [Color(0xFFFF9000), Color(0xffD1913C)]),
  LinearGradient(colors: [Colors.red[300], Colors.red[800]]),
  LinearGradient(colors: [Colors.orange[300], Colors.orange]),
  LinearGradient(colors: [Color(0xff43cea2), Color(0xff185a9d)]),
  LinearGradient(colors: [Colors.pink[300], Colors.orange[800]]),
  LinearGradient(colors: [Colors.greenAccent, Colors.green]),
];

customizedAppBar(String title) {
  return AppBar(
    centerTitle: true,
    backgroundColor: Colors.red,
    leading: Container(),
    title: Text(title),
  );
}
