import 'package:flutter/material.dart';
import '../../app.dart';
import '../../models/location.dart';
import '../../globals.dart';
import '../../widgets/image_banner.dart';
import '../location_detail/tile_overlay.dart';

class Locations extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final locations = Location.fetchAll();
    return Scaffold(
        appBar: AppBar(
          title: Text(Globals.appTitle),
          backgroundColor: Colors.white,
          centerTitle: true,
        ),
        body: ListView.builder(
           itemCount: locations.length,
           itemBuilder: (context, index) => _itemBuilder(context, locations[index]),
         
        ));
  }

  _onLocationTap(BuildContext context, int locationID){
    Navigator.pushNamed(context, Globals.LocationsDetailRoute, arguments: {"id": locationID});
  }


  Widget _itemBuilder(BuildContext context, Location location){
    return  GestureDetector(
                onTap: () => _onLocationTap(context, location.id) ,
                child: Container(
                  height: 245.0,
                  child: (
                    Stack(
                      children: [
                        ImageBanner(assetPath: location.imagePath, height: 245.0),
                        TileOverlay(location),
                      ]
                    )
                  ),
                ),
            );
  }

}
