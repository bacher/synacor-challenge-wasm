const MAX_STEPS = 12;

function makeStep(value, cell, step, path) {
  if (value <= 0) {
    return;
  }

  if (step === MAX_STEPS && cell !== '1') {
    return;
  }

  const nextStep = step + 1;
  const newPath = [...path, cell];

  switch (cell) {
    case '22':
      makeStep(value, '+#1', nextStep, newPath);
      makeStep(value, '-#1', nextStep, newPath);
      break;
    case '8':
      makeStep(value, '-#2', nextStep, newPath);
      makeStep(value, '*#1', nextStep, newPath);
      break;
    case '4':
      makeStep(value, '*#1', nextStep, newPath);
      makeStep(value, '+#1', nextStep, newPath);
      makeStep(value, '-#1', nextStep, newPath);
      makeStep(value, '-#3', nextStep, newPath);
      break;
    case '11':
      makeStep(value, '-#2', nextStep, newPath);
      makeStep(value, '*#1', nextStep, newPath);
      makeStep(value, '*#2', nextStep, newPath);
      makeStep(value, '-#3', nextStep, newPath);
      break;
    case '9':
      makeStep(value, '-#3', nextStep, newPath);
      makeStep(value, '-#1', nextStep, newPath);
      makeStep(value, '*#3', nextStep, newPath);
      break;
    case '18':
      makeStep(value, '*#2', nextStep, newPath);
      makeStep(value, '-#3', nextStep, newPath);
      makeStep(value, '*#3', nextStep, newPath);
      break;
    case '1':
      if (value === 30) {
        console.log('Victory!', newPath);
      }
      break;
    // Operations
    case '+#1':
      makeStep(value + 4, '4', nextStep, newPath);
      break;
    case '*#1':
      makeStep(value * 8, '8', nextStep, newPath);
      makeStep(value * 11, '11', nextStep, newPath);
      makeStep(value * 4, '4', nextStep, newPath);
      break;
    case '-#1':
      makeStep(value - 4, '4', nextStep, newPath);
      makeStep(value - 9, '9', nextStep, newPath);
      break;
    case '-#2':
      makeStep(value - 8, '8', nextStep, newPath);
      makeStep(value - 11, '11', nextStep, newPath);
      makeStep(value - 1, '1', nextStep, newPath);
      break;
    case '-#3':
      makeStep(value - 11, '11', nextStep, newPath);
      makeStep(value - 4, '4', nextStep, newPath);
      makeStep(value - 18, '18', nextStep, newPath);
      makeStep(value - 9, '9', nextStep, newPath);
      break;
    case '*#2':
      makeStep(value * 1, '1', nextStep, newPath);
      makeStep(value * 11, '11', nextStep, newPath);
      makeStep(value * 18, '18', nextStep, newPath);
      break;
    case '*#3':
      makeStep(value * 18, '18', nextStep, newPath);
      makeStep(value * 9, '9', nextStep, newPath);
      break;
    default:
      throw new Error(`Invalid cell ${cell}`);
  }
}

makeStep(22, '22', 0, []);
