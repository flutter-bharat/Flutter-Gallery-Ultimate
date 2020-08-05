import 'package:flutter/material.dart';
import 'package:flutter_gallery_ultimate/utils/DataFile.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/googlecode.dart';

class DatePickerDescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var code;
    Column(
      children: [
        HighlightView(
            code = '''Future<DateTime> showDatePicker({
  @required BuildContext context,
  @required DateTime initialDate,
  @required DateTime firstDate,
  @required DateTime lastDate,
  DatePickerEntryMode initialEntryMode = DatePickerEntryMode.calendar,
  SelectableDayPredicate selectableDayPredicate,
  String helpText,
  String cancelText,
  String confirmText,
  Locale locale,
  bool useRootNavigator = true,
  RouteSettings routeSettings,
  TextDirection textDirection,
  TransitionBuilder builder,
  DatePickerMode initialDatePickerMode = DatePickerMode.day,
  String errorFormatText,
  String errorInvalidText,
  String fieldHintText,
  String fieldLabelText,
}) async {
  assert(context != null);
  assert(initialDate != null);
  assert(firstDate != null);
  assert(lastDate != null);
  initialDate = utils.dateOnly(initialDate);
  firstDate = utils.dateOnly(firstDate);
  lastDate = utils.dateOnly(lastDate);
  assert(
    !lastDate.isBefore(firstDate),
    "lastDate" + lastDate + "must be on or after firstDate" + firstDate + .
  );
  assert(
    !initialDate.isBefore(firstDate),
    "initialDate" + initialDate + "must be on or after firstDate" + firstDate+ .
  );
  assert(
    !initialDate.isAfter(lastDate),
     + initialDate +"must be on or before lastDate"  + lastDate. +
  );
  assert(
    selectableDayPredicate == null || selectableDayPredicate(initialDate),
    "Provided initialDate" + initialDate + "must satisfy provided selectableDayPredicate."
  );
  assert(initialEntryMode != null);
  assert(useRootNavigator != null);
  assert(initialDatePickerMode != null);
  assert(debugCheckHasMaterialLocalizations(context));

  Widget dialog = _DatePickerDialog(
    initialDate: initialDate,
    firstDate: firstDate,
    lastDate: lastDate,
    initialEntryMode: initialEntryMode,
    selectableDayPredicate: selectableDayPredicate,
    helpText: helpText,
    cancelText: cancelText,
    confirmText: confirmText,
    initialCalendarMode: initialDatePickerMode,
    errorFormatText: errorFormatText,
    errorInvalidText: errorInvalidText,
    fieldHintText: fieldHintText,
    fieldLabelText: fieldLabelText,
  );

  if (textDirection != null) {
    dialog = Directionality(
      textDirection: textDirection,
      child: dialog,
    );
  }

  if (locale != null) {
    dialog = Localizations.override(
      context: context,
      locale: locale,
      child: dialog,
    );
  }

  return showDialog<DateTime>(
    context: context,
    useRootNavigator: useRootNavigator,
    routeSettings: routeSettings,
    builder: (BuildContext context) {
      return builder == null ? dialog : builder(context, dialog);
    },
  );
}
      '''
        ),
      ],
    );

    return Scaffold(
      appBar: customizedAppBar("Description"),

      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all( 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  //   padding: EdgeInsets.symmetric(horizontal: 50.0),
                    child: Text("DatePicker",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold))),
                SizedBox(height: 30.0),
                Container(
                  //    padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    children: [
                      Text("           Shows a dialog containing a Material Design date picker.The returned Future resolves to"
                          " the date selected by the user when the user confirms the dialog. If the user cancels the "
                          "dialog, null is returned. When the date picker is first displayed, it will show the "
                          "month of initialDate, with initialDate selected.",style: TextStyle(fontSize: 15,),),
                      SizedBox(height: 10.0,),
                      Text("          The firstDate is the earliest allowable date. The lastDate is the latest allowable date. "
                          "initialDate must either fall between these dates, or be equal to one of them. For each of these "
                          "DateTime parameters, only their dates are considered. Their time fields are ignored. They must all"
                          " be non-null.",style: TextStyle(fontSize: 15),),
                    ],
                  ),
                ),
                SizedBox(height: 30.0),
                Text("Demo Code",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold)),
                SizedBox(height: 20.0),
                Container(
                  height: 400,
                  width: 370,
                  child: Card(
                    shadowColor: Colors.grey,
                    elevation: 15,
                    child: ListView(
                      children: [
                        HighlightView(
                          // The original code to be highlighted
                          code,

                          // Specify language
                          // It is recommended to give it a value for performance
                          language: 'dart',

                          // Specify highlight theme
                          // All available themes are listed in `themes` folder
                          theme: googlecodeTheme   ,

                          // Specify padding
                          padding: EdgeInsets.all(12),

                          // Specify text style
                          textStyle: TextStyle(
                            fontFamily: 'My awesome monospace font',
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
