decl
	integer ar[50],n;
enddecl
integer main(){
	read(n);
	integer i,j;
	i=0;
	while(i<50) do
		ar[i]=0;
		i=i+1;
	endwhile;
	i=2;
	while(i<=n) do
		if(ar[i]==0) then
			print(i);
			j=2;
			while(i*j<=n) do
				ar[i*j]=1;
				j=j+1;
			endwhile;
		endif;
		i=i+1;
	endwhile;
	return 0;
}