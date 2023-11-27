import { reportOffset } from './env';

export function reportOp(opCode: u16, opOffset: u16): void {
  switch (opCode) {
    case 0:
    case 18:
    case 21:
      reportOffset(1, opOffset, 1);
      break;
    case 2:
    case 3:
    case 6:
    case 17:
    case 19:
    case 20:
      reportOffset(1, opOffset, 2);
      break;
    case 1:
    case 7:
    case 8:
    case 14:
    case 15:
    case 16:
      reportOffset(1, opOffset, 3);
      break;
    case 4:
    case 5:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
      reportOffset(1, opOffset, 4);
      break;
    default:
      throw new Error(`Invalid Operation (${opCode})`);
  }
}
