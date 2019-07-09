/*
 * n 10 r  41
 * n 12 r  44
 * n 13 r 111
 */
let n = 10;

function solution(n) {
  let quotient = n;
  let answer = "";

  while (quotient > 0) {
    if (quotient % 3 === 0) {
      answer = "4" + answer;
      quotient--;
    } else if (quotient % 3 !== 0) {
      answer = (quotient % 3) + answer;
    }
    quotient = parseInt(quotient / 3);
  }
  return answer;
}
