import 'location_fact.dart';

class Location{
  final int id;
  final String name;
  final String imagePath;
  final List<int> activitiesIndex;
  final String shortDesc;
  final List<LocationFact> facts;

  Location({this.id, this.name, this.imagePath, this.activitiesIndex, this.shortDesc, this.facts});

  static List<Location> fetchAll() {
    return [
      
      Location(
        id: 1,
        name: 'Osmeña Peak', 
        imagePath: 'assets/images/osmena_heights.jpg', 
        activitiesIndex: [1], 
        shortDesc: "The highest peak in Cebu", 
        facts: [LocationFact('Summary',
                "Is the highest peak in cebu. Hugging the shores of Badian and is like the \"deformed twin\"" + 
                            "of Bohol's Chocolate Hills."),
            LocationFact('How to Get There?',
                "Take a bus bound for Oslob or Santander/Li-loan at South Bus Terminal in Cebu City. " + 
                "Bus fare is about PHP 106 and travel time is approximately 3 hours." + 
                " Tell the conductor and/or driver that you will get off at Dalaguete junction for Osmeña Peak."),
          ]),
      Location(
        id: 2,
        name: 'Kawasan Falls', 
        imagePath: 'assets/images/kawasan_falls.jpg', 
        activitiesIndex: [0,2], 
        shortDesc: "River with blue waters",
        facts: [LocationFact('Summary',
              "Kawasan Falls is one of the most famous waterfalls in the Philippines, especially in Cebu along with Tumalog Falls. " +
              "\n\nHere awaits turquoise blue water where you can swim around and relax." + 
              "\n\nFor those who are more adventurous, one could also embark on a bamboo raft and go for a ride under the waterfall " + 
              "and at the same time receive a tremendous neck massage by the pouring water."),
          LocationFact('How to Get There?',
              "The buses are running from Cebu City to Kawasan Falls, are starting from the South Bus Terminal. " + 
              "You can take all of the buses going to Bato (via Barili). \n\n" + 
              "It is very important that you take the bus to Bato via Barili since the other bus from Cebu to Bato " + 
              "is via Oslob and it stops instead on the east side (Kawasan Falls is located on the west).\n\n"
              "If you are not sure which bus or where it departs from, just ask a guard or a bus driver. Everyone is friendly and helpful, so no problem there.\n\n" +
              "When you enter the bus, you could also ask the conductor or the bus driver to notice you when you’re arriving at Kawasan Falls.\n\n" +
              "I went with the bus company Ceres (yellow buses). However, several bus companies run the same route."),
         ]),
      Location(
        id: 3,
        name: 'Moalboal', 
        imagePath: 'assets/images/moalboal.jpg', 
        activitiesIndex: [2,5], 
        shortDesc: "Plunge with sardines",
        facts: [LocationFact('Summary',
              "The Sardine Run Moalboal is an insane once in a lifetime experience. Here’s all the info for chucking on a snorkel and how to swim with a million sardines."),
          LocationFact('How to Get There?',
              "Ride a Ceres Bus bound for Moalboal via Barili or Badian. Vans are also available at One Citilink Terminal in Cebu City. " +
              "The bus will drop you off at the bus stop. Once you're in Moalboal town, you can hire a tricycle to take you to Moalboal beach – " + 
              "White Beach or Panagsama Beach where most beach resorts are located."),
        ]),
    ];
  }  

  static Location fetchByID(locationID){
    List<Location> locations = fetchAll();
    for(var i = 0; i < locations.length; i++){
      if(locations[i].id == locationID){
        return locations[i];
      }
    }
    return null;
  }

  static final List<String> activityList = [
    "Canyoneering",
    "Hiking",
    "Swimming",
    "Running",
    "Shopping",
    "Snorkeling",
    "Praying"
  ];

}
