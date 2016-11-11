integer main()
{
	integer pid,ppid;
	print ("Before Fork");
	pid = Fork();
	print(pid);
	pid=Fork();
	print(pid);
	print ("After Fork");
	return 0;
}