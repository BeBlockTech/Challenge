let moonPhase = 'full';
let isFoggyNight = true;

if (moonPhase === 'full' || isFoggyNight === false) {
  console.log('Howl!');
} else if (moonPhase === 'mostly full') {
  console.log('Arms and legs are getting hairier');
} else if (moonPhase === 'mostly new') {
  console.log('Back on two feets');
} else {
  console.log('Invalid moon phase');
}