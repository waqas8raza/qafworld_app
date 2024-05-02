import 'package:flutter/material.dart';
class UiHelper{
  static customTextField(TextEditingController controller, String text, String labelText,bool toHide, {IconData? iconData,IconData?prefixIcon}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 8),
      child: TextFormField(
        //validator: validation,String? Function(String?)?  validation,
        controller: controller,
        obscureText: toHide,
        decoration: InputDecoration(
          labelText: text,
          hintText: text,
          suffixIcon:  Icon(iconData) ,
          prefixIcon:  Icon(prefixIcon) ,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(24),
          ),
        ),
      ),
    );
  }
//

}