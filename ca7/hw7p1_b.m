num=[1 2 1];
den=[1 20 100 0 0 0];
sys=tf(num,den)
bode(sys);