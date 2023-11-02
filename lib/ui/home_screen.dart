import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:translater/bloc/translation_bloc.dart';
import 'package:translater/data/models/status.dart';
import 'package:translater/ui/widgets/global_text_field.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    controller.text=context.read<TranslationBloc>().state.text;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Translator'),
      ),
      body: BlocBuilder<TranslationBloc, TranslationState>(
        builder: (context, state) {
          if (state.status == FormStatus.loading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Expanded(
                  child: GlobalTextField(
                    hintText: 'Enter text',
                    fillColor: Colors.blue,
                    controller: controller,
                    onChanged: (v) {
                      context.read<TranslationBloc>().copyWith(v);
                      controller.text = v;
                    },
                    maxLines: 50,
                  ),
                ),
                SizedBox(height: 10.h),
                Visibility(
                  visible: state.status != FormStatus.pure,
                  child: Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 10.w, vertical: 10.h),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        border: Border.all(color: Colors.grey, width: 1),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            state.translationModel.destinationText
                                .replaceAll('/', ''),
                          ),
                          const Spacer(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.copy),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10.h),
                SizedBox(
                  height: 56.h,
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    onPressed: () {
                      debugPrint('Controller: ${controller.text}');
                      context.read<TranslationBloc>().add(
                            GetTranslationEvent(
                              sl: 'en',
                              dl: 'uz',
                            ),
                          );
                    },
                    child: const Text('Translate'),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
