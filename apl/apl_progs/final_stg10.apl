decl
	integer i;
enddecl

integer main(){
	integer a,b,f,d;
	integer f1,f2,f3;
	string s;
	a = Create("a.dat");
	a = Create("b.dat");
	a = Create("c.dat");
	a = Create("d.dat");

	a = Fork();
	b = Fork();
	if(a!=-2) then
		if(b!=-2) then
			d = Wait(b);
			i = 1;
			f = Open("a.dat");
		else
			i=2;
			f = Open("b.dat");
		endif;
	else
		if(b!=-2) then
			d = Wait(b);
			i = 3;
			f = Open("c.dat");
		else
			i = 4;
			f = Open("d.dat");
		endif;
	endif;
	while(i<100) do
		d = Write(f,i);
		i=i+4;
	endwhile;
	d = Close(f);
	// print("AFTER4FORK");
	if(a!=-2 && b!=-2) then
		print("AFTER4FORK");
		a = Fork();
		if(a!=-2) then
			d = Wait(a);
			f1 = Open("a.dat");
			f2 = Open("c.dat");
			f3 = Create("m1.dat");
			f3 = Open("m1.dat");
		else
			f1 = Open("b.dat");
			f2 = Open("d.dat");
			f3 = Create("m2.dat");
			f3 = Open("m2.dat");
		endif;
		i = 0;
		while(i<24) do
			d = Read(f1,s);
			d = Write(f3,s);
			d = Read(f2,s);
			d = Write(f3,s);
			i = i+1;
		endwhile;
		d = Close(f1);
		d = Close(f2);
		d = Close(f3);
		if(a!=-2) then
			print("AFTER2MERGE");
			f1 = Open("m1.dat");
			f2 = Open("m2.dat");
			f3 = Create("m3.dat");
			f3 = Open("m3.dat");
			i = 0;
			while(i<48) do
				d = Read(f1,s);
				d = Write(f3,s);
				d = Read(f2,s);
				d = Write(f3,s);
				i = i+1;
			endwhile;
		endif;
	endif;
	return 0;
}