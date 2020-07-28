import 'package:flutter/material.dart';
//import 'package:provider/provider.dart';

class HomeState with ChangeNotifier {

	int numCount = 49;

	increaseNumCount( int howMuch ){
		numCount = numCount + howMuch;
		print('Updated the value of provider listeners...');
	}

}