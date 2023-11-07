if (health <= 0){instance_create_layer(0,0,"Instances", oGameOver);}
if (health > 10){ health = 10; }

for(var i = 0; i < health/2; i++)
{
	draw_sprite(sHealth, 0,x - 80 + 32 * i,y - 70);
}
