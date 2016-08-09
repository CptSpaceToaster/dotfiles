#!/usr/bin/env python3

def bg(color):
    return '\033[48;5;{}m'.format(color)

reset = '\033[0m'

if __name__ == '__main__':
    print('System Colors')
    for x in range(0, 16):
        print(bg(x)+'  '+reset, end='')
        if (x==7 or x==15):
            print()

    print('Color Cube 6x6x6')
    for y in range (0, 6):
        for x in range(0, 36):
            print(bg(16+x+y*36)+'  '+reset, end='')
            if (x%6 == 5):
                print(' ', end='')
        print()

    print('Greyscale Ramp')
    for x in range(0, 24):
        print(bg(232 + x)+'  '+reset, end='')
    print()
