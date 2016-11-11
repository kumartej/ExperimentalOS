integer main() {
integer a;
integer fd;
integer i;
string out;
a=Fork();
if(a==-2)then
	a=Fork();
	if(a==-2)then
		a=Create("4.dat");	
		fd=Open("4.dat");
		i=3;
		while(i<100)do
			a=Write(fd,i);
			i=i+4;
		endwhile;
		print("4 over");
	else	
		a=Wait(a);
		a=Create("3.dat");	
		fd=Open("3.dat");
		i=2;
		while(i<100)do
			a=Write(fd,i);
			i=i+4;
		endwhile;
	print("3 over");
	endif;
else   
	a=Wait(a);
	a=Fork();
	if(a==-2)then
		a=Create("2.dat");	
		fd=Open("2.dat");
		i=1;
		while(i<100)do
			a=Write(fd,i);
			i=i+4;
		endwhile;
		print("2over");
	else
		a=Wait(a);
		a=Create("1.dat");	
		fd=Open("1.dat");
		i=0;
		while(i<100)do
			a=Write(fd,i);
			i=i+4;
		endwhile;
		print("1 over");
		a=Exec("test1.xsm");
	endif;

endif;
breakpoint;
return 0;}

