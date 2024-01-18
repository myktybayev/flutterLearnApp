import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_learn_app/features/theory/ui/cubit/theory_cubit.dart';
import 'package:flutter_learn_app/features/theory/ui/cubit/theory_state.dart';
import 'package:flutter_learn_app/features/theory/ui/screens/selected_theory.dart';
import 'package:flutter_learn_app/features/theory/ui/screens/theory_statics.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class TheoryScreen extends StatefulWidget {
  TheoryScreen({super.key});

  @override
  State<TheoryScreen> createState() => _TheoryScreenState();
}

class _TheoryScreenState extends State<TheoryScreen> {
  TheoryCubit get bloc => context.read<TheoryCubit>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Padding(
          padding: EdgeInsets.only(left: 10),
          child: Text(
            "Theories",
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.w500, color: Colors.white),
          ),
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(15),
            bottomRight: Radius.circular(15),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
        child: Column(
          children: [
            TextField(
              onChanged: (value) => bloc.runFilter(value),
              textAlignVertical: TextAlignVertical.center,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                hintText: 'Search Theory',
                labelStyle: TextStyle(
                  color: Colors.black.withOpacity(0.5),
                ),
                prefixIcon: Icon(
                  Icons.search,
                  size: 35,
                  color: Colors.black.withOpacity(0.5),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Expanded(
              child: BlocBuilder<TheoryCubit, TheoryState>(
                builder: (context, state) {
                  return ListView.builder(
                    itemCount: state.filteredTheoryList.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          InkWell(
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.1),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Column(
                                children: [
                                  ListTile(
                                    title: Text(
                                      state.filteredTheoryList[index]
                                              .theoryName ??
                                          '',
                                    ),
                                    trailing: Icon(
                                      Icons.arrow_forward_ios,
                                      color: Colors.black.withOpacity(0.7),
                                    ),
                                    leading: InkWell(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    StaticsScreen()));
                                      },
                                      child: CircularPercentIndicator(
                                        circularStrokeCap:
                                            CircularStrokeCap.round,
                                        radius: 20.0,
                                        lineWidth: 5.0,
                                        percent: 0.75,
                                        center: const Text(
                                          "75%",
                                          style: TextStyle(fontSize: 10),
                                        ),
                                        progressColor: Colors.deepPurple,
                                        backgroundColor:
                                            Colors.deepPurple.withOpacity(0.2),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SelectedTheory(
                                            theory: state
                                                .filteredTheoryList[index]
                                                .theoryName as String,
                                            topicList: state
                                                .filteredTheoryList[index]
                                                .topics as List,
                                            topicsPharagraph: state
                                                .filteredTheoryList[index]
                                                .topicsPharagraph as List,
                                          )));
                            },
                          ),
                          const SizedBox(
                            height: 10,
                          )
                        ],
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
