import 'package:flutter/material.dart';
import 'package:soraimo/core/extensions/extensions.dart';

class UserAgreementAndPrivacyPolicy extends StatelessWidget {
  final ValueNotifier<bool> accepted;

  const UserAgreementAndPrivacyPolicy({super.key, required this.accepted});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: [
        ValueListenableBuilder(
          valueListenable: accepted,
          builder: (_, value, __) => Radio.adaptive(
            value: true,
            groupValue: value,
            onChanged: (value) => accepted.value = !accepted.value,
            toggleable: true,
            visualDensity: VisualDensity(
              horizontal: -3.5,
              vertical: -3.5,
            ),
          ),
        ),
        Expanded(
          child: RichText(
            text: TextSpan(
                style: theme.textTheme.bodySmall,
                text: "I have read and agree to the soraimo store's ",
                children: [
                  TextSpan(
                    text: 'User Agreement ',
                    style: theme.textTheme.titleSmall?.copyWith(
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  TextSpan(text: 'and '),
                  TextSpan(
                    text: 'Privacy Policy',
                    style: theme.textTheme.titleSmall?.copyWith(
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ]),
          ),
        )
      ],
    ).padT(10);
  }
}
