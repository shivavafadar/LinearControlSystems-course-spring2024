num=[1 8 15];
den=[1 2 5 4 0];
sys = tf(num,den)
bode(sys);