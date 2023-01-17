/// @description Insert description here
// You can write your code in this editor

switch (state) {
case "idle":
scrKrolexPatrol();
scrKrolexWatch();
break;

  case "chasing":
  scrKrolexChase();
  break;
}

