function solution(participant, completion) {
  var tempObj = {};
  var answer;
  participant.forEach(e => {
    if (tempObj.hasOwnProperty(e)) {
      tempObj[e]++;
    } else {
      tempObj[e] = 1;
    }
  });

  completion.forEach(e => {
    tempObj[e]--;
  });

  participant.forEach(e => {
    if (tempObj[e] > 0) {
      answer = e;
    }
  });
  return answer;
}

var participant = ["leo", "kiki", "eden"];
var completion = ["eden", "kiki"];
console.log(solution(participant, completion));
