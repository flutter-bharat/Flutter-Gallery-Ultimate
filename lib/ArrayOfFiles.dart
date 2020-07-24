import 'package:flutter_gallery_ultimate/ListModelTest.dart';

var customWidgets=[

ListModalTest(name: "Alert", description:"This is a test description"),
ListModalTest(name: "Align", description:"This is a test description"),
ListModalTest(name: "Appbar", description:"This is a test description"),
ListModalTest(name: "BottomNavigationBar", description:"This is a test description"),
ListModalTest(name: "BottomSheet", description:"This is a test description"),
ListModalTest(name: "Card", description:"This is a test description"),
ListModalTest(name: "ClipRRect", description:"This is a test description"),
ListModalTest(name: "Column", description:"This is a test description"),
ListModalTest(name: "DatePicker", description:"This is a test description"),
ListModalTest(name: "Dismissble", description:"This is a test description"),
ListModalTest(name: "Divide", description:"This is a test description"),
ListModalTest(name: "Drawer", description:"This is a test description"),
ListModalTest(name: "ExpansionAppBar", description:"This is a test description"),
ListModalTest(name: "FadeInImage", description:"This is a test description"),
ListModalTest(name: "FlatButton", description:"This is a test description"),
ListModalTest(name: "FloatingActionButton", description:"This is a test description"),
ListModalTest(name: "Flow", description:"This is a test description"),
ListModalTest(name: "GridView", description:"This is a test description"),
ListModalTest(name: "Hero", description:"This is a test description"),
ListModalTest(name: "HeroAnimationScreen", description:"This is a test description"),
ListModalTest(name: "ListModal", description:"This is a test description"),
ListModalTest(name: "MaterialButton", description:"This is a test description"),
ListModalTest(name: "Opacity", description:"This is a test description"),
ListModalTest(name: "PageView", description:"This is a test description"),
ListModalTest(name: "RichText", description:"This is a test description"),
ListModalTest(name: "Route", description:"This is a test description"),
ListModalTest(name: "Row", description:"This is a test description"),
ListModalTest(name: "SafeArea", description:"This is a test description"),
ListModalTest(name: "ScrollView", description:"This is a test description"),
ListModalTest(name: "SelectedText", description:"This is a test description"),
ListModalTest(name: "Slider", description:"This is a test description"),
ListModalTest(name: "Snackbar", description:"This is a test description"),
ListModalTest(name: "Spacer", description:"This is a test description"),
ListModalTest(name: "Stack", description:"This is a test description"),
ListModalTest(name: "Stepper", description:"This is a test description"),
ListModalTest(name: "TabBar", description:"This is a test description"),
ListModalTest(name: "TextField", description:"This is a test description"),
ListModalTest(name: "ToolTip", description:"This is a test description"),
ListModalTest(name: "Wrap", description:"This is a test description"),
];


