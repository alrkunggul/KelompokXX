module mean(
    input wire X_0, X_1, X_2, X_3, X_4, X_5, X_6, X_7, X_8, // Input from individual pixels, either 0 or 1
    input wire signed [19:0] Wm_0, Wm_1, Wm_2, Wm_3, Wm_4, Wm_5, Wm_6, Wm_7, Wm_8, // Mean weights for each corresponding input, defined in top_level module
    input wire signed [19:0] B_mean, // Bias for mean module, defined in top_level module

    output wire signed [19:0] C_out // Output from mean module
);

    assign C_out = ((X_0) ? Wm_0 : 0) + // Simple conditional check whether each pixel is 1 or 0
                   ((X_1) ? Wm_1 : 0) +
                   ((X_2) ? Wm_2 : 0) +
                   ((X_3) ? Wm_3 : 0) +
                   ((X_4) ? Wm_4 : 0) +
                   ((X_5) ? Wm_5 : 0) +
                   ((X_6) ? Wm_6 : 0) +
                   ((X_7) ? Wm_7 : 0) +
                   ((X_8) ? Wm_8 : 0) + B_mean;

endmodule
