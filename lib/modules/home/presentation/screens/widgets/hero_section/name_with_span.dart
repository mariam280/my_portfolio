import 'package:flutter/widgets.dart';
import 'package:my_portfolio/core/theme/app_colors.dart';
import 'package:my_portfolio/core/theme/app_styles.dart';

class NameWithSpan extends StatelessWidget {
  const NameWithSpan({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Hi, I\'m ',
            style: AppStyles.styleBold72(context),
          ),
          TextSpan(
            text: ' Mariam ',
            style: AppStyles.styleBold72(
              context,
            ).copyWith(color: AppColors.purple),
          ),
          TextSpan(
            text: ' Ibrahim ',
            style: AppStyles.styleBold72(
              context,
            ).copyWith(color: AppColors.pink),
          ),
        ],
      ),
    );
  }
}
