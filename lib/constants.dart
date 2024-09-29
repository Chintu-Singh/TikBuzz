import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:tikbuzz/controllers/auth_controller.dart';
import 'package:tikbuzz/views/screens/auth/add_video_screen.dart';
import 'package:tikbuzz/views/screens/auth/profile_screen.dart';
import 'package:tikbuzz/views/screens/auth/search_screen.dart';
import 'package:tikbuzz/views/screens/auth/video_screen.dart';

List pages = [
  VideoScreen(),
  SearchScreen(),
  const AddVideoScreen(),
  Text('Messages Screen'),
  ProfileScreen(uid: authController.user.uid),
];

// COLORS
const backgroundColor = Colors.black;
var buttonColor = Colors.red[400];
const borderColor = Colors.grey;

// FIREBASE

var firebaseAuth = FirebaseAuth.instance;
var firebaseStorage = FirebaseStorage.instance;
var firestore = FirebaseFirestore.instance;

// CCONTROLLER

var authController = AuthController.instance;
