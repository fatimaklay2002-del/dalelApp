import 'package:dalel_project/core/theme/text_style.dart';
import 'package:flutter/material.dart';

class CustomOptionsWidgets extends StatelessWidget {
  final String text;
  final AssetImage image;
  const CustomOptionsWidgets({
    super.key,
    required this.text,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 164,
      height: 96,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 5,
            offset: Offset(0, 2.5),
            color: Colors.black.withValues(alpha: .25),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: 48,
            width: 62,
            child: Text(
              text,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              textAlign: TextAlign.center,
              style: AppTextStyle.poppins500Size16,
            ),
          ),
          Container(
            decoration: BoxDecoration(image: DecorationImage(image: image)),
            height: 64,
            width: 47,
          ),
        ],
      ),
    );
  }
}
