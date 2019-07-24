function solution(a, b) {
  var endDayOfMonth = [31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];
  var firstDayOfMonth = ["FRI", "SAT", "SUN", "MON", "TUE", "WED", "THU"];
  var tempVar = b - 1; // 기준일이 1일, -1을 해준다.
  for (var i = 0; i < a - 1; i++) {
    tempVar += endDayOfMonth[i];
  }
  return firstDayOfMonth[tempVar % 7];
}
