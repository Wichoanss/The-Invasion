/// @description Insert description here
// You can write your code in this editor

switch (state) {
case "idle":
scrVolbexPatrol();
scrVolbexWatch();
break;

  case "chasing":
  scrVolbexChase();
  break;
}

if (hp<=0){
	on=false;
	}