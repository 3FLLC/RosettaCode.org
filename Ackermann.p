function Ackermann(m,n:Longint):Longint;
begin
   if m=0 then result:=n+1
   else if n=0 then result:=ackermann(m-1,1)
   else result:=ackermann(m-1,ackermann(m,n-1));
end;

begin
   for var n:=0 to 6 do
      for var m:=0 to 3 do
         writeln('Ackermann(',m,',',n,')=',Ackermann(m,n));
end.
