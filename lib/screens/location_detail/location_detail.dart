import 'package:flutter/material.dart';
import 'text_section.dart';
import '../../models/location.dart';
import '../../widgets/image_banner.dart';

class LocationDetail extends StatelessWidget{
  final int _locationID;
  
  LocationDetail(this._locationID);

  @override
  Widget build(BuildContext context) {
    final location = Location.fetchByID(_locationID);

    return Scaffold(
        resizeToAvoidBottomPadding: false,
        appBar: AppBar(
          title: Text(location.name),
          backgroundColor: Colors.white,
          centerTitle: true,
        ),
        body: ListView(
           children: [Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ImageBanner(assetPath: location.imagePath),
            ]..addAll(textSections(location))
          )]),
    );
  }

  List<Widget> textSections(Location location){
    return location.facts.map((fact) => TextSection(fact.title, fact.text)).toList();
  }
}