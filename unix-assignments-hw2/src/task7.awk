#!/usr/bin/awk -f

FS=";" 
	#{print length($1)}
	#{print $1 "\t" $2}
	#{m=m+1}
	#{ delete line[m];}
	
	{if (length($1) % 2 == 0) 
		{ 
		k=0; 
		for(i=0; i<length($2)/2; i++) 
			if(substr($2, length($2)-i, 1) != substr($2, i+1, 1)) 
			k=k+1 
    		if ((k>1) || (length($2)==0))
			print $1 "~" "NO"
		else 
			print $1 "~" "YES"
		}  
	}
