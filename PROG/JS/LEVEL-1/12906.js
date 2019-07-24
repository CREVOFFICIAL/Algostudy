function solution(arr) {
  var tempArr = [];
  var lastNum;
  arr.forEach(function(v) {
    if (lastNum !== v) tempArr.push(v);
    lastNum = v;
  });

  return tempArr;
}
//프로그래머스 - 같은숫자는 싫어
