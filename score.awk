BEGIN 	{ printf "학번\t이름\t국어\t영어\t수학\t총점\t평균\n" }
		{if(NR>1)
		{ count++;
		kor += $3; eng += $4; math+= $5;
		sum = ($3+ $4+ $5);
		avg = sum/3;
		printf "%d\t%s\t%d\t%d\t%d\t%d\t%.1f\n", $1,$2,$3,$4,$5,sum,avg;
		}}
END {if(count>0){
	kor/=count; 
	eng/=count; 
	math/=count;
	printf "\t\t%.1f\t%.1f\t%.1f\n",kor,eng,math;	
	}}
