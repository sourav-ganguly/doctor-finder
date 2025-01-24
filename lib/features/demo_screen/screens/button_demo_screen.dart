import 'package:flutter/material.dart';

import '../../../common_ui/button/orion_buttons.dart';

class ButtonDemoScreen extends StatelessWidget {
  const ButtonDemoScreen({super.key});

  static void open(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => const ButtonDemoScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Button Demo'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSectionTitle('Primary Buttons'),
            _buildButtonRow(
              large: OrionPrimaryButton(
                label: 'Large',
                variant: ButtonSizeVariant.large,
                icon: Icons.delete,
                onPressed: () {},
              ),
              medium: OrionPrimaryButton(
                label: 'Medium',
                variant: ButtonSizeVariant.medium,
                icon: Icons.chevron_right,
                onPressed: () {},
              ),
              small: OrionPrimaryButton(
                label: 'Small',
                variant: ButtonSizeVariant.small,
                icon: Icons.star,
                onPressed: () {},
              ),
            ),
            const SizedBox(height: 32),
            _buildSectionTitle('Secondary Buttons'),
            _buildButtonRow(
              large: OrionSecondaryButton(
                label: 'Large',
                variant: ButtonSizeVariant.large,
                icon: Icons.search,
                onPressed: () {},
              ),
              medium: OrionSecondaryButton(
                label: 'Medium',
                variant: ButtonSizeVariant.medium,
                icon: Icons.delete,
                onPressed: () {},
              ),
              small: OrionSecondaryButton(
                label: 'Small',
                variant: ButtonSizeVariant.small,
                icon: Icons.chevron_right,
                onPressed: () {},
              ),
            ),
            const SizedBox(height: 32),
            _buildSectionTitle('Tertiary Buttons'),
            _buildButtonRow(
              large: OrionTertiaryButton(
                label: 'Large',
                variant: ButtonSizeVariant.large,
                icon: Icons.star,
                onPressed: () {},
              ),
              medium: OrionTertiaryButton(
                label: 'Medium',
                variant: ButtonSizeVariant.medium,
                icon: Icons.search,
                onPressed: () {},
              ),
              small: OrionTertiaryButton(
                label: 'Small',
                variant: ButtonSizeVariant.small,
                icon: Icons.delete,
                onPressed: () {},
              ),
            ),
            const SizedBox(height: 32),
            _buildSectionTitle('Accent Buttons'),
            _buildButtonRow(
              large: OrionAccentButton(
                label: 'Large',
                variant: ButtonSizeVariant.large,
                icon: Icons.chevron_right,
                onPressed: () {},
              ),
              medium: OrionAccentButton(
                label: 'Medium',
                variant: ButtonSizeVariant.medium,
                icon: Icons.star,
                onPressed: () {},
              ),
              small: OrionAccentButton(
                label: 'Small',
                variant: ButtonSizeVariant.small,
                icon: Icons.search,
                onPressed: () {},
              ),
            ),
            const SizedBox(height: 32),
            _buildSectionTitle('Buttons with Icons'),
            Wrap(
              spacing: 16,
              runSpacing: 16,
              children: [
                OrionPrimaryButton(
                  label: 'Primary',
                  icon: Icons.add,
                  onPressed: () {},
                ),
                OrionSecondaryButton(
                  label: 'Secondary',
                  icon: Icons.edit,
                  onPressed: () {},
                ),
                OrionTertiaryButton(
                  label: 'Tertiary',
                  icon: Icons.info,
                  onPressed: () {},
                ),
                OrionAccentButton(
                  label: 'Accent',
                  icon: Icons.star,
                  onPressed: () {},
                ),
              ],
            ),
            const SizedBox(height: 32),
            _buildSectionTitle('Loading State'),
            Wrap(
              spacing: 16,
              runSpacing: 16,
              children: [
                OrionPrimaryButton(
                  label: 'Primary',
                  isLoading: true,
                  onPressed: () {},
                ),
                OrionSecondaryButton(
                  label: 'Secondary',
                  isLoading: true,
                  onPressed: () {},
                ),
                OrionTertiaryButton(
                  label: 'Tertiary',
                  isLoading: true,
                  onPressed: () {},
                ),
                OrionAccentButton(
                  label: 'Accent',
                  isLoading: true,
                  onPressed: () {},
                ),
              ],
            ),
            const SizedBox(height: 32),
            _buildSectionTitle('Disabled State'),
            const Wrap(
              spacing: 16,
              runSpacing: 16,
              children: [
                OrionPrimaryButton(
                  label: 'Primary',
                  onPressed: null,
                ),
                OrionSecondaryButton(
                  label: 'Secondary',
                  onPressed: null,
                ),
                OrionTertiaryButton(
                  label: 'Tertiary',
                  onPressed: null,
                ),
                OrionAccentButton(
                  label: 'Accent',
                  onPressed: null,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _buildButtonRow({
    required Widget large,
    required Widget medium,
    required Widget small,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      // spacing: 16,
      // runSpacing: 16,
      children: [
        large,
        medium,
        small,
      ],
    );
  }
}
