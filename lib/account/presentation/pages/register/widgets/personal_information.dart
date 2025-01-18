import 'package:flutter/material.dart';
import 'package:soraimo/core/components/text_fields/custom_text_field.dart';
import 'package:soraimo/core/extensions/alignment_extension.dart';

class PersonalInformation extends StatelessWidget {
  final TextEditingController firstName;
  final TextEditingController lastName;

  const PersonalInformation(
      {super.key, required this.firstName, required this.lastName});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        Text(
          "Personal information",
          textAlign: TextAlign.left,
        ).toLeft(),
        CustomTextField(
          controller: firstName,
          label: "First Name",
        ),
        CustomTextField(
          controller: lastName,
          label: "Last Name",
        ),
      ],
    );
  }
}
