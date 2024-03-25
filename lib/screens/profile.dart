import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';


class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      backgroundColor:  Colors.pink.shade200,
      title: Text('Doctor Profile',),centerTitle: true,),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          CircleAvatar(
            radius: 50,
  backgroundColor: Colors.brown.shade800,
  child: const Text('Dr.A',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),
),
        
      SizedBox(height: 15,),
        RatingBar.builder(
         initialRating: 3,
         minRating: 1,
         direction: Axis.horizontal,
         allowHalfRating: true,
         itemCount: 5,
         itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
         itemBuilder: (context, _) => Icon(
       Icons.star,
       color: Colors.amber,
         ),
         onRatingUpdate: (rating) {
       print(rating);
         },
      ),
      Text('NAME:',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
      Text('Anus'),
      Text('EMAIL:',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
      Text('anus@gmail.com'),
      Text('PHONE NO:',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
      Text('03053969389'),
      Text('PRNO:',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
      Text('2222'),
      Text('SPEICALIZATION:',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
      Text('0'),
      SizedBox(height: 20,),
      ElevatedButton(onPressed: (){}, child: Text('LOGOUT'))
        
      ],),
    ),
    );
  }
}