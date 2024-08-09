import 'package:flutter/material.dart';

import 'package:nss_project/date_time_formatter.dart';
import 'package:nss_project/event_add_page.dart';

import 'package:nss_project/event_page.dart';
import 'package:nss_project/pic_event_list.dart';
import 'package:nss_project/sprofile_page.dart';
import 'package:nss_project/mentordummyeventpage.dart';
import 'package:nss_project/notification_page.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class SecretaryHomePage extends StatefulWidget {
  const SecretaryHomePage({super.key});

  @override
  State<SecretaryHomePage> createState() => _SecretaryHomePageState();
}

class _SecretaryHomePageState extends State<SecretaryHomePage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    double height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      appBar: AppBar(title: const Center(child: Text('Sectretary View'),),),
      body: ListView(
        children: [
          Row(
              children: [
                SizedBox(
                width: width/2 - 15,
                height: width/2 -15,
                child: ElevatedButton(
                  style: ButtonStyle(backgroundColor: WidgetStateProperty.all(const Color.fromARGB(255, 191, 193, 189)), shape: WidgetStateProperty.all(const ContinuousRectangleBorder())),
                  onPressed: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context) => PicEventList()));      // PAGE ADD HERE
                  },
                  child: Icon(Icons.list_alt,size: width/3,color: const Color.fromARGB(255, 59, 62, 61),),
                ),
              ),
                const SizedBox(width: 10,),
                SizedBox(
                width: width/2 - 15,
                height: width/2 -15,
                child: ElevatedButton(
                  style: ButtonStyle(backgroundColor: WidgetStateProperty.all(const Color.fromARGB(255, 191, 193, 189)), shape: WidgetStateProperty.all(const ContinuousRectangleBorder())),
                  onPressed: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context) => const EventPage())); // PAGE ADD HEre
                  },
                  child: Icon(Icons.format_list_bulleted_add,size: width/3,color: const Color.fromARGB(255, 59, 62, 61),),
                ),
              )
              ],
            )
        ],),
    );
  }
}