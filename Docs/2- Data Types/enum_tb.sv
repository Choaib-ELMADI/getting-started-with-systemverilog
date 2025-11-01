module enum_tb;
    enum { GREEN, YELLOW, RED } traffic_light;
    // int type: GREEN  = 0
    // int type: YELLOW = 1
    // int type: RED    = 2

    enum logic [1:0] { ZERO, ONE, TWO } numbers;
    // logic type: ZERO = 00
    // logic type: ONE  = 01
    // logic type: TWO  = 10

    enum { UN = 1, DEUX, QUATRE = 4, CINQ, SIX, DIX = 10, ONZE } fr_numbers;
    // UN     =  1
    // DEUX   =  2
    // QUATRE =  4
    // CINQ   =  5
    // SIX    =  6
    // DIX    = 10
    // ONZE   = 11

    typedef enum { GREEN_t, YELLOW_t, RED_t } color_t;
    color_t my_color;

endmodule
