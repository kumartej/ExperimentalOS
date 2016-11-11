integer main(){
	integer c,d,i,x,j;
	i=Fork();
	c=0;
	if(i==-2) then
		c=Wait(0);
	else
		c=Wait(1);
	endif;
	return 0;
}