`timescale 1 ns/100 ps
// Version: 8.5 8.5.0.34


module versatile_fifo_dptam_dw(
       d_a,
       q_a,
       adr_a,
       we_a,
       clk_a,
       q_b,
       adr_b,
       d_b,
       we_b,
       clk_b
    );
/* synthesis syn_black_box

pragma attribute versatile_fifo_dptam_dw ment_tsu0 adr_a[0]->clk_a+0.280
pragma attribute versatile_fifo_dptam_dw ment_tsu1 adr_a[10]->clk_a+0.280
pragma attribute versatile_fifo_dptam_dw ment_tsu2 adr_a[1]->clk_a+0.280
pragma attribute versatile_fifo_dptam_dw ment_tsu3 adr_a[2]->clk_a+0.280
pragma attribute versatile_fifo_dptam_dw ment_tsu4 adr_a[3]->clk_a+0.280
pragma attribute versatile_fifo_dptam_dw ment_tsu5 adr_a[4]->clk_a+0.280
pragma attribute versatile_fifo_dptam_dw ment_tsu6 adr_a[5]->clk_a+0.280
pragma attribute versatile_fifo_dptam_dw ment_tsu7 adr_a[6]->clk_a+0.280
pragma attribute versatile_fifo_dptam_dw ment_tsu8 adr_a[7]->clk_a+0.280
pragma attribute versatile_fifo_dptam_dw ment_tsu9 adr_a[8]->clk_a+0.280
pragma attribute versatile_fifo_dptam_dw ment_tsu10 adr_a[9]->clk_a+0.280
pragma attribute versatile_fifo_dptam_dw ment_tsu11 adr_b[0]->clk_b+0.282
pragma attribute versatile_fifo_dptam_dw ment_tsu12 adr_b[10]->clk_b+0.282
pragma attribute versatile_fifo_dptam_dw ment_tsu13 adr_b[1]->clk_b+0.282
pragma attribute versatile_fifo_dptam_dw ment_tsu14 adr_b[2]->clk_b+0.282
pragma attribute versatile_fifo_dptam_dw ment_tsu15 adr_b[3]->clk_b+0.282
pragma attribute versatile_fifo_dptam_dw ment_tsu16 adr_b[4]->clk_b+0.282
pragma attribute versatile_fifo_dptam_dw ment_tsu17 adr_b[5]->clk_b+0.282
pragma attribute versatile_fifo_dptam_dw ment_tsu18 adr_b[6]->clk_b+0.282
pragma attribute versatile_fifo_dptam_dw ment_tsu19 adr_b[7]->clk_b+0.282
pragma attribute versatile_fifo_dptam_dw ment_tsu20 adr_b[8]->clk_b+0.282
pragma attribute versatile_fifo_dptam_dw ment_tsu21 adr_b[9]->clk_b+0.282
pragma attribute versatile_fifo_dptam_dw ment_tsu22 d_a[0]->clk_a+0.193
pragma attribute versatile_fifo_dptam_dw ment_tsu23 d_a[1]->clk_a+0.193
pragma attribute versatile_fifo_dptam_dw ment_tsu24 d_a[2]->clk_a+0.193
pragma attribute versatile_fifo_dptam_dw ment_tsu25 d_a[3]->clk_a+0.193
pragma attribute versatile_fifo_dptam_dw ment_tsu26 d_a[4]->clk_a+0.193
pragma attribute versatile_fifo_dptam_dw ment_tsu27 d_a[5]->clk_a+0.193
pragma attribute versatile_fifo_dptam_dw ment_tsu28 d_a[6]->clk_a+0.193
pragma attribute versatile_fifo_dptam_dw ment_tsu29 d_a[7]->clk_a+0.193
pragma attribute versatile_fifo_dptam_dw ment_tsu30 d_b[0]->clk_b+0.176
pragma attribute versatile_fifo_dptam_dw ment_tsu31 d_b[1]->clk_b+0.176
pragma attribute versatile_fifo_dptam_dw ment_tsu32 d_b[2]->clk_b+0.176
pragma attribute versatile_fifo_dptam_dw ment_tsu33 d_b[3]->clk_b+0.176
pragma attribute versatile_fifo_dptam_dw ment_tsu34 d_b[4]->clk_b+0.176
pragma attribute versatile_fifo_dptam_dw ment_tsu35 d_b[5]->clk_b+0.176
pragma attribute versatile_fifo_dptam_dw ment_tsu36 d_b[6]->clk_b+0.176
pragma attribute versatile_fifo_dptam_dw ment_tsu37 d_b[7]->clk_b+0.176
pragma attribute versatile_fifo_dptam_dw ment_tsu38 we_a->clk_a+2.731
pragma attribute versatile_fifo_dptam_dw ment_tsu39 we_b->clk_b+3.346
pragma attribute versatile_fifo_dptam_dwment_tco0 clk_a->q_a[0]+3.154
pragma attribute versatile_fifo_dptam_dwment_tco1 clk_a->q_a[1]+3.154
pragma attribute versatile_fifo_dptam_dwment_tco2 clk_a->q_a[2]+3.154
pragma attribute versatile_fifo_dptam_dwment_tco3 clk_a->q_a[3]+3.154
pragma attribute versatile_fifo_dptam_dwment_tco4 clk_a->q_a[4]+3.154
pragma attribute versatile_fifo_dptam_dwment_tco5 clk_a->q_a[5]+3.154
pragma attribute versatile_fifo_dptam_dwment_tco6 clk_a->q_a[6]+3.154
pragma attribute versatile_fifo_dptam_dwment_tco7 clk_a->q_a[7]+3.154
pragma attribute versatile_fifo_dptam_dwment_tco8 clk_b->q_b[0]+3.139
pragma attribute versatile_fifo_dptam_dwment_tco9 clk_b->q_b[1]+3.139
pragma attribute versatile_fifo_dptam_dwment_tco10 clk_b->q_b[2]+3.139
pragma attribute versatile_fifo_dptam_dwment_tco11 clk_b->q_b[3]+3.139
pragma attribute versatile_fifo_dptam_dwment_tco12 clk_b->q_b[4]+3.139
pragma attribute versatile_fifo_dptam_dwment_tco13 clk_b->q_b[5]+3.139
pragma attribute versatile_fifo_dptam_dwment_tco14 clk_b->q_b[6]+3.139
pragma attribute versatile_fifo_dptam_dwment_tco15 clk_b->q_b[7]+3.139
*/
/* synthesis black_box_pad_pin ="" */
input  [7:0] d_a;
output [7:0] q_a;
input  [10:0] adr_a;
input  we_a;
input  clk_a;
output [7:0] q_b;
input  [10:0] adr_b;
input  [7:0] d_b;
input  we_b;
input  clk_b;

endmodule
