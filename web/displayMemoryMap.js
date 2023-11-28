const BINARY_SIZE = 29957;

const SIDE = 300;
const CELL_WIDTH = 4;
const CELL_HEIGHT = 8;

const WIDTH = SIDE * CELL_WIDTH;
const HEIGHT = 800;

export function displayMemoryMap(memoryMap) {
  console.log('MemoryMap:', memoryMap);

  let canvas = document.getElementById('#canvas');

  if (!canvas) {
    canvas = document.createElement('canvas');
    canvas.id = 'canvas';
    canvas.width = WIDTH;
    canvas.height = HEIGHT;
    document.body.append(canvas);
  }

  const ctx = canvas.getContext('2d', {
    alpha: false,
    antialias: false,
    stencil: false,
    willReadFrequently: false,
  });

  ctx.clearRect(0, 0, canvas.width, canvas.height);

  const highlights = [];

  for (let i = 0; i < BINARY_SIZE; i += 1) {
    const [type, count] = memoryMap.get(i) ?? [0, 0];

    const y = Math.floor(i / SIDE);
    const x = i % SIDE;

    const isOp = Boolean(type & 1);
    const isRead = Boolean(type & 2);
    const isWrite = Boolean(type & 4);

    ctx.globalAlpha = Math.min(1, 0.5 + count * 0.1);

    if (isOp && isWrite) {
      ctx.fillStyle = 'red';
    } else if (isOp && isRead) {
      ctx.fillStyle = 'pink';
    } else if (isOp) {
      ctx.fillStyle = 'purple';
    } else if (isRead && isWrite) {
      ctx.fillStyle = 'blue';
    } else if (isRead) {
      ctx.fillStyle = 'green';
    } else if (isWrite) {
      ctx.fillStyle = 'yellow';
    } else {
      ctx.fillStyle = 'gray';
      ctx.globalAlpha = 0.5;
    }

    ctx.beginPath();
    ctx.rect(x * CELL_WIDTH, y * CELL_HEIGHT, CELL_WIDTH, CELL_HEIGHT);
    ctx.fill();

    if (count >= 50) {
      highlights.push([x, y, count]);
    }
  }

  ctx.globalAlpha = 1;

  ctx.strokeStyle = 'rgba(50 50 50 / 0.5)';
  for (let i = 0; i < SIDE; i += 1) {
    ctx.beginPath();
    ctx.moveTo(i * CELL_WIDTH, 0);
    ctx.lineTo(i * CELL_WIDTH, HEIGHT);
    ctx.stroke();
  }

  for (let i = 0; i < HEIGHT / CELL_HEIGHT; i += 1) {
    ctx.beginPath();
    ctx.moveTo(0, i * CELL_HEIGHT);
    ctx.lineTo(WIDTH, i * CELL_HEIGHT);
    ctx.stroke();
  }

  for (const [x, y, count] of highlights) {
    ctx.beginPath();
    ctx.rect(x * CELL_WIDTH, y * CELL_HEIGHT, CELL_WIDTH, CELL_HEIGHT);

    if (count > 100) {
      ctx.strokeStyle = 'rgba(255 255 255 / 1)';
    } else {
      ctx.strokeStyle = 'rgba(255 255 255 / 0.5)';
    }

    ctx.stroke();
  }

  ctx.beginPath();
}
