function calculateDaysBetweenDates(begin, end) {
  const beginDate = new Date(begin);
  const endDate = new Date(end);
  const timeDifference = endDate.getTime() - beginDate.getTime();
  const daysDifference = timeDifference / (1000 * 3600 * 24);
  return daysDifference;
}
    
// Return the current time  
// Path: currenttime.js
function getCurrentTime() {
  return new Date();
}

function getTimeString(date) {
  return date.toLocaleTimeString();
}

function getDateString(date) {
  return date.toLocaleDateString();


  // I want a function that sum two numbers and return the result
  // Path: sum.js 

  function sum(a, b) {
}