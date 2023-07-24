#Calculate low,high and average score for assignments

BEGIN{
	FS=","
	OFS="\t"
	OFMT="%.2f"
	CONVFMT="%.2f"
	MIN=-1
	MAX=-1
	COL=1
	SUM=0
	TOTAL=0
	j=0
	print "Name","Low","High","Average"
}
{
	split($3,NAME,",")
	split($4,GRADE,",")

	for(i in NAME){
		if(NAME[int(i)]=="Q06"){
			if(GRADE[int(i)]<MIN||MIN==-1){
				MIN=GRADE[int(i)]
			}
			if(GRADE[int(i)]>MAX||MAX==-1){
				MAX=GRADE[int(i)]
			}
			SUM=SUM+GRADE[int(i)]
			TOTAL++
		}
		if(NAME[int(i)]=="L06"){
                        if(GRADE[int(i)]<MIN||MIN==-1){
                                MIN=GRADE[int(i)]
                        }
                        if(GRADE[int(i)]>MAX||MAX==-1){
                                MAX=GRADE[int(i)]
                        }
                        SUM=SUM+GRADE[int(i)]
                        TOTAL++
                }
		if(NAME[int(i)]=="WS"){
                        if(GRADE[int(i)]<MIN||MIN==-1){
                                MIN=GRADE[int(i)]
                        }
                        if(GRADE[int(i)]>MAX||MAX==-1){
                                MAX=GRADE[int(i)]
                        }
                        SUM=SUM+GRADE[int(i)]
                        TOTAL++
                }
		if(NAME[int(i)]=="Q07"){
                        if(GRADE[int(i)]<MIN||MIN==-1){
                                MIN=GRADE[int(i)]
                        }
                        if(GRADE[int(i)]>MAX||MAX==-1){
                                MAX=GRADE[int(i)]
                        }
                        SUM=SUM+GRADE[int(i)]
                        TOTAL++
                }
		if(NAME[int(i)]=="L06"){
                        if(GRADE[int(i)]<MIN||MIN==-1){
                                MIN=GRADE[int(i)]
                        }
                        if(GRADE[int(i)]>MAX||MAX==-1){
                                MAX=GRADE[int(i)]
                        }
                        SUM=SUM+GRADE[int(i)]
                        TOTAL++
                }
		if(NAME[int(i)]=="L07"){
                        if(GRADE[int(i)]<MIN||MIN==-1){
                                MIN=GRADE[int(i)]
                        }
                        if(GRADE[int(i)]>MAX||MAX==-1){
                                MAX=GRADE[int(i)]
                        }
                        SUM=SUM+GRADE[int(i)]
                        TOTAL++
                }


	}
		COL++
}
	#print "FINAL",MIN,MAX,SUM/TOTAL

END{
#	print "FINAL",MIN,MAX,SUM/TOTAL
}
