type
   func=function(num:extended):extended of object;
   afactory=union
      sum:extended;
   end;

function afactory.afadd(num:extended):extended; // extends the union
begin
   sum+=num;
   result:=self.sum;
end;

function accumulator(num:extended):func;
var
   af:^afactory;

begin
   new(af);
   af^.sum:=num;
   Result:=@af^.afadd; // returns the extension, with access to the union itself
end;

var
   x:func;

begin
   x:=accumulator(1);
   x(5);
   accumulator(3);
   writeln(x(2.3));
end.
