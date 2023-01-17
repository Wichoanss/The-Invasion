
switch (state) {
case "idle":
scrElitePatrol();
scrEliteWatch();
break;

  case "chasing":
  scrEliteChase();
  break;
}