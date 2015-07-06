for var i := 99 downto 1 do begin
   if i=1 then begin
      WriteLn('1 bottle of beer on the wall');
      WriteLn('1 bottle of beer');
      WriteLn('Take one down, pass it around');
      WriteLn('No more bottles of beer on the wall');
   end
   else begin
       WriteLn(i,' bottles of beer on the wall');
       WriteLn(i,' bottles of beer');
       WriteLn('Take one down, pass it around');
       WriteLn(pred(i),' bottles of beer on the wall');
       WriteLn('');
   end;
end;
