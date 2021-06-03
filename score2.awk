BEGIN { printf "학번\t이름"			
			for (q=3;q<=5;q++){
			printf "\t과목";
			}
			printf "\t총점\t평균\n"; }
                {if(NR>1)
				{				             
				count++;
				printf "%d\t%s" ,$1,$2;
				for (i=3;i<=NF; i++) {
				score[i] += $i;
				sum += $i;
				printf "\t%d", $i;
				}
                avg = sum/3;
                printf "\t%d\t%.1f\n",sum,avg;
                sum=0;
				avg=0;
				}}
END {if(count>0){
		printf "\t\t";
        for ( j=3;j<=NF;j++){
		score[j] /= count-1;
        printf "%.1f\t",score[j];
        }
		printf "\n";
		}
		}
