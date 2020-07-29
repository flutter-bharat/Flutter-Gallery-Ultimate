import 'dart:core';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gallery_ultimate/Alert/CustomAlert.dart';
import 'package:flutter_gallery_ultimate/Align/CustomAlign.dart';
import 'package:flutter_gallery_ultimate/AppBar/customAppBar.dart';
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
      description: "This is a test description Thisescription",
      widget: AlertOutput()),
  WidgetModel.setData(
      name: "Align",
      description: "A widget that aligns its childadaw  size",
      widget: AlignOutput()),
  WidgetModel.setData(
      name: "BottomNavigationBar",
      description: "This is a test descraedeadafafaefviption",
      widget: BottomNavigationBarOutput()),
  WidgetModel.setData(
      name: "BottomSheet",
      description: "Tt descriis a test descriescription",
      widget: BottomSheetOutput()),
  WidgetModel.setData(
      name: "Card",
      description: "T test descris is a test description",
      widget: CardOutput()),
  WidgetModel.setData(
      name: "ClipRect",
      description: "Tescriis a test descridescription",
      widget: ClipReactOutput()),
  WidgetModel.setData(
      name: "Column",
      description: "This is a test description",
      widget: ColumntOutput()),
  WidgetModel.setData(
      name: "DatePicker",
      description: "Test descri a test description",
      widget: DatePickerOutput()),
  WidgetModel.setData(
      name: "Dismissble",
      description: "Tis a test descris a test description",
      widget: DismissibleOutput()),
  WidgetModel.setData(
      name: "Divider",
      description: "Tescris a test description",
      widget: DividerOutput()),
  WidgetModel.setData(
      name: "Drawer",
      description: "T a test descris a test description",
      widget: DrawerOutput()),
  WidgetModel.setData(
      name: "Expansion",
      description: "Tis a test descris a test description",
      widget: ExpansionPanelOutput()),
  WidgetModel.setData(
      name: "FadeInImage Panel",
      description: "This is a test description",
      widget: FadeInImageOutput()),
  WidgetModel.setData(
      name: "Flat Button",
      description: "Tis a test descris a test description",
      widget: FlatButtonOutput()),
  WidgetModel.setData(
      name: "Floating Action Button",
      description: "This is a test description",
      widget: FloatActionButtonOutput()),
  WidgetModel.setData(
      name: "Flow",
      description: "This is a test description",
      widget: FlowOutput()),
  WidgetModel.setData(
      name: "Grid View",
      description: "Test descri a test description",
      widget: GridViewOutput()),
  WidgetModel.setData(
      name: "Hero",
      description: "This is a test description",
      widget: HeroOutput()),
  WidgetModel.setData(
      name: "Hero Animation",
      description: "This is This is a test descria test description",
      widget: HeroAnimationOutput()),
  WidgetModel.setData(
      name: "HTTP Request List",
      description: "This is a test description",
      widget: HttpRequestOutput()),
  WidgetModel.setData(
      name: "Icon Button",
      description: "This is a test description",
      widget: IconButtonOutput()),
  WidgetModel.setData(
      name: "List",
      description: "This is a test description",
      widget: ListOutput()),
  WidgetModel.setData(
      name: "Material Button",
      description: "This is a test description",
      widget: MaterialButtonOutput()),
  WidgetModel.setData(
      name: "Opacity",
      description: "This is a test description",
      widget: OpacityOutput()),
  WidgetModel.setData(
      name: "Page View",
      description: "This is a test description",
      widget: PageViewOutput()),
  WidgetModel.setData(
      name: "Rich Text",
      description: "This is a test description",
      widget: RichTextOutput()),
  WidgetModel.setData(
      name: "Route",
      description: "This is a test description",
      widget: RouteOutput()),
  WidgetModel.setData(
      name: "Safe Area",
      description: "This is a test description",
      widget: SafeAreaOutput()),
  WidgetModel.setData(
      name: "Scroll View",
      description: "This is a test description",
      widget: ScrollViewOutput()),
  WidgetModel.setData(
      name: "Selected Text",
      description: "This is a test description",
      widget: SelectedTextOutput()),
  WidgetModel.setData(
      name: "Slider",
      description: "This is a test description",
      widget: SliderOutput()),
  WidgetModel.setData(
      name: "Snackbar",
      description: "This is a test description",
      widget: SnackBarOutput()),
  WidgetModel.setData(
      name: "Spacer",
      description: "This is a test description",
      widget: SpacerOutput()),
  WidgetModel.setData(
      name: "Stack",
      description: "This is a test description",
      widget: StackOutput()),
  WidgetModel.setData(
      name: "Stepper",
      description: "This is a test description",
      widget: StepperOutput()),
  WidgetModel.setData(
      name: "Tabbar",
      description: "This is a test description",
      widget: TabBarOutput()),
  WidgetModel.setData(
      name: "TextField",
      description: "This is a test description",
      widget: TextFieldOutput()),
  WidgetModel.setData(
      name: "Tool Tip",
      description: "This is a test description",
      widget: ToolTipOutput()),
  WidgetModel.setData(
      name: "Wrap",
      description: "This is a test description",
      widget: WrapOutput()),
];

List<LinearGradient> gradientList = [
  LinearGradient(colors: [Color(0xffD1913C), Color(0xffFFD194)]),
  LinearGradient(colors: [Colors.red[300], Colors.red[800]]),
  LinearGradient(colors: [Colors.orange[300], Colors.orange]),
  LinearGradient(colors: [Color(0xff43cea2), Color(0xff185a9d)]),
  LinearGradient(colors: [Colors.pink[300], Colors.orange[800]]),
  LinearGradient(colors: [Colors.greenAccent, Colors.green]),
];


customizedAppBar(String title){
  return AppBar(
    centerTitle: true,
    backgroundColor: Colors.red,
    leading: Container(),
    title: Text(title),
  );
}