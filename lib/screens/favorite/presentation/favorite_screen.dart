import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:riverpod_demo/extensions/object_extension.dart';
import 'package:riverpod_demo/screens/favorite/presentation/favorite_notifier.dart';

import '../domain/favorite_character.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorite Characters'),
        forceMaterialTransparency: true,
      ),
      body: SafeArea(child: Consumer(
        builder: (context, ref, child) {
          final favoriteCharacterList = ref.watch(favoriteNotifierProvider);
          return favoriteCharacterList.when(
            data: (favoriteList) {
              return _lisView(favoriteList: favoriteList.value, ref: ref);
            },
            error: (error, stacktrace) {
              print('error0==>$error');
              return Center(
                child: Text(error.getErrorMessage()),
              );
            },
            loading: () {
              return Center(child: CircularProgressIndicator());
            },
          );
        },
      )),
    );
  }

  Widget _lisView(
      {List<FavoriteResult>? favoriteList, required WidgetRef ref}) {
    return ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        itemCount: (favoriteList?.length ?? 0),
        itemBuilder: (context, index) {
          FavoriteResult? result;
          if (index != favoriteList?.length) {
            result = favoriteList?[index];
          }
          return Stack(
            alignment: AlignmentDirectional.topEnd,
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.black12),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8),
                          bottomLeft: Radius.circular(8)),
                      child: Image.network(
                        result?.img ?? '',
                        fit: BoxFit.scaleDown,
                        loadingBuilder: (context, child, loadingProgress) {
                          if (loadingProgress == null) {
                            return child;
                          } else {
                            return SizedBox(
                                height: 125,
                                width: 125,
                                child:
                                    Center(child: CircularProgressIndicator()));
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
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(
                                child: Text(
                                  result?.name ?? '',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: InkWell(
                                  onTap: () async {
                                    await ref
                                        .read(favoriteNotifierProvider.notifier)
                                        .deleteFavorite(result?.id);
                                  },
                                  child: Text(
                                    'Remove',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.red),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Text(
                              '${result?.status ?? ''} - ${result?.species ?? ' '}'),
                          Text('Last known location:'),
                          Text('${result?.locationName ?? ''}',
                              overflow: TextOverflow.ellipsis),
                          Text('First seen in:'),
                          Text('${result?.originName ?? ''}',
                              overflow: TextOverflow.ellipsis),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        });
  }
}
