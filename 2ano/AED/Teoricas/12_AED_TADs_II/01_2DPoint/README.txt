
Two different internal representations for the Point2D abstract type.

BUT, just one Point2D.h header file and one testing_Point2D.c file.

Compile with

gcc -Wall -Wextra testing_Point2D.c Point2D_XY.c -lm -o testing_Point2D_XY -lm

gcc -Wall -Wextra testing_Point2D.c Point2D_Polar.c -lm -o testing_Point2D_Polar -lm