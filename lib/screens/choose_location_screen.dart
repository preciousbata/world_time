import 'package:flutter/material.dart';
import 'package:world_time/screens/home_screen.dart';

import '../services.dart';

class ChooselocationScreen extends StatefulWidget {
  static String routeName =  '/location';
  const ChooselocationScreen({Key? key}) : super(key: key);

  @override
  State<ChooselocationScreen> createState() => _ChooselocationScreenState();
}

class _ChooselocationScreenState extends State<ChooselocationScreen> {

  List<WorldTime> locations = [
    WorldTime(location: 'Nigeria', flag: 'nigeria.png', url: 'Africa/Nigeria'),
    WorldTime(location: 'London', flag: 'london.png', url: 'Europe/London'),
    WorldTime(location: 'Berlin', flag: 'berlin.png', url: 'Europe/Berlin'),
    WorldTime(location: 'Kenya', flag: 'kenya.png', url: 'Africa/Kenya'),
  ];
  void updateTime(index)async{
    WorldTime instance = locations[index];
    await instance.getTime();
    Navigator.pushReplacementNamed(context,HomeScreen.routeName, arguments:{
      'time':instance.time,
      'location':instance.location,
      'flag':instance.flag,
      'isDayTime':instance.isDayTime,
    });
  }
  @override void initState(){
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          title: const Text('Choose a Location'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: locations.length,
          itemBuilder: (context,index){
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 1.0,horizontal: 4.0),
              child: Card(
                child: ListTile(
                  onTap: (){updateTime(index);},
                  title: Text(locations[index].location),
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(
                        'assets/images/${locations[index].flag}'
                    ),
                  ),
                ),
              ),
            );
          },
        )
    );
  }
}
