#!/usr/bin/perl
#
my %MAX;
my %MIN;
my %AVE;
my @sheet;
my @unique;
my %seen;
my @assignment;
while(<>){
	chomp;
	@sheet = split(/,/,$_);
	foreach $elem (@sheet[2]){
		next if $seen{$elem}++;
		push @assignment, $elem;
	}
	foreach $elem (@assignment){
		if(@assignment[$elem] eq $seen{$j}){
			$MAX{"$seen{$j}"}="@grades[$elem]"if @grades[$elem] > $MAX{$j};
			$MIN{"$seen{$j}"}="@grades[$elem]"if @grades[$elem] < $MIN{$j};
			$sum+=@grades[$elem];
			$total++;
		}	
	}
}
print"Name"."\t"."Low"."\t"."High"."\t"."Average"."\n";
for ($i=1;$i<scalar @seen;$i++){
	print "$seen{$i}"."\t"."$MIN{"$seen{$i}"}"."\t"."$MAX{"$seen{$j}"}"."\t"."$AVE{"$seen{$i}"}"."\n";
}

