import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_learn_app/features/ui_kit/ui/cubit/ui_kits_cubit.dart';
import 'package:flutter_learn_app/features/ui_kit/ui/cubit/ui_kits_state.dart';
import 'package:flutter_learn_app/features/ui_kit/ui/selected_ui_kits.dart';
import 'package:get_it/get_it.dart';

class UIScreen extends StatelessWidget {
  const UIScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => GetIt.I<UiKitsCubit>()..loadUiKits(),
      child: _UIScreenBody(),
    );
  }
}

class _UIScreenBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text("UI kits",
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w500,
                color: Colors.white)),
        leading: const BackButton(color: Colors.white),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            TextField(
              onChanged: (value) =>
                  context.read<UiKitsCubit>().filterUiKits(value),
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0)),
                hintText: 'Search UI',
                prefixIcon: const Icon(Icons.search),
              ),
            ),
            const SizedBox(height: 15),
            Expanded(
              child: BlocBuilder<UiKitsCubit, UiKitsState>(
                builder: (context, state) {
                  return state.map(
                    initial: (_) => const SizedBox(),
                    loading: (_) => const CircularProgressIndicator(),
                    loaded: (state) => ListView.builder(
                      itemCount: state.uiKits.length,
                      itemBuilder: (context, index) {
                        final uiKit = state.uiKits[index];
                        return InkWell(
                          onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => SelectedUIKit(uiKit: uiKit)),
                          ),
                          child: ListTile(
                            title: Text(uiKit.uiKitTopic),
                            trailing: const Icon(Icons.favorite,
                                color: Colors.deepPurple),
                          ),
                        );
                      },
                    ),
                    error: (state) => Text('Error: ${state.message}'),
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
