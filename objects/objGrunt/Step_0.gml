switch (state) {
case "idle":
scrEnemyPatrol();
scrEnemyWatch();
break;

  case "chasing":
  scrEnemyChase();
  break;
}