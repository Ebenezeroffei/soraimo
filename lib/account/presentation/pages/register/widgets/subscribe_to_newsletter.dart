import 'package:flutter/material.dart';

class SubscribeToNewsletter extends StatelessWidget {
  final ValueNotifier<bool> subscribeToNewsLetter;

  const SubscribeToNewsletter({super.key, required this.subscribeToNewsLetter});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Row(
      children: [
        ValueListenableBuilder(
          valueListenable: subscribeToNewsLetter,
          builder: (_, value, __) => Radio.adaptive(
            value: value,
            groupValue: true,
            activeColor: theme.colorScheme.primary,
            onChanged: (newValue) =>
                subscribeToNewsLetter.value = !subscribeToNewsLetter.value,
            visualDensity: VisualDensity(
              horizontal: -3.5,
              vertical: -3.5,
            ),
            toggleable: true,
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
        ),
        SizedBox(
          width: 3,
        ),
        Text(
          "Subscribe to our news letter",
          style: theme.textTheme.titleSmall,
        ),
      ],
    );
  }
}
