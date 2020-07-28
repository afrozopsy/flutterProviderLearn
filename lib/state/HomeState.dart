import 'package:flutter/material.dart';
//import 'package:provider/provider.dart';

class HomeState with ChangeNotifier {

	int numCount = 1;

	void increaseNumCount( int howMuch ){
		numCount = numCount + howMuch;
		notifyListeners();

		print('Updated the value of provider listeners...');
	}

}