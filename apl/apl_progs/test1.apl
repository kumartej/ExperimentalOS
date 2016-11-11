integer main() {
integer a;
integer fd1;
integer fd2;
integer fd3;
string out;
integer i;

a=Fork();
if(a==-2)then
	a=Create("5.dat");
	fd3=Open("5.dat");
	fd1=Open("3.dat");
	fd2=Open("4.dat");
	i=0;
	while(i<25)do
		a=Read(fd1,out);
		a=Write(fd3,out);
		a=Read(fd2,out);
		a=Write(fd3,out);
		i=i+1;
	endwhile;
else
	a=Wait(a);
	a=Create("6.dat");
	fd3=Open("6.dat");
	fd1=Open("1.dat");
	fd2=Open("2.dat");
	i=0;
	while(i<25)do
		a=Read(fd1,out);
		a=Write(fd3,out);
		a=Read(fd2,out);
		a=Write(fd3,out);
		i=i+1;
	endwhile;
	a=Create("7.dat");
	fd3=Open("7.dat");
	fd1=Open("6.dat");
	fd2=Open("5.dat");
	i=0;
	while(i<25)do
		a=Read(fd1,out);
		a=Write(fd3,out);
		a=Read(fd1,out);
		a=Write(fd3,out);
		a=Read(fd2,out);
		a=Write(fd3,out);
		a=Read(fd2,out);
		a=Write(fd3,out);
		i=i+1;
	endwhile;
endif;
return 0;}

