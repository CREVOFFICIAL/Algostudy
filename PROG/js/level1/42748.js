var array = [1, 5, 2, 6, 3, 7, 4];
var commands = [[2, 5, 3], [4, 4, 1], [1, 7, 3]];
// var return = [5, 6, 3];

function solution(array, commands) {
  var answer = [];
  for (var i = 0; i < commands.length; i++) {
    var tempArr = [];
    var beginPos = commands[i][0];
    var endPos = commands[i][1];
    var targetPos = commands[i][2];
    tempArr = array.slice(beginPos - 1, endPos);
    tempArr.sort((a, b) => a - b);
    answer.push(tempArr[targetPos - 1]);
  }
  return answer;
}
