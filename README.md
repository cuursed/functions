# Testing Functions for C++ compiler

Simple benchmark to test different C++ compilation parameters for humble computers.

## How does it work

It's a code with 10 files including a function that only prints which function was executed from which file. It's main code executes each one from 1 to 10.

## Who made it

I coded this "benchmark" using ChatGPT from OpenAI. As it's suposed to run on computers from University of Alicante (UA) and this kind of computers are... humble, and with limited libraries, I didn't want to force myself to code a complex program that could not run here.

## How to use this program

You can either run this commands or create a custom .sh file to test it's speed. It's slow, but you won't have to wait 14 minuts to compile like my classmate!

```
# Test make and it's different timing with different proccessors.
time make -jN
# I would suggest to run that command from -j1 to -j16.

# Test ccached command (compiling a program using cache from earlier compilations).
time ccached make
# You can check the difference running several times time make and time ccached make, remember to use make clean after each compiling test.

# Test distcc command to compile a program on different devices at once.
time make -j8 CC=distcc
# Remember to configure distcc
```
## Documentation

You can check my inpiration for this program on the website of the course [Collaborative Application Development](https://www.dlsi.ua.es/asignaturas/dca/teoria/l05/lessonh.html) at the University of Alicante.
