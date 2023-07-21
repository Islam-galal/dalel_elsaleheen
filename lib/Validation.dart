

import 'dart:io';

import 'package:supabase_flutter/supabase_flutter.dart';

class validation {


  Future<bool> isDataReturned(String? sections, String? pages) async {
    try {
      final response = (await Supabase.instance.client.from('Book').select(
          'sections').order('id', ascending: false)) as List<dynamic>;

      if (response.isEmpty) {
        return false;
      } else {
        print(response[0]);

        return true;
      }
    }

    on SocketException catch (e) {
      throw SocketException('Network Error Please try again');
    }

    on Exception catch (e) {
      return false;
    }
  }

}