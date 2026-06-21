import 'package:dalel_project/core/theme/text_style.dart';
import 'package:dalel_project/features/home/presentation/view_model/historical_oeriods_model.dart';
import 'package:flutter/material.dart';

class CustomOptionsWidgets extends StatelessWidget {
  final HistoricalPeriodsModel model;
  const CustomOptionsWidgets({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Container(
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
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  model.name,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  textAlign: TextAlign.center,
                  style: AppTextStyle.poppins500Size16,
                ),
              ),
            ),
            Container(
              height: 64,
              width: 47,
              decoration: BoxDecoration(
                image: DecorationImage(image: NetworkImage(model.imageUrl))
              ),
            ),
          ],
        ),
      ),
    );
  }
}
