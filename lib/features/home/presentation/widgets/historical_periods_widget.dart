import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dalel_project/core/widgets/custom_options_widget.dart';
import 'package:dalel_project/features/home/presentation/view_model/historical_oeriods_model.dart';
import 'package:flutter/material.dart';

FirebaseFirestore firestore = FirebaseFirestore.instance;

class HistoricalPeriods extends StatelessWidget {
  const HistoricalPeriods({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<QuerySnapshot>(
      future: FirebaseFirestore.instance.collection('historical_periods').get(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return const Center(child: Text("Something went wrong"));
        }

        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }

        if (snapshot.connectionState == ConnectionState.done &&
            snapshot.hasData) {
          List<HistoricalPeriodsModel> historicalPeriods = [];

          for (int i = 0; i < snapshot.data!.docs.length; i++) {
            historicalPeriods.add(
              HistoricalPeriodsModel.formjson(
                snapshot.data!.docs[i],
              ),
            );
          }

          return SizedBox(
            height: 96,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) => const SizedBox(width: 10),
              itemCount: snapshot.data!.docs.length,
              itemBuilder: (BuildContext context, int index) {
                final period = historicalPeriods[index];
                return CustomOptionsWidgets(model: period);
              },
            ),
          );
        }

        return const Center(child: Text("No Data available"));
      },
    );
  }
}
