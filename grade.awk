

BEGIN{
	FS=","
	OFS="/t"
	OFMT="%.2f"
	CONVFMT="%.2f"
	LETTER[0]
	NAME[0]
	PERCENT[0]
	ANPOINT=0
	ANMAX=0
	CPOINT=0
	CMAX=0
	SHPOINT=0
	SHMAX=0
	APOINT=0
	AMAX=0
	SPOINT=0
	SMAX=0
	print "Name","Percent","Letter"
}
{
	NAME[0]="Andrew"
	NAME[1]="Chelsey"
	NAME[2]="Shane"
	NAME[3]="Ava"
	NAME[4]="Sam"
	split($1,STUDENT,",")
	split($4,EARNED,",")
	split($5,POSSIBLE,",")
	for(i in STUDENT){
		if(STUDENT[i]==NAME[0]){
			ANPOINT=ANPOINT+EARNED[i]
			ANMAX=ANMAX+POSSIBLE[i]
		}
		else if(STUDENT[i]==NAME[1]){
                        CPOINT=CPOINT+EARNED[int(i)]
                        CMAX=CMAX+POSSIBLE[int(i)]
                }
		else if(STUDENT[i]==NAME[2]){
                        SHPOINT=SHPOINT+EARNED[i]
                        SHMAX=SHMAX+POSSIBLE[i]
                }
		else if(STUDENT[i]==NAME[3]){
                        APOINT=APOINT+EARNED[i]
                        AMAX=AMAX+POSSIBLE[i]
                }
		else if(STUDENT[i]==NAME[4]){
                        SPOINT=SPOINT+EARNED[i]
                        SMAX=SMAX+POSSIBLE[i]
                }
	}

	PERCENT[0]=ANPOINT/ANMAX
	PERCENT[1]=CPOINT/CMAX
	PERCENT[2]=SHPOINT/SHMAX
	PERCENT[3]=APOINT/AMAX
	PERCENT[4]=SPOINT/SMAX

	j=0
	for(i in PERCENT){
		if(i>=90){
			LETTER[j]="A"
			j++
		}
		if(i>=80 && i<90){
                        LETTER[j]="B"
                        j++
                }
		if(i>=70&&i<80){
                        LETTER[j]="C"
                        j++
                }
		if(i>=60&&i<70){
                        LETTER[j]="D"
                        j++
                }
		else{
			LETTER[j]="E"
		}
	}
}

END{
	for(i=0;i<5;i++){
		print NAME[i],PERCENT[i],LETTER[i]
	}
}
