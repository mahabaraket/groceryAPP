import 'package:flutter/material.dart';

import '../constants/app_default.dart';

class AppSettingsListTile extends StatelessWidget {
  const AppSettingsListTile({
    Key? key,
    required this.label,
    this.trailing,
    this.onTap,
  }) : super(key: key);

  final String label;
  final Widget? trailing;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      borderRadius: AppDefaults.borderRaduis,
      child: InkWell(
        onTap: onTap,
        borderRadius: AppDefaults.borderRaduis,
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Text(
                    label,
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          color: Colors.black,
                        ),
                  ),
                  const Spacer(),
                  if (trailing != null) trailing!,
                ],
              ),
              const Divider(thickness: 0.1),
            ],
          ),
        ),
      ),
    );
  }
}
