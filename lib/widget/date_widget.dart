import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateWidget extends StatefulWidget {
  final DateTime dateTime;
  final ValueChanged<DateTime> onChangedDateTime;

  const DateWidget({
    required this.dateTime,
    required this.onChangedDateTime,
  });

  @override
  _DateWidgetState createState() => _DateWidgetState();
}

class _DateWidgetState extends State<DateWidget> {
  final controller = TextEditingController();
  final focusNode = FocusNode();

  @override
  void initState() {
    super.initState();

    setDate();
  }

  @override
  void didUpdateWidget(covariant DateWidget oldWidget) {
    super.didUpdateWidget(oldWidget);

    setDate();
  }

  void setDate() => setState(() {
        controller.text = widget.dateTime == null
            ? ''
            : DateFormat.yMd().format(widget.dateTime);
      });

  @override
  Widget build(BuildContext context) => FocusBuilder(
        onChangeVisibility: (isVisible) {
          if (isVisible) {
            selectDate(context);
            //
          } else {
            FocusScope.of(context).requestFocus(FocusNode());
          }
        },
        focusNode: focusNode,
        builder: (hasFocus) => TextFormField(
          controller: controller,
          validator: (value) =>
              value!.isEmpty ? 'Tanggal lahir harus diisi' : null,
          decoration: InputDecoration(
            prefixText: ' ',
            hintText: 'Your birthday',
            prefixIcon: Icon(Icons.calendar_today_rounded),
            border: OutlineInputBorder(),
          ),
        ),
      );

  Future selectDate(BuildContext context) async {
    final dateTime = await showDatePicker(
      context: context,
      initialDate: widget.dateTime,
      firstDate: DateTime(1950),
      lastDate: DateTime(2100),
    );

    if (dateTime == null) return;

    widget.onChangedDateTime(dateTime);
  }
}

class FocusBuilder extends StatefulWidget {
  final FocusNode focusNode;
  final Widget Function(bool hasFocus) builder;
  final ValueChanged<bool> onChangeVisibility;

  const FocusBuilder({
    required this.focusNode,
    required this.builder,
    required this.onChangeVisibility,
  });
  @override
  _FocusBuilderState createState() => _FocusBuilderState();
}

class _FocusBuilderState extends State<FocusBuilder> {
  @override
  Widget build(BuildContext context) => GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () => widget.onChangeVisibility(true),
        child: Focus(
          focusNode: widget.focusNode,
          onFocusChange: widget.onChangeVisibility,
          child: widget.builder(widget.focusNode.hasFocus),
        ),
      );
}
