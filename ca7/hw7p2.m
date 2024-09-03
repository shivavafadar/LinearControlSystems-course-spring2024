num=[1];
z=10
den=[1 2*z 1];
sys=tf(num,den)
bode(sys);