/// @description Insert description here
// You can write your code in this editor

switch (state) {
case "idle":
scrFortonPatrol();
scrFortonWatch();
break;

  case "chasing":
  scrFortonChase();
  break;
}