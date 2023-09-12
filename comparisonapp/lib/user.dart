import 'package:equatable/equatable.dart';

class User extends Equatable {
  final String userName;
  final String phoneNo;
  final String userImage;

  User({required this.userName,required this.phoneNo, required this.userImage});
  
  @override
  List<Object> get props => [userImage,userName,phoneNo];



}