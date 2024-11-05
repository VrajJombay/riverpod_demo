import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:riverpod_demo/extensions/object_extension.dart';
import 'package:riverpod_demo/screens/character_details/presentation/character_details_notifier.dart';

import '../../../utils/arguments.dart';
import '../domain/character_details.dart';

class CharacterDetailsScreen extends ConsumerStatefulWidget {
  const CharacterDetailsScreen({
    required this.arg,
    super.key,
  });

  final CharacterDetailsArg arg;

  @override
  ConsumerState<CharacterDetailsScreen> createState() => _CharacterDetailsScreenState();
}

class _CharacterDetailsScreenState extends ConsumerState<CharacterDetailsScreen> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((callback) {
      ref.read(characterDetailsNotifierProvider.notifier).getCharacterDetails(widget.arg.id);
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final characterDetails = ref.watch(characterDetailsNotifierProvider.select((value) => value.characterDetails));
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.arg.name),
        forceMaterialTransparency: true,
      ),
      body: SafeArea(
        child: characterDetails.when(
          data: (characterDetailsState) {
            return Container(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _detailsWidget(characterDetailsState),
                  Gap(10),
                  Text('Episode', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
                  Gap(10),
                  if (characterDetailsState?.episode?.isNotEmpty ?? false) _listView(characterDetailsState),
                ],
              ),
            );
          },
          error: (error, stacktrace) {
            return Center(
              child: Text(error.getErrorMessage()),
            );
          },
          loading: () {
            return Center(child: CircularProgressIndicator());
          },
        ),
      ),
    );
  }

  Widget _detailsWidget(CharacterDetails? characterDetailsState) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.network(
            characterDetailsState?.img ?? '',
            fit: BoxFit.scaleDown,
            errorBuilder: (context, _, __) {
              return Container(
                height: 100,
              );
            },
            height: 100,
            // width: 100,
          ),
        ),
        Gap(10),
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                characterDetailsState?.name ?? '',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                overflow: TextOverflow.ellipsis,
              ),
              Text('${characterDetailsState?.status ?? ''} - ${characterDetailsState?.species ?? ' '}'),
            ],
          ),
        ),
      ],
    );
  }

  Widget _listView(CharacterDetails? characterDetailsState) {
    return Expanded(
      child: ListView.separated(
          itemBuilder: (context, index) {
            return Text(characterDetailsState?.episode?[index] ?? '');
          },
          separatorBuilder: (context, index) {
            return Divider();
          },
          itemCount: characterDetailsState?.episode?.length ?? 0),
    );
  }
}