Column(
mainAxisAlignment: MainAxisAlignment.center,
children: <Widget>[




GestureDetector(
onTap: (){
Navigator.push(context, MaterialPageRoute(builder: (context)=> CustomAppbar()));
},
child: ListModalTest(name: "abc", description: "aa",)),

FlatButton(
onPressed: () => Navigator.push(
context,
MaterialPageRoute(
builder: (context) => StackListModal())),
child: Text('Stack Model Test')),
FlatButton(
onPressed: () => Navigator.push(
context,
MaterialPageRoute(
builder: (context) => PageViewOutput())),
child: Text('PageView')),
FlatButton(
onPressed: () => Navigator.push(context,
MaterialPageRoute(builder: (context) => AlertOutput())),
child: Text("Alert")),
FlatButton(
onPressed: () => Navigator.push(context,
MaterialPageRoute(builder: (context) => AppBarOutput())),
child: Text("AppBar")),
FlatButton(
onPressed: () => Navigator.push(
context,
MaterialPageRoute(
builder: (context) => BottomNavigationBarOutput())),
child: Text("BottomNavigationBar")),
FlatButton(
onPressed: () => Navigator.push(
context,
MaterialPageRoute(
builder: (context) => BottomSheetOutput())),
child: Text("BottomSheet")),
FlatButton(
onPressed: () => Navigator.push(context,
MaterialPageRoute(builder: (context) => CardOutput())),
child: Text("Card")),
FlatButton(
onPressed: () => Navigator.push(
context,
MaterialPageRoute(
builder: (context) => ClipReactOutput())),
child: Text("ClipReact")),
FlatButton(
onPressed: () => Navigator.push(context,
MaterialPageRoute(builder: (context) => ColumntOutput())),
child: Text("Column")),
FlatButton(
onPressed: () => Navigator.push(
context,
MaterialPageRoute(
builder: (context) => DatePickerOutput())),
child: Text("DatePicker")),
FlatButton(
onPressed: () => Navigator.push(context,
MaterialPageRoute(builder: (context) => DividerOutput())),
child: Text("Divider")),
FlatButton(
onPressed: () => Navigator.push(context,
MaterialPageRoute(builder: (context) => DrawerOutput())),
child: Text("Drawer")),
FlatButton(
onPressed: () => Navigator.push(
context,
MaterialPageRoute(
builder: (context) => ExpansionPanelOutput())),
child: Text("ExpansionPanel")),
FlatButton(
onPressed: () => Navigator.push(
context,
MaterialPageRoute(
builder: (context) => FadeInImageOutput())),
child: Text("FadeInImage")),
FlatButton(
onPressed: () => Navigator.push(context,
MaterialPageRoute(builder: (context) => FlowOutput())),
child: Text("Flow")),
FlatButton(
onPressed: () => Navigator.push(
context,
MaterialPageRoute(
builder: (context) => GridViewOutput())),
child: Text("GridView")),
FlatButton(
onPressed: () => Navigator.push(context,
MaterialPageRoute(builder: (context) => HeroOutput())),
child: Text("Hero")),
FlatButton(
onPressed: () => Navigator.push(
context,
MaterialPageRoute(
builder: (context) => HeroAnimationOutput())),
child: Text("HeroAnimation")),
FlatButton(
onPressed: () => Navigator.push(
context,
MaterialPageRoute(
builder: (context) => HttpRequestOutput())),
child: Text("HttpRequest")),
FlatButton(
onPressed: () => Navigator.push(context,
MaterialPageRoute(builder: (context) => ListOutput())),
child: Text("List")),
FlatButton(
onPressed: () => Navigator.push(
context,
MaterialPageRoute(
builder: (context) => ListModalOutput())),
child: Text("ListModal")),
FlatButton(
onPressed: () => Navigator.push(
context,
MaterialPageRoute(
builder: (context) => RichTextOutput())),
child: Text("RichText")),
FlatButton(
onPressed: () => Navigator.push(context,
MaterialPageRoute(builder: (context) => RouteOutput())),
child: Text("Route")),
FlatButton(
onPressed: () => Navigator.push(context,
MaterialPageRoute(builder: (context) => RowOutput())),
child: Text("Row")),
FlatButton(
onPressed: () => Navigator.push(
context,
MaterialPageRoute(
builder: (context) => ScrollViewOutput())),
child: Text("ScrollView")),
FlatButton(
onPressed: () => Navigator.push(
context,
MaterialPageRoute(
builder: (context) => SelectedTextOutput())),
child: Text("SelectedText")),
FlatButton(
onPressed: () => Navigator.push(context,
MaterialPageRoute(builder: (context) => SliderOutput())),
child: Text("Slider")),
FlatButton(
onPressed: () => Navigator.push(
context,
MaterialPageRoute(
builder: (context) => SnackBarOutput())),
child: Text("SnackBar")),
FlatButton(
onPressed: () => Navigator.push(context,
MaterialPageRoute(builder: (context) => SpacerOutput())),
child: Text("Spacer")),
FlatButton(
onPressed: () => Navigator.push(context,
MaterialPageRoute(builder: (context) => StackOutput())),
child: Text("Stack")),
FlatButton(
onPressed: () => Navigator.push(context,
MaterialPageRoute(builder: (context) => StepperOutput())),
child: Text("Stepper")),
FlatButton(
onPressed: () => Navigator.push(context,
MaterialPageRoute(builder: (context) => TabBarOutput())),
child: Text("TabBar")),
FlatButton(
onPressed: () => Navigator.push(
context,
MaterialPageRoute(
builder: (context) => TextFieldOutput())),
child: Text("TextField")),
FlatButton(
onPressed: () => Navigator.push(context,
MaterialPageRoute(builder: (context) => ToolTipOutput())),
child: Text("ToolTip")),
FlatButton(
onPressed: () => Navigator.push(
context,
MaterialPageRoute(
builder: (context) => ListModalOutput())),
child: Text('Custom List Modal old')),
FlatButton(
onPressed: () => Navigator.push(context,
MaterialPageRoute(builder: (context) => AlignOutput())),
child: Text("Align")),
FlatButton(
onPressed: () => Navigator.push(
context,
MaterialPageRoute(
builder: (context) => DismissibleOutput())),
child: Text("Dismissible")),
FlatButton(
onPressed: () => Navigator.push(
context,
MaterialPageRoute(
builder: (context) => FlatButtonOutput())),
child: Text("FlatButton")),
FlatButton(
onPressed: () => Navigator.push(
context,
MaterialPageRoute(
builder: (context) => FloatActionButtonOutput())),
child: Text("FloatActionButton")),
FlatButton(
onPressed: () => Navigator.push(
context,
MaterialPageRoute(
builder: (context) => IconButtonOutput())),
child: Text("IconButton")),
FlatButton(
onPressed: () => Navigator.push(
context,
MaterialPageRoute(
builder: (context) => ListMadalHomeOutput())),
child: Text("ListMadalHomeScreen")),
FlatButton(
onPressed: () => Navigator.push(
context,
MaterialPageRoute(
builder: (context) => MaterialButtonOutput())),
child: Text("MaterialButton")),
FlatButton(
onPressed: () => Navigator.push(context,
MaterialPageRoute(builder: (context) => OpacityOutput())),
child: Text("Opacity")),
FlatButton(
onPressed: () => Navigator.push(
context,
MaterialPageRoute(
builder: (context) => SafeAreaOutput())),
child: Text("SafeArea")),
FlatButton(
onPressed: () => Navigator.push(context,
MaterialPageRoute(builder: (context) => WrapOutput())),
child: Text("Wrap")),
],
),