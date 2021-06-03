#!/usr/bin/perl
print "학번 이름";
for ($q=3;$q<=5;$q++){
	 printf "과목";
}     
printf " 총점 평균\n";
open(FILE,"score");
@lines = <FILE>;
close(FILE);
foreach $n (1..10)
{
@arr = split(/ /,@lines[$n]);
$num =0;
$sum =0;
$num = scalar(@arr);
for ($x=2;$x<=$num;$x++) {
	$sum += @arr[$x];
	@sumsub[$x] += @arr[$x];
}
@lines[$n] =~ s/\n/ /g;
$avg = $sum/($num-2);
print "@lines[$n] $sum $avg\n";
}
print "\t";
for($q =2;$q <$num;$q++){
@sumsub[$q] /= 10;
print "  @sumsub[$q]";

}
print "\n";
