#include<graphics.h>
#include<stdio.h>
#include<math.h>
//


void makelineDDA( int x0, int y0, int x1, int y1 ){
    int dx = x1 - x0;
    int dy = y1 - y0;
    int steps = abs(dx)>abs(dy)?abs(dx):abs(dy);

    float Xinc = dx/(float)steps;
    float Yinc = dy/(float)steps;

    float X = x0;
    float Y = y0;

    for( int i=0; i<=steps; i++ ){
        putpixel(X,Y,RED);
        X += Xinc;
        Y += Yinc;
        delay(20);
    }


}

void makelineBresenham( int x0, int y0, int x1, int y1 ){
    int m_new = 2*(y1 - y0);
    int slope_err = m_new - (x1 - x0);

    for( int x=x0, y=y0; x <= x1; x++ ){
        putpixel(x,y,BLUE);
        delay(20);
        slope_err += m_new;

        if( slope_err >= 0 ){
            y++;
            slope_err -= 2*(x1 - x0);
        }
    }
}

int main(){
    printf("Give the 3 coordinates of triangle :\n");
    int x[3],y[3],num;

    for( int i=0; i<3; i++ ){
        printf("Give x coordinate of point %d\n", i+1);
        scanf("%d\n",&x[i]);
        printf("Give y coordinate of point %d\n", i+1);
        scanf("%d\n",&y[i]);
    }

//    printf("Which method would you like to use:\n 1.DDA\n 2.Bresenham\n ");
//    scanf("%d\n",&num);

    int gd = DETECT, gm;
    initgraph(&gd, &gm, "");
//    switch(num){
//        case 1:
            makelineDDA(x[0],y[0],x[1],y[1]);
            makelineDDA(x[0],y[0],x[2],y[2]);
            makelineDDA(x[1],y[1],x[2],y[2]);
//            break;

//        case 2:
            makelineBresenham(100,100,150,150);
            makelineBresenham(100,100,200,150);
            makelineBresenham(150,150,200,150);
//            break;

//        default:
//            printf("Wrong input selected");
//    }



    return 0;
}

