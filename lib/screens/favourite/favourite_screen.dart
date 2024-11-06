import 'package:flutter/material.dart';
import 'package:flutter_provider_demo/providers/fovourite_provider.dart';
import 'package:provider/provider.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  @override
  Widget build(BuildContext context) {
    print('+++++++++++++build');
  //  final provider = Provider.of<FavoriteProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text('Favourite Screen'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {
                  return Consumer<FavoriteProvider>(builder: (context, value, child){
                    return ListTile(
                      onTap: () {
                        if(value.selectedItem.contains(index)){
                          value.removeItems(index);
                        }else{
                          value.addItems(index);
                        }
                        print('---------------build');
                      },
                      title: Text('item' + index.toString()),
                      trailing: Icon(value.selectedItem.contains(index)
                          ? Icons.favorite_rounded
                          : Icons.favorite_outline_rounded),
                    );
                  });

                }),
          )
        ],
      ),
    );
  }
}
