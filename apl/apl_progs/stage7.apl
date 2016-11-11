decl
	integer status;
	integer st2;
	integer wrt;
	integer sek;
	integer i;
	string a;
	integer file1;
	integer file2;
enddecl
integer main()
{
	status = Create("file2.dat");
	status = Open("file2.dat");
	print(status);
	st2=Open("file2.dat");
	print(st2);
	i=0;
	while(i<=513) do
		wrt=Write(status,i);
		i=i+1;
	endwhile;
	status = Close(status);
	while(i<=1024) do
		wrt=Write(st2,i);
		i=i+1;
	endwhile;
	status=Open("file2.dat");
	print(status);
	while(i<131077) do
		if(i%2==1) then
			wrt=Write(status,i);
		else
			wrt=Write(st2,i);
		endif;
		i=i+1;
	endwhile;
	status=Close(status);
	st2=Close(st2);
	return 0;

}