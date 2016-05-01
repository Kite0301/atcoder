use POSIX qw(floor ceil);
$n=<>;
for($i=0;$i<$n;$i++){
  <>=~$";
  $c=$`/$';
  print$c>0?floor($c).$/:ceil($c).$/
}