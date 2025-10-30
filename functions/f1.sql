create or replace function f1(a number,pi_sa out number)
	return varchar2
	is
	begin
	if mod(a,2)=0 then
		return ‘even’;
	else
		return ‘odd’;
	end if;
	end;
        /