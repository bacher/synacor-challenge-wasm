export declare function outputChar(char: u16): void;

// labelType = 0 - label
// labelType = 1 - function
export declare function onNewLabel(offset: u16, labelType: u16): void;

// type = 1 - command
// type = 2 - rmem
// type = 4 - wmem
export declare function reportOffset(type: u16, offset: u16, length: u16): void;
