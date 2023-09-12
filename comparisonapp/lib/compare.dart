import 'package:comparisonapp/user.dart';
import 'package:flutter/material.dart';

class Compare extends StatefulWidget {
  const Compare({super.key});

  @override
  State<Compare> createState() => _CompareState();
}

class _CompareState extends State<Compare> {
  final user1 = User(
      userName: 'Kanishka',
      phoneNo: '123456',
      userImage:
          'https://cdn.pixabay.com/photo/2012/04/18/14/28/buddy-37197_1280.png');
  final user2 = User(
      userName: 'Kanishka',
      phoneNo: '123456',
      userImage:
          'https://cdn.pixabay.com/photo/2012/04/18/14/28/buddy-37197_1280.png');

          compareUser(BuildContext context){
            if(user1 == user2){
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('yes they equal')));
            }else{
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Not equal')));
            }

          }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Equatable App',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

            userWidget(
           phoneNo: user1.phoneNo, name: user1.userName, image: user1.userImage),


            ElevatedButton(onPressed: () {
              compareUser(context);
            }, child: Text('Compare')),

            userWidget(phoneNo: user2.phoneNo, name: user2.userName, image: user2.userImage)
          ],
        ),
      )
       
    );
  }
}

userWidget({
  required phoneNo,
  required name,
  required image,
}) {
  return Column(
    children: [
      Image.network(
        image,
        width: 80,
        height: 80,

      ),
      const SizedBox(height: 5),
      Text(
        name,
        style: const TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w800,
        ),
      ),
      Text(
        phoneNo,
        style: const TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w800,
        ),
      ),
    ],
  );
}
