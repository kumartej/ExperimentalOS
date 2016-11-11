integer main(){
	integer i,j;
	i=0;
	print(i);
	j = Fork();
	i=i+1;
	print(i);
	j = Fork();
	i=i+1;
	print(i);
	j = Fork();
	i=i+1;
	print(i);
	j=Exec("exec1.xsm");
	return 0;
}