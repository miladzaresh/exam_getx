import 'package:flutter/material.dart';
class GeneralTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final TextInputType type;
  final Widget? toggle;
  final String title;
  final bool observed;
  final String? Function(String?)? onValidator;


  GeneralTextFormField(
      {required this.title,
        required this.controller,
        required this.type,
        this.toggle,
        this.observed = true,
        this.onValidator
      });

  @override
  Widget build(BuildContext context) => Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        title,
        style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: Colors.grey.shade700),
      ),
      SizedBox(
        height: 6,
      ),
      SizedBox(
        height: 40,
        child: TextFormField(
          validator: onValidator,
          obscureText: toggle==null?false:observed,
          controller: controller,
          keyboardType: type,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            errorBorder: OutlineInputBorder(),
            contentPadding: EdgeInsets.all(8),
            suffixIcon: toggle,
          ),
        ),
      )
    ],
  );
}
