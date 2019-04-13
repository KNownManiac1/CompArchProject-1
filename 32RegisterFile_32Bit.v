module RegFile_32(ReadData1, ReadData2, Clock, Reset, RegWrite, ReadReg1, ReadReg2, WriteRegNo, WriteData);
  input Clock, Reset, RegWrite;
  input [4:0] ReadReg1, ReadReg2, WriteRegNo;
  input [31:0]  WriteData;
  output  [31:0]  ReadData1, ReadData2;
  wire  [31:0]  Data0, Data1, Data2, Data3, Data4, Data5, Data6, Data7, Data8, Data9, Data10, Data11, Data12, Data13, Data14, Data15, Data16, Data17, Data18, Data19, Data20, Data21, Data22, Data23, Data24, Data25, Data26, Data27, Data28, Data29, Data30, Data31;
  wire  [31:0] Decode;
  wire  [31:0]c;
  genvar  j;
  decoder5_32 dec(Decode, WriteRegNo);
  generate
    for(j = 0; j < 32; j = j + 1) begin:  and_loop
      and g(c[j], 1'b1, Clock);
    end
  endgenerate
  reg_32bit r0(Data0, 32'd0, c[0], Reset);
  reg_32bit r1(Data1, 32'd1, c[1], Reset);
  reg_32bit r2(Data2, 32'd2, c[2], Reset);
  reg_32bit r3(Data3, 32'd3, c[3], Reset);
  reg_32bit r4(Data4, 32'd4, c[4], Reset);
  reg_32bit r5(Data5, 32'd5, c[5], Reset);
  reg_32bit r6(Data6, 32'd6, c[6], Reset);
  reg_32bit r7(Data7, 32'd7, c[7], Reset);
  reg_32bit r8(Data8, 32'd8, c[8], Reset);
  reg_32bit r9(Data9, 32'd9, c[9], Reset);
  reg_32bit r10(Data10, 32'd10, c[10], Reset);
  reg_32bit r11(Data11, 32'd11, c[11], Reset);
  reg_32bit r12(Data12, 32'd12, c[12], Reset);
  reg_32bit r13(Data13, 32'd13, c[13], Reset);
  reg_32bit r14(Data14, 32'd14, c[14], Reset);
  reg_32bit r15(Data15, 32'd15, c[15], Reset);
  reg_32bit r16(Data16, 32'd16, c[16], Reset);
  reg_32bit r17(Data17, 32'd17, c[17], Reset);
  reg_32bit r18(Data18, 32'd18, c[18], Reset);
  reg_32bit r19(Data19, 32'd19, c[19], Reset);
  reg_32bit r20(Data20, 32'd20, c[20], Reset);
  reg_32bit r21(Data21, 32'd21, c[21], Reset);
  reg_32bit r22(Data22, 32'd22, c[22], Reset);
  reg_32bit r23(Data23, 32'd23, c[23], Reset);
  reg_32bit r24(Data24, 32'd24, c[24], Reset);
  reg_32bit r25(Data25, 32'd25, c[25], Reset);
  reg_32bit r26(Data26, 32'd26, c[26], Reset);
  reg_32bit r27(Data27, 32'd27, c[27], Reset);
  reg_32bit r28(Data28, 32'd28, c[28], Reset);
  reg_32bit r29(Data29, 32'd29, c[29], Reset);
  reg_32bit r30(Data30, 32'd30, c[30], Reset);
  reg_32bit r31(Data31, 32'd31, c[31], Reset);
  mux32_1 m0(ReadData1, Data0, Data1, Data2, Data3, Data4, Data5, Data6, Data7, Data8, Data9, Data10, Data11, Data12, Data13, Data14, Data15, Data16, Data17, Data18, Data19, Data20, Data21, Data22, Data23, Data24, Data25, Data26, Data27, Data28, Data29, Data30, Data31, ReadReg1);
  mux32_1 m1(ReadData2, Data0, Data1, Data2, Data3, Data4, Data5, Data6, Data7, Data8, Data9, Data10, Data11, Data12, Data13, Data14, Data15, Data16, Data17, Data18, Data19, Data20, Data21, Data22, Data23, Data24, Data25, Data26, Data27, Data28, Data29, Data30, Data31, ReadReg2);
endmodule
