#include<stdio.h>
#include<graphics.h>
void midPointCircleDraw(int x_centre, int y_centre, int r)
{
	int x = r, y = 0;


	putpixel(x + x_centre, y + y_centre,BLUE);


	if (r > 0)
	{
		putpixel (x + x_centre, -y + y_centre,BLUE);
		putpixel (y + x_centre, x + y_centre,BLUE);
		putpixel  (-y + x_centre, x + y_centre,BLUE);
	}

	int P = 1 - r;
	while (x > y)
	{
		y++;

		if (P <= 0)
			P = P + 2*y + 1;

		else
		{
			x--;
			P = P + 2*y - 2*x + 1;
		}

		if (x < y)
			break;

		 putpixel (x + x_centre, y + y_centre,BLUE);
		 putpixel (-x + x_centre, y + y_centre,BLUE);
		 putpixel (x + x_centre, -y + y_centre,BLUE);
		 putpixel (-x + x_centre, -y + y_centre,BLUE);

		if (x != y)
		{
			putpixel (y + x_centre, x + y_centre,BLUE);
			putpixel (-y + x_centre, x + y_centre,BLUE);
			putpixel ( y + x_centre, -x + y_centre,BLUE);
			putpixel (-y + x_centre, -x + y_centre,BLUE);
		}
	}
}

int main()
{
	int gd=DETECT, gm=DETECT;
	initgraph(&gd,&gm,"");
	midPointCircleDraw(40, 40, 20);
	getch();
	return 0;
}
