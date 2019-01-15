
import 'package:flutter_test/flutter_test.dart';
import 'package:what_4_lunch/decision.dart';
import 'package:what_4_lunch/decision_service.dart';

void main() {
  test('mapDecision should convert a json string into a Decision model', () {
    String jsonStr = """{"time":"2019-01-15", "dayOfWeek": "tuesday", "attendees": ["Mike", "Carlos"]}""";
    Decision decision = decisions.mapDecision(jsonStr);
    expect(decision.time, equals(DateTime.parse("2019-01-15")));
    expect(decision.dayOfWeek, equals("tuesday"));
    // expect(decision.attendees, hasLength(2));
  }); 
}