# Digital Signal Processing Class

-  Implementing matlab code for various type of filters or functions.

## Development Environment
- IDE : Matlab
- OS : Windows10
- Language : Matlab

## Overview
[1. Linearlity Test](#1)  
[2. Sampling](#2)  
[3. Fast Fourier Transform (FFT)](#3)  
[4. Digital Filter](#4)  
[5. Filter Design - Noise Reduction, Speech Noise Reduction, Make Echo](#5)  


## 1. Linearlity Test <a id="1"></a>
<br>

![alt 1번이미지](/image/img1.png)

- As I plot the function, I can classify whether linear or not


## 2. Sampling <a id="2"></a>
<br>

![alt 2번이미지](/image/img2.png)

- Because Our Digital system is discrete, I convert Infinite impulse signal(IIR) to Finite Impulse signal(FIR).

## 3. Fast Fourier Transform (FFT) <a id="3"></a>
<br>

![alt 3번이미지](/image/img3.PNG)

- I learned from the graph that the results of dft and fft are the same, and that in large projects, fft algorithms should be used for the efficiency of computation.


## 4. Digital Filter <a id="4"></a>
<br>

![alt 4번이미지](/image/img4.PNG)

- I implemented digital filter on two kinds of functions.

## 5. Filter Design <a id="5"></a>
<br>

![alt 5번이미지](/image/img5.png)

### Noise Reduction using Kaiser Window & Hamming filter
![alt 6번이미지](/image/img6.png)

![alt 7번이미지](/image/img7.png)

### Noise Reduction using Lowpass filter & Highpass filter
![alt 8번이미지](/image/img8.png)


- I implemented various kinds of filter and window function to reduce noise at simple sound and speech.
- I also implemented echo sound using IIR & FIR on "Legends never die (by Alan walker)" Music. 

