uses
   display,     // for keyboard routines
   expressions; // for calculator routine

procedure help;
begin
   write(
      "Welcome to 24"+LineEnding+LineEnding,
      "Combine the 4 given digits to make 24 using only + - * / and ( )."+LineEnding,
      "All operations have equal precedence and are evaluated left to right."+LineEnding,
      "Combining (concatenating) digits is not allowed."+LineEnding,
      "Type 'h'elp, 'q'uit, or an expression followed by <RETURN>."+LineEnding);
end;

var
   buf:String;
   ch:char;

begin
   help();
   while true do begin
      write("Enter your four digits: ");
      buf:='';
      ch:=#0;
      while ch<>#13 do begin
         if not keypressed then yield(1)
         else begin
            ch:=readkey;
            if (ch=#27) then exit;
            if pos(ch,'0123456789+-*/()')>0 then begin
               buf+=ch;
               write(ch);
            end
            else if pos(ch,'Qq') then exit
            else if pos(ch,'Hh') then help
            else if (ch=#8) and (length(buf)>1) then begin
               write(#8#32#8);
               buf:=copy(buf,1,length(buf)-1);
            end;
         end;
      end;
      If Calculator(buf)<>24 then Writeln(#7,' Wrong! Result=',Calculator(buf))
      else Writeln(" Great! Let's try again!");
   end;
end.
