import 'package:flutter/material.dart';
import 'package:spms_app/common/colors/main_colors.dart';

class SearchFiled extends StatelessWidget {
  const SearchFiled({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      margin: const EdgeInsets.all(0),
      padding: const EdgeInsets.all(0),
      child: TextField(
        textInputAction: TextInputAction.done,
        decoration: InputDecoration(
            fillColor: const Color(0xFFF4F6F9),
            border: const OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.black26,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: PSMSmain,
              ),
              borderRadius: const BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            hintText: '   Search',
            hintStyle: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: Colors.black54,
            ),
            suffixIcon: Icon(Icons.search, color: PSMSmain)),
      ),
    );
  }
}
