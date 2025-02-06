import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:pizza_app/app.dart';
import 'package:pizza_app/firebase_options.dart';
import 'package:user_repository/user_repository.dart'; // Đảm bảo bạn đã import đúng
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
     options: DefaultFirebaseOptions.currentPlatform,
  );
  
  // Khởi tạo FirebaseUserRepo thay vì UserRepository
  final userRepository = FirebaseUserRepo();
  
  // Truyền userRepository vào MyApp
  runApp(MyApp(userRepository));
}
