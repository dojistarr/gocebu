import 'package:first_project_again/screens/location_detail/location_detail.dart';
import 'package:flutter/material.dart';
import 'screens/locations/locations.dart';
import 'style.dart';
import 'globals.dart';



class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: _routes(),
      theme: _theme()
    );
  }

  RouteFactory _routes(){
    return (settings) {
      final Map<String, dynamic> arguments = settings.arguments;
      Widget screen;
      switch(settings.name){
        case Globals.LocationsRoute:
          screen = Locations();
          break;
        case Globals.LocationsDetailRoute:
          screen = LocationDetail(arguments["id"]);
          break;
        default:
          return null;
      }
      return MaterialPageRoute(builder: (BuildContext context) => screen);
    };
  }

  ThemeData _theme() {
    return ThemeData(
        appBarTheme: AppBarTheme(
          textTheme: TextTheme(title: AppBarTextStyle),
        ),
        textTheme: TextTheme(
          title: TitleTextStyle,
          subtitle: SubTitleTextStyle,
          caption: CaptionTextStyle,
          body1: Body1TextStyle,
        )
      );  
  }
}
