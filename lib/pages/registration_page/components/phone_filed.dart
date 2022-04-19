import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';

import '../../../common/colors/main_colors.dart';

class PhoneFiled extends StatelessWidget {
  const PhoneFiled({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(0),
      padding: const EdgeInsets.all(0),
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.all(0),
            padding: const EdgeInsets.all(0),
            height: 55,
            width: 83,
            child: CountryCodePicker(
              initialSelection: 'KZ',
              showCountryOnly: true,
              showFlag: true,
              showFlagMain: false,
              favorite: const ['+7', 'KZ'],
              hideSearch: true,
              alignLeft: false,
              textStyle: const TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w400,
                color: Colors.black26,
              ),
            ),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(
                Radius.circular(8),
              ),
              border: Border.all(
                color: Colors.black38,
              ),
            ),
          ),
          const SizedBox(width: 15),
          Container(
            height: 55,
            width: 250,
            margin: const EdgeInsets.all(0),
            padding: const EdgeInsets.all(0),
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.done,
              decoration: InputDecoration(
                border: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black26,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: PSMSmain,
                  ),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(8),
                  ),
                ),
                hintText: 'Phone number',
                hintStyle: const TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                  color: Colors.black26,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
