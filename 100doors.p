uses
   math;

for var i:=1 to 100 do
    if (sqrt(i) = floor(sqrt(i))) then
       Writeln('Door '+IntToStr(i)+ ': open');
