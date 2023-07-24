#!/usr/bin/perl

my @name;
my @grade;
my @total;
my @studnet;
my @possible;
my @percent;
my @letter;
my $count=0;
while(<>){
	chomp;
	split(/,/,$_);
	push (@name,@_[0]);
	push (@grade, @_[3]);
	push (@total, @_[4]);
	$count++;

	for($i=1;$i<scalar @name;$i++){
		if(@name[$i] eq @student[$j]){
			$sum+=@grade[$i];
			@possible[$j]+=@total[$i];
		}
	}
}
for($i=1;$i<scalar @student; $i++){
	@percent[$i]=$sum/@possible[$i];
	if(@percent[$i]<=90){
		@letter[$i]="A";
	}
	elsif(@percent[$i]<90 and @percent[$i]>=80){
		@letter[$i]="B";
	}
	elsif(@percent[$i]<80 and @percent[$i]>=70){
                @letter[$i]="C";
        }
	elsif(@percent[$i]<70 and @percent[$i]>=60){
                @letter[$i]="D";
        }
	elsif(@percent[$i]<60){
                @letter[$i]="E";
        }
}
print "Name\tPercent\tLetter\n";
for($i=1;$i<scalar @student; $i++){
	print "@studnet[$i]\t@percent[$i]\t@letter[$i]\n";
}
