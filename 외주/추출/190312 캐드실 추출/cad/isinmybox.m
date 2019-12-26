function YN=isinmybox(B,x,y)

if x<B(1) || x>B(2) || y<B(3) || y>B(4), YN=0;
else YN=1;
end
