import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../core.dart';

class CustomTextField extends StatefulWidget {
  final String? title;
  final TextEditingController controller;
  final int? maxLines;
  final FormFieldValidator? fieldValidator;
  final double? width;
  final TextInputType? inputType;
  final int? maxLength;
  final String? counterText;
  final String? hintText;
  final Function(String)? onChanged;
  final List<TextInputFormatter>? textFormatter;
  CustomTextField({
    Key? key,
    required this.controller,
    this.maxLines,
    this.fieldValidator,
    this.width,
    this.maxLength,
    this.counterText,
    this.onChanged,
    this.inputType = TextInputType.text,
    this.textFormatter,
    this.title,
    this.hintText,
  }) : super(
          key: key,
        );

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: widget.width ?? SizeConfig(context).appWidth(100),
          child: TextFormField(
            inputFormatters: widget.textFormatter,
            maxLength: widget.maxLength,
            keyboardType: widget.inputType,
            controller: widget.controller,
            maxLines: widget.maxLines,
            validator: widget.fieldValidator,
            onChanged: widget.onChanged,
            decoration: InputDecoration(
              hintText: widget.hintText,
              hintStyle: hintTextStyle,
              counterText: widget.counterText,
              errorStyle: TextStyle(
                fontSize: textExtrasmall,
              ),
              errorBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red, width: 2.0),
                borderRadius: BorderRadius.all(
                  Radius.circular(8.0),
                ),
              ),
              focusedErrorBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red, width: 2.0),
                borderRadius: BorderRadius.all(
                  Radius.circular(8.0),
                ),
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: gray, width: 2.0),
                borderRadius: BorderRadius.all(
                  Radius.circular(8.0),
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: gray, width: 2.0),
                borderRadius: BorderRadius.all(
                  Radius.circular(8.0),
                ),
              ),
              isDense: true,
              filled: true,
              fillColor: white,
            ),
          ),
        ),
      ],
    );
  }
}
