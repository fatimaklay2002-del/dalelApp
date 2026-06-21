import 'package:dalel_project/core/theme/text_style.dart';
import 'package:flutter/material.dart';

class CustomCategoryWidgets extends StatelessWidget {
  final String text;
  final AssetImage image;
  const CustomCategoryWidgets({
    super.key,
    required this.text,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 74,
      height: 133,
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
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(image: DecorationImage(image: image,fit: BoxFit.fill)),
            height: 69,
            width: 74,
          ),
          SizedBox(height: 11,),
         Text(
              text,
              style: AppTextStyle.poppins500Size16.copyWith(fontSize:14),
            ),
          
        ],
      ),
    );
  }
}
