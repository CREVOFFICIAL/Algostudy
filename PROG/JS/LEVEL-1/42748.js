var array = [1, 5, 2, 6, 3, 7, 4];
var commands = [[2, 5, 3], [4, 4, 1], [1, 7, 3]];
// var return = [5, 6, 3];

function solution(array, commands) {
  let answer = commands.map(cmdsArr => {
    let beginPos = cmdsArr[0] - 1;
    let endPos = cmdsArr[1];
    let targetPos = cmdsArr[2] - 1;

    let tempArr = array.slice(beginPos, endPos).sort((a, b) => a - b);
    return tempArr[targetPos];
  });
  return answer;
}
