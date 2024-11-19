import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:riverpod_demo/extensions/object_extension.dart';
import 'package:riverpod_demo/navigation/app_routes.dart';
import 'package:riverpod_demo/screens/character/presentation/character_notifier.dart';
import 'package:riverpod_demo/utils/arguments.dart';

import '../domain/character.dart';

class CharacterScreen extends ConsumerStatefulWidget {
  const CharacterScreen({super.key});

  @override
  ConsumerState<CharacterScreen> createState() => _CharacterScreenState();
}

class _CharacterScreenState extends ConsumerState<CharacterScreen> {
  late TextEditingController _textEditingController;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((callback) {
      ref.read(characterNotifierProvider.notifier).getCharacter();
    });
    _textEditingController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: SafeArea(
        child: Consumer(builder: (context, ref, child) {
          final AsyncValue<List<Result>?> characterList = ref.watch(characterNotifierProvider.select(
            (value) => value.getCharacterData,
          ));
          print("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ main build ${characterList.asData?.value?.length}");
          return characterList.when(
            data: (characters) {
              return Consumer(builder: (context, ref, _) {
                final isListView = ref.watch(characterNotifierProvider.select(
                  (value) => value.isListView,
                ));
                return isListView
                    ? _lisView(
                        currentPage: ref.read(characterNotifierProvider).currentPage,
                        totalPage: ref.read(characterNotifierProvider).totalPage,
                        characters: characters ?? [])
                    : _gridView(
                        currentPage: ref.read(characterNotifierProvider).currentPage,
                        totalPage: ref.read(characterNotifierProvider).totalPage,
                        characterState: characters);
              });
            },
            error: (error, stacktrace) {
              return Center(
                child: Text(error.getErrorMessage()),
              );
            },
            loading: () {
              return Center(child: CircularProgressIndicator());
            },
          );
        }),
      ),
    );
  }

  Widget _lisView({int? currentPage, int? totalPage, required List<Result> characters}) {
    return ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        itemCount: ((totalPage ?? 0) > (currentPage ?? 0) && _textEditingController.text.isEmpty) ? (characters?.length ?? 0) + 1 : (characters?.length ?? 0),
        itemBuilder: (context, index) {
          Result? result;
          if (index != characters.length) {
            result = characters[index];
          }
          return index == characters.length
              ? Consumer(builder: (context, PreferencesRef, child) {
                  final loadingData = ref.watch(characterNotifierProvider.select((value) => value.loadingData));
                  return loadingData.when(data: (loadingData) {
                    print("#@@@@@@@@@@@@@@ getting cararesssasasas");
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      ref.read(characterNotifierProvider.notifier).getCharacter();
                    });
                    return SizedBox.shrink();
                  }, error: (error, _) {
                    return Center(child: Text(error.getErrorMessage()));
                  }, loading: () {
                    return Center(child: CircularProgressIndicator());
                  });
                })
              : GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, AppRoutes.characterDetailsRoute,
                        arguments: CharacterDetailsArg(name: result?.name ?? '', id: result?.id ?? 0));
                  },
                  child: Stack(
                    alignment: AlignmentDirectional.topEnd,
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 5),
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), color: Colors.black12),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(8), bottomLeft: Radius.circular(8)),
                              child: Image.network(
                                result?.img ?? '',
                                fit: BoxFit.scaleDown,
                                loadingBuilder: (context, child, loadingProgress) {
                                  if (loadingProgress == null) {
                                    return child;
                                  } else {
                                    return SizedBox(height: 125, width: 125, child: Center(child: CircularProgressIndicator()));
                                  }
                                },
                                errorBuilder: (context, _, __) {
                                  return Container(
                                    height: 125,
                                    width: 125,
                                    child: Center(child: Text('No image')),
                                  );
                                },
                                height: 125,
                                // width: 100,
                              ),
                            ),
                            Gap(10),
                            Flexible(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    result?.name ?? '',
                                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  Text('${result?.status ?? ''} - ${result?.species ?? ' '}'),
                                  Text('Last known location:'),
                                  Text('${result?.locationName ?? ''}', overflow: TextOverflow.ellipsis),
                                  Text('First seen in:'),
                                  Text('${result?.originName ?? ''}', overflow: TextOverflow.ellipsis),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: () {
                            if (result?.isFavorite != true) {
                              ref.read(characterNotifierProvider.notifier).addCharacterToFavorite(result?.id ?? 0, index);
                            }
                          },
                          child: (result?.isFavorite ?? false) ? Icon(Icons.favorite, color: Colors.red) : Icon(Icons.favorite_border),
                        ),
                      ),
                    ],
                  ),
                );
        });
  }

  Widget _gridView({int? currentPage, int? totalPage, List<Result>? characterState}) {
    return GridView.builder(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        itemCount:
            ((totalPage ?? 0) > (currentPage ?? 0) && _textEditingController.text.isEmpty) ? (characterState?.length ?? 0) + 1 : (characterState?.length ?? 0),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, childAspectRatio: 0.55, crossAxisSpacing: 10),
        itemBuilder: (context, index) {
          Result? result;
          if (index != characterState?.length) {
            result = characterState?[index];
          }
          return index == characterState?.length
              ? Consumer(builder: (context, PreferencesRef, child) {
                  final loadingData = ref.watch(characterNotifierProvider.select((value) => value.loadingData));
                  return loadingData.when(data: (loadingData) {
                    print("#@@@@@@@@@@@@@@ getting cararesssasasas");
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      ref.read(characterNotifierProvider.notifier).getCharacter();
                    });
                    return SizedBox.shrink();
                  }, error: (error, _) {
                    return Center(child: Text(error.getErrorMessage()));
                  }, loading: () {
                    return Center(child: CircularProgressIndicator());
                  });
                })
              : GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, AppRoutes.characterDetailsRoute,
                        arguments: CharacterDetailsArg(name: result?.name ?? '', id: result?.id ?? 0));
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 5),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), color: Colors.black12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(8), topRight: Radius.circular(8)),
                          child: Image.network(
                            result?.img ?? '',
                            fit: BoxFit.scaleDown,
                            loadingBuilder: (context, child, loadingProgress) {
                              if (loadingProgress == null) {
                                return child;
                              } else {
                                return SizedBox(height: 150, child: Center(child: CircularProgressIndicator()));
                              }
                            },

                            errorBuilder: (context, _, __) {
                              return Container(
                                height: 150,
                              );
                            },
                            // height: 150,
                            // width: 100,
                          ),
                        ),
                        Gap(10),
                        Flexible(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  result?.name ?? '',
                                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                                  overflow: TextOverflow.ellipsis,
                                ),
                                Text('${result?.status ?? ''} - ${result?.species ?? ' '}', overflow: TextOverflow.ellipsis),
                                Text('Last known location:'),
                                Text('${result?.locationName ?? ''}', overflow: TextOverflow.ellipsis),
                                Text('First seen in:'),
                                Text('${result?.originName ?? ''}', overflow: TextOverflow.ellipsis),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
        });
  }

  AppBar _appBar() {
    return AppBar(
      forceMaterialTransparency: true,
      title: Text('Rick & Morty'),
      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 4),
          child: InkWell(
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.favoriteRoute);
            },
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 1),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Icon(Icons.favorite_border, color: Colors.black),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          child: Consumer(
            builder: (context, ref, child) {
              final isListView = ref.watch(characterNotifierProvider.select(
                (value) => value.isListView,
              ));

              return GestureDetector(
                onTap: () {
                  ref.read(characterNotifierProvider.notifier).onChangeView(isListView);
                },
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 1),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: isListView
                      ? Icon(Icons.grid_view, color: Colors.black)
                      : Icon(
                          Icons.list,
                          color: Colors.black,
                        ),
                ),
              );
            },
          ),
        ),
      ],
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(40),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 5),
          child: TextField(
            decoration: InputDecoration(hintText: 'Search By Name'),
            controller: _textEditingController,
            onChanged: (value) {
              ref.read(characterNotifierProvider.notifier).searchByName(value);
            },
          ),
        ),
      ),
    );
  }
}
