import 'package:dalel_project/features/home/presentation/widgets/custom_home_view_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class HomeAppBarSection extends StatelessWidget {
  const HomeAppBarSection({super.key});

  @override
  Widget build(BuildContext context) {
  
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SizedBox(height: 24),
        CustomHomeViewAppBar(),
        SizedBox(height: 32),
      ],
    );
  }
}
