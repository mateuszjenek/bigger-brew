import 'dart:convert';

import 'package:bigger_brew/infrastructure/beer/beer_event.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@LazySingleton()
class BeerEventQueue {
  static const key = "queue";
  final events = List<BeerEvent>();

  BeerEventQueue();

  Future<void> push(BeerEvent event) async {
    var beers = await _getFromLocalStorage();
    beers.add(event);
    await _saveToLocalStorage(beers);
    return beers;
  }

  Future<List<BeerEvent>> popAll() async {
    var beers = await _getFromLocalStorage();
    beers.sort((a, b) => a.timestamp.compareTo(b.timestamp));
    await _saveToLocalStorage([]);
    return beers;
  }

  Future<List<BeerEvent>> _getFromLocalStorage() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var eventsStr = prefs.getString(BeerEventQueue.key);
    if (eventsStr == null) {
      return [];
    }
    List<dynamic> json = jsonDecode(eventsStr);
    List<BeerEvent> events =
        json.map((json) => BeerEvent.fromJson(json)).toList();
    return events;
  }

  Future<bool> _saveToLocalStorage(List<BeerEvent> events) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var json = jsonEncode(events);
    return await prefs.setString(BeerEventQueue.key, json);
  }
}
