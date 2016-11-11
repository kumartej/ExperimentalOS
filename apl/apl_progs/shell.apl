decl
	integer a;
	string re;
enddecl

integer main(){

	integer i;
	print("XOS-$");
	read(re);
	while(re != "exit") do
		a=Fork();
		if(a==-1) then
			print("cannot fork");
			break;
		endif;
		if(a==-2) then
			i=Exec(re);
			if(i==-1) then
				print("Cannot Exec");
				break;
			endif;
		else
			i=Wait(a);
			if(i==-1) then
				print("Wait Problem");
				break;
			endif;
		endif;
		print("XOS-$");
		read(re);
	endwhile;
	return 0;
}