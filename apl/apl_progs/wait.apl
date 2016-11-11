decl
	integer a;
enddecl

integer main(){
	integer i;
	i=0;
	a=Getpid();
	print(a);
	while(i<20) do
		if(i%2==1) then
			print(i);
		endif;
		i=i+1;
	endwhile;
	return 0;
}