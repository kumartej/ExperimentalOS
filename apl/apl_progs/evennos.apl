decl
	integer a;
enddecl

integer main(){
	integer i;
	a = Fork();
	print(a);
	if(a==-2) then
		a = Exec("wait.xsm");
	endif;
	a=Getpid();
	print(a);
	i=0;
	a=Wait(1);
	print(a);
	while(i<20) do
		if(i%2==0) then
			print(i);
		endif;
		i=i+1;
	endwhile;
	return 0;
}