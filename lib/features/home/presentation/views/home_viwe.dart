
import 'package:dalel_project/features/home/presentation/widgets/home_section/historical_characters_section.dart';
import 'package:dalel_project/features/home/presentation/widgets/home_section/historical_periods_section.dart';
import 'package:dalel_project/features/home/presentation/widgets/home_section/home_app_bar_section.dart';
import 'package:flutter/material.dart';

import '../widgets/home_section/historical_souvenirs_section.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: CustomScrollView(
            physics: BouncingScrollPhysics(),
            slivers: [
              SliverToBoxAdapter(child: HomeAppBarSection()),
              SliverToBoxAdapter(child: HistoricalPeriodsSection()),
              SliverToBoxAdapter(child: HistoricalCharactersSection()),
              SliverToBoxAdapter(child: HistoricalSouvenirsSection())
            ],
          ),
        ),
      ),
    );
  }
}



