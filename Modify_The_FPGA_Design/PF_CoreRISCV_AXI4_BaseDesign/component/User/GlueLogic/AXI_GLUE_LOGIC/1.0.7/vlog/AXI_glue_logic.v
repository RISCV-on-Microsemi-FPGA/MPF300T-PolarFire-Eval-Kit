`timescale 1ns / 100ps

module AXI_GLUE_LOGIC(
    input          CLK,
    input          RESET,
     
     // RISC-V Cached IO
    output         AXI_MIRROR_MST_MEM_AWREADY,
    input          AXI_MIRROR_MST_MEM_AWVALID,
    input [31:0]   AXI_MIRROR_MST_MEM_AWADDR,
    input [7:0]    AXI_MIRROR_MST_MEM_AWLEN,
    input [2:0]    AXI_MIRROR_MST_MEM_AWSIZE,
    input [1:0]    AXI_MIRROR_MST_MEM_AWBURST,
    input          AXI_MIRROR_MST_MEM_AWLOCK,
    input [3:0]    AXI_MIRROR_MST_MEM_AWCACHE,
    input [2:0]    AXI_MIRROR_MST_MEM_AWPROT,
    input [3:0]    AXI_MIRROR_MST_MEM_AWQOS,
    input [3:0]    AXI_MIRROR_MST_MEM_AWREGION,
    input [4:0]    AXI_MIRROR_MST_MEM_AWID,
    input          AXI_MIRROR_MST_MEM_AWUSER,
    output         AXI_MIRROR_MST_MEM_WREADY,
    input          AXI_MIRROR_MST_MEM_WVALID,
    input [63:0]   AXI_MIRROR_MST_MEM_WDATA,
    input          AXI_MIRROR_MST_MEM_WLAST,
    input [4:0]    AXI_MIRROR_MST_MEM_WID, 
    input [7:0]    AXI_MIRROR_MST_MEM_WSTRB,
    input          AXI_MIRROR_MST_MEM_WUSER,
    input          AXI_MIRROR_MST_MEM_BREADY,
    output         AXI_MIRROR_MST_MEM_BVALID,
    output [1:0]   AXI_MIRROR_MST_MEM_BRESP,
    output [4:0]   AXI_MIRROR_MST_MEM_BID,
    output         AXI_MIRROR_MST_MEM_BUSER,
    output         AXI_MIRROR_MST_MEM_ARREADY,
    input          AXI_MIRROR_MST_MEM_ARVALID,
    input [31:0]   AXI_MIRROR_MST_MEM_ARADDR,
    input [7:0]    AXI_MIRROR_MST_MEM_ARLEN,
    input [2:0]    AXI_MIRROR_MST_MEM_ARSIZE,
    input [1:0]    AXI_MIRROR_MST_MEM_ARBURST,
    input          AXI_MIRROR_MST_MEM_ARLOCK,
    input [3:0]    AXI_MIRROR_MST_MEM_ARCACHE,
    input [2:0]    AXI_MIRROR_MST_MEM_ARPROT,
    input [3:0]    AXI_MIRROR_MST_MEM_ARQOS,
    input [3:0]    AXI_MIRROR_MST_MEM_ARREGION,
    input [4:0]    AXI_MIRROR_MST_MEM_ARID,
    input          AXI_MIRROR_MST_MEM_ARUSER,
    input          AXI_MIRROR_MST_MEM_RREADY,
    output         AXI_MIRROR_MST_MEM_RVALID,
    output [1:0]   AXI_MIRROR_MST_MEM_RRESP,
    output [63:0]  AXI_MIRROR_MST_MEM_RDATA,
    output         AXI_MIRROR_MST_MEM_RLAST,
    output [4:0]   AXI_MIRROR_MST_MEM_RID,
    output         AXI_MIRROR_MST_MEM_RUSER,
     
     // RISC-V MMIO IO
    output         AXI_MIRROR_MST_MMIO_AWREADY,
    input          AXI_MIRROR_MST_MMIO_AWVALID,
    input [31:0]   AXI_MIRROR_MST_MMIO_AWADDR,
    input [7:0]    AXI_MIRROR_MST_MMIO_AWLEN,
    input [2:0]    AXI_MIRROR_MST_MMIO_AWSIZE,
    input [1:0]    AXI_MIRROR_MST_MMIO_AWBURST,
    input          AXI_MIRROR_MST_MMIO_AWLOCK,
    input [3:0]    AXI_MIRROR_MST_MMIO_AWCACHE,
    input [2:0]    AXI_MIRROR_MST_MMIO_AWPROT,
    input [3:0]    AXI_MIRROR_MST_MMIO_AWQOS,
    input [3:0]    AXI_MIRROR_MST_MMIO_AWREGION,
    input [4:0]    AXI_MIRROR_MST_MMIO_AWID,
    input          AXI_MIRROR_MST_MMIO_AWUSER,
    output         AXI_MIRROR_MST_MMIO_WREADY,
    input          AXI_MIRROR_MST_MMIO_WVALID,
    input [63:0]   AXI_MIRROR_MST_MMIO_WDATA,
    input          AXI_MIRROR_MST_MMIO_WLAST,
    input [4:0]    AXI_MIRROR_MST_MMIO_WID,
    input [7:0]    AXI_MIRROR_MST_MMIO_WSTRB,
    input          AXI_MIRROR_MST_MMIO_WUSER,
    input          AXI_MIRROR_MST_MMIO_BREADY,
    output         AXI_MIRROR_MST_MMIO_BVALID,
    output [1:0]   AXI_MIRROR_MST_MMIO_BRESP,
    output [4:0]   AXI_MIRROR_MST_MMIO_BID,
    output         AXI_MIRROR_MST_MMIO_BUSER,
    output         AXI_MIRROR_MST_MMIO_ARREADY,
    input          AXI_MIRROR_MST_MMIO_ARVALID,
    input [31:0]   AXI_MIRROR_MST_MMIO_ARADDR,
    input [7:0]    AXI_MIRROR_MST_MMIO_ARLEN,
    input [2:0]    AXI_MIRROR_MST_MMIO_ARSIZE,
    input [1:0]    AXI_MIRROR_MST_MMIO_ARBURST,
    input          AXI_MIRROR_MST_MMIO_ARLOCK,
    input [3:0]    AXI_MIRROR_MST_MMIO_ARCACHE,
    input [2:0]    AXI_MIRROR_MST_MMIO_ARPROT,
    input [3:0]    AXI_MIRROR_MST_MMIO_ARQOS,
    input [3:0]    AXI_MIRROR_MST_MMIO_ARREGION,
    input [4:0]    AXI_MIRROR_MST_MMIO_ARID,
    input          AXI_MIRROR_MST_MMIO_ARUSER,
    input          AXI_MIRROR_MST_MMIO_RREADY,
    output         AXI_MIRROR_MST_MMIO_RVALID,
    output [1:0]   AXI_MIRROR_MST_MMIO_RRESP,
    output [63:0]  AXI_MIRROR_MST_MMIO_RDATA,
    output         AXI_MIRROR_MST_MMIO_RLAST,
    output [4:0]   AXI_MIRROR_MST_MMIO_RID,
    output         AXI_MIRROR_MST_MMIO_RUSER,
    
    
     // Cached uncore
    input         AXI_MSLAVE_MEM_AWREADY,
    output        AXI_MSLAVE_MEM_AWVALID,
    output [31:0] AXI_MSLAVE_MEM_AWADDR,
    output [7:0]  AXI_MSLAVE_MEM_AWLEN,
    output [2:0]  AXI_MSLAVE_MEM_AWSIZE,
    output [1:0]  AXI_MSLAVE_MEM_AWBURST,
    output        AXI_MSLAVE_MEM_AWLOCK,
    output [3:0]  AXI_MSLAVE_MEM_AWCACHE,
    output [2:0]  AXI_MSLAVE_MEM_AWPROT,
    output [3:0]  AXI_MSLAVE_MEM_AWQOS,
    output [3:0]  AXI_MSLAVE_MEM_AWREGION,
    output [4:0]  AXI_MSLAVE_MEM_AWID,
    output        AXI_MSLAVE_MEM_AWUSER,
    input         AXI_MSLAVE_MEM_WREADY,
    output        AXI_MSLAVE_MEM_WVALID,
    output [63:0] AXI_MSLAVE_MEM_WDATA,
    output        AXI_MSLAVE_MEM_WLAST,
    output [4:0]  AXI_MSLAVE_MEM_WID, 
    output [7:0]  AXI_MSLAVE_MEM_WSTRB,
    output        AXI_MSLAVE_MEM_WUSER,
    output        AXI_MSLAVE_MEM_BREADY,
    input         AXI_MSLAVE_MEM_BVALID,
    input [1:0]   AXI_MSLAVE_MEM_BRESP,
    input [4:0]   AXI_MSLAVE_MEM_BID,
    input         AXI_MSLAVE_MEM_BUSER,
    input         AXI_MSLAVE_MEM_ARREADY,
    output        AXI_MSLAVE_MEM_ARVALID,
    output [31:0] AXI_MSLAVE_MEM_ARADDR,
    output [7:0]  AXI_MSLAVE_MEM_ARLEN,
    output [2:0]  AXI_MSLAVE_MEM_ARSIZE,
    output [1:0]  AXI_MSLAVE_MEM_ARBURST,
    output        AXI_MSLAVE_MEM_ARLOCK,
    output [3:0]  AXI_MSLAVE_MEM_ARCACHE,
    output [2:0]  AXI_MSLAVE_MEM_ARPROT,
    output [3:0]  AXI_MSLAVE_MEM_ARQOS,
    output [3:0]  AXI_MSLAVE_MEM_ARREGION,
    output [4:0]  AXI_MSLAVE_MEM_ARID,
    output        AXI_MSLAVE_MEM_ARUSER,
    output        AXI_MSLAVE_MEM_RREADY,
    input         AXI_MSLAVE_MEM_RVALID,
    input [1:0]   AXI_MSLAVE_MEM_RRESP,
    input [63:0]  AXI_MSLAVE_MEM_RDATA,
    input         AXI_MSLAVE_MEM_RLAST,
    input [4:0]   AXI_MSLAVE_MEM_RID,
    input         AXI_MSLAVE_MEM_RUSER,
     
     // Uncached uncore
     
    input         AXI_MSLAVE_MMIO_AWREADY,
    output        AXI_MSLAVE_MMIO_AWVALID,
    output [31:0] AXI_MSLAVE_MMIO_AWADDR,
    output [7:0]  AXI_MSLAVE_MMIO_AWLEN,
    output [2:0]  AXI_MSLAVE_MMIO_AWSIZE,
    output [1:0]  AXI_MSLAVE_MMIO_AWBURST,
    output        AXI_MSLAVE_MMIO_AWLOCK,
    output [3:0]  AXI_MSLAVE_MMIO_AWCACHE,
    output [2:0]  AXI_MSLAVE_MMIO_AWPROT,
    output [3:0]  AXI_MSLAVE_MMIO_AWQOS,
    output [3:0]  AXI_MSLAVE_MMIO_AWREGION,
    output [4:0]  AXI_MSLAVE_MMIO_AWID,
    output        AXI_MSLAVE_MMIO_AWUSER,
    input         AXI_MSLAVE_MMIO_WREADY,
    output        AXI_MSLAVE_MMIO_WVALID,
    output [63:0] AXI_MSLAVE_MMIO_WDATA,
    output        AXI_MSLAVE_MMIO_WLAST,
    output [4:0]  AXI_MSLAVE_MMIO_WID,
    output [7:0]  AXI_MSLAVE_MMIO_WSTRB,
    output        AXI_MSLAVE_MMIO_WUSER,
    output        AXI_MSLAVE_MMIO_BREADY,
    input         AXI_MSLAVE_MMIO_BVALID,
    input [1:0]   AXI_MSLAVE_MMIO_BRESP,
    input [4:0]   AXI_MSLAVE_MMIO_BID,
    input         AXI_MSLAVE_MMIO_BUSER,
    input         AXI_MSLAVE_MMIO_ARREADY,
    output        AXI_MSLAVE_MMIO_ARVALID,
    output [31:0] AXI_MSLAVE_MMIO_ARADDR,
    output [7:0]  AXI_MSLAVE_MMIO_ARLEN,
    output [2:0]  AXI_MSLAVE_MMIO_ARSIZE,
    output [1:0]  AXI_MSLAVE_MMIO_ARBURST,
    output        AXI_MSLAVE_MMIO_ARLOCK,
    output [3:0]  AXI_MSLAVE_MMIO_ARCACHE,
    output [2:0]  AXI_MSLAVE_MMIO_ARPROT,
    output [3:0]  AXI_MSLAVE_MMIO_ARQOS,
    output [3:0]  AXI_MSLAVE_MMIO_ARREGION,
    output [4:0]  AXI_MSLAVE_MMIO_ARID,
    output        AXI_MSLAVE_MMIO_ARUSER,
    output        AXI_MSLAVE_MMIO_RREADY,
    input         AXI_MSLAVE_MMIO_RVALID,
    input [1:0]   AXI_MSLAVE_MMIO_RRESP,
    input [63:0]  AXI_MSLAVE_MMIO_RDATA,
    input         AXI_MSLAVE_MMIO_RLAST,
    input [4:0]   AXI_MSLAVE_MMIO_RID,
    input         AXI_MSLAVE_MMIO_RUSER
);

    reg [2:0] conditioned_ARSIZE;
    reg [2:0] conditioned_ARSIZE_0;
    reg [2:0] conditioned_AWSIZE;
    reg [2:0] conditioned_AWSIZE_0;
    reg [7:0] conditioned_WSTRB;
    reg [7:0] conditioned_WSTRB_0;

   
    assign AXI_MSLAVE_MMIO_AWVALID = AXI_MIRROR_MST_MMIO_AWVALID;
    assign AXI_MSLAVE_MMIO_AWADDR = AXI_MIRROR_MST_MMIO_AWADDR;
    assign AXI_MSLAVE_MMIO_AWLEN = AXI_MIRROR_MST_MMIO_AWLEN;
    assign AXI_MSLAVE_MMIO_AWSIZE = conditioned_AWSIZE;
    assign AXI_MSLAVE_MMIO_AWBURST = AXI_MIRROR_MST_MMIO_AWBURST;
    assign AXI_MSLAVE_MMIO_AWLOCK = AXI_MIRROR_MST_MMIO_AWLOCK;
    assign AXI_MSLAVE_MMIO_AWCACHE = AXI_MIRROR_MST_MMIO_AWCACHE;
    assign AXI_MSLAVE_MMIO_AWPROT = AXI_MIRROR_MST_MMIO_AWPROT;
    assign AXI_MSLAVE_MMIO_AWQOS = AXI_MIRROR_MST_MMIO_AWQOS;
    assign AXI_MSLAVE_MMIO_AWREGION = AXI_MIRROR_MST_MMIO_AWREGION;
    assign AXI_MSLAVE_MMIO_AWID = AXI_MIRROR_MST_MMIO_AWID;
    assign AXI_MSLAVE_MMIO_AWUSER = AXI_MIRROR_MST_MMIO_AWUSER;
    assign AXI_MSLAVE_MMIO_WVALID = AXI_MIRROR_MST_MMIO_WVALID;
    assign AXI_MSLAVE_MMIO_WDATA = AXI_MIRROR_MST_MMIO_WDATA;
    assign AXI_MSLAVE_MMIO_WLAST = AXI_MIRROR_MST_MMIO_WLAST;
    assign AXI_MSLAVE_MMIO_WID = AXI_MIRROR_MST_MMIO_WID;
    assign AXI_MSLAVE_MMIO_WSTRB = conditioned_WSTRB;
    assign AXI_MSLAVE_MMIO_WUSER = AXI_MIRROR_MST_MMIO_WUSER;
    assign AXI_MSLAVE_MMIO_BREADY = AXI_MIRROR_MST_MMIO_BREADY;
    assign AXI_MSLAVE_MMIO_ARVALID = AXI_MIRROR_MST_MMIO_ARVALID;
    assign AXI_MSLAVE_MMIO_ARADDR = AXI_MIRROR_MST_MMIO_ARADDR;
    assign AXI_MSLAVE_MMIO_ARLEN = AXI_MIRROR_MST_MMIO_ARLEN;
    assign AXI_MSLAVE_MMIO_ARSIZE = conditioned_ARSIZE;
    assign AXI_MSLAVE_MMIO_ARBURST = AXI_MIRROR_MST_MMIO_ARBURST;
    assign AXI_MSLAVE_MMIO_ARLOCK = AXI_MIRROR_MST_MMIO_ARLOCK;
    assign AXI_MSLAVE_MMIO_ARCACHE = AXI_MIRROR_MST_MMIO_ARCACHE;
    assign AXI_MSLAVE_MMIO_ARPROT = AXI_MIRROR_MST_MMIO_ARPROT;
    assign AXI_MSLAVE_MMIO_ARQOS = AXI_MIRROR_MST_MMIO_ARQOS;
    assign AXI_MSLAVE_MMIO_ARREGION = AXI_MIRROR_MST_MMIO_ARREGION;
    assign AXI_MSLAVE_MMIO_ARID = AXI_MIRROR_MST_MMIO_ARID;
    assign AXI_MSLAVE_MMIO_ARUSER = AXI_MIRROR_MST_MMIO_ARUSER;
    assign AXI_MSLAVE_MMIO_RREADY = AXI_MIRROR_MST_MMIO_RREADY;

    assign AXI_MIRROR_MST_MMIO_AWREADY = AXI_MSLAVE_MMIO_AWREADY;
    assign AXI_MIRROR_MST_MMIO_WREADY = AXI_MSLAVE_MMIO_WREADY;
    assign AXI_MIRROR_MST_MMIO_BVALID = AXI_MSLAVE_MMIO_BVALID;
    assign AXI_MIRROR_MST_MMIO_BRESP = AXI_MSLAVE_MMIO_BRESP;
    assign AXI_MIRROR_MST_MMIO_BID = AXI_MSLAVE_MMIO_BID;
    assign AXI_MIRROR_MST_MMIO_BUSER = AXI_MSLAVE_MMIO_BUSER;
    assign AXI_MIRROR_MST_MMIO_ARREADY = AXI_MSLAVE_MMIO_ARREADY;
    assign AXI_MIRROR_MST_MMIO_RRESP = AXI_MSLAVE_MMIO_RRESP;
    assign AXI_MIRROR_MST_MMIO_RDATA = AXI_MSLAVE_MMIO_RDATA;
    assign AXI_MIRROR_MST_MMIO_RLAST = AXI_MSLAVE_MMIO_RLAST;
    assign AXI_MIRROR_MST_MMIO_RID = AXI_MSLAVE_MMIO_RID;
    assign AXI_MIRROR_MST_MMIO_RVALID = AXI_MSLAVE_MMIO_RVALID;
    assign AXI_MIRROR_MST_MMIO_RUSER = AXI_MSLAVE_MMIO_RUSER;
    

    assign AXI_MSLAVE_MEM_AWVALID = AXI_MIRROR_MST_MEM_AWVALID;
    assign AXI_MSLAVE_MEM_AWADDR = AXI_MIRROR_MST_MEM_AWADDR;
    assign AXI_MSLAVE_MEM_AWLEN = AXI_MIRROR_MST_MEM_AWLEN;
    assign AXI_MSLAVE_MEM_AWSIZE = conditioned_AWSIZE_0;
    assign AXI_MSLAVE_MEM_AWBURST = AXI_MIRROR_MST_MEM_AWBURST;
    assign AXI_MSLAVE_MEM_AWLOCK = AXI_MIRROR_MST_MEM_AWLOCK;
    assign AXI_MSLAVE_MEM_AWCACHE = AXI_MIRROR_MST_MEM_AWCACHE;
    assign AXI_MSLAVE_MEM_AWPROT = AXI_MIRROR_MST_MEM_AWPROT;
    assign AXI_MSLAVE_MEM_AWQOS = AXI_MIRROR_MST_MEM_AWQOS;
    assign AXI_MSLAVE_MEM_AWREGION = AXI_MIRROR_MST_MEM_AWREGION;
    assign AXI_MSLAVE_MEM_AWID = AXI_MIRROR_MST_MEM_AWID;
    assign AXI_MSLAVE_MEM_AWUSER = AXI_MIRROR_MST_MEM_AWUSER;
    assign AXI_MSLAVE_MEM_WVALID = AXI_MIRROR_MST_MEM_WVALID;
    assign AXI_MSLAVE_MEM_WDATA = AXI_MIRROR_MST_MEM_WDATA;
    assign AXI_MSLAVE_MEM_WLAST = AXI_MIRROR_MST_MEM_WLAST;
    assign AXI_MSLAVE_MEM_WID = AXI_MIRROR_MST_MEM_WID; 
    assign AXI_MSLAVE_MEM_WSTRB = conditioned_WSTRB_0;
    assign AXI_MSLAVE_MEM_WUSER = AXI_MIRROR_MST_MEM_WUSER;
    assign AXI_MSLAVE_MEM_BREADY = AXI_MIRROR_MST_MEM_BREADY;
    assign AXI_MSLAVE_MEM_ARVALID = AXI_MIRROR_MST_MEM_ARVALID;
    assign AXI_MSLAVE_MEM_ARADDR = AXI_MIRROR_MST_MEM_ARADDR;
    assign AXI_MSLAVE_MEM_ARLEN = AXI_MIRROR_MST_MEM_ARLEN;
    assign AXI_MSLAVE_MEM_ARSIZE = conditioned_ARSIZE_0;
    assign AXI_MSLAVE_MEM_ARBURST = AXI_MIRROR_MST_MEM_ARBURST;
    assign AXI_MSLAVE_MEM_ARLOCK = AXI_MIRROR_MST_MEM_ARLOCK;
    assign AXI_MSLAVE_MEM_ARCACHE = AXI_MIRROR_MST_MEM_ARCACHE;
    assign AXI_MSLAVE_MEM_ARPROT = AXI_MIRROR_MST_MEM_ARPROT;
    assign AXI_MSLAVE_MEM_ARQOS = AXI_MIRROR_MST_MEM_ARQOS;
    assign AXI_MSLAVE_MEM_ARREGION = AXI_MIRROR_MST_MEM_ARREGION;
    assign AXI_MSLAVE_MEM_ARID = AXI_MIRROR_MST_MEM_ARID;
    assign AXI_MSLAVE_MEM_ARUSER = AXI_MIRROR_MST_MEM_ARUSER;
    assign AXI_MSLAVE_MEM_RREADY = AXI_MIRROR_MST_MEM_RREADY;

    assign AXI_MIRROR_MST_MEM_AWREADY = AXI_MSLAVE_MEM_AWREADY;
    assign AXI_MIRROR_MST_MEM_WREADY = AXI_MSLAVE_MEM_WREADY;
    assign AXI_MIRROR_MST_MEM_BVALID = AXI_MSLAVE_MEM_BVALID;
    assign AXI_MIRROR_MST_MEM_BRESP = AXI_MSLAVE_MEM_BRESP;
    assign AXI_MIRROR_MST_MEM_BID = AXI_MSLAVE_MEM_BID;
    assign AXI_MIRROR_MST_MEM_BUSER = AXI_MSLAVE_MEM_BUSER;
    assign AXI_MIRROR_MST_MEM_ARREADY = AXI_MSLAVE_MEM_ARREADY;
    assign AXI_MIRROR_MST_MEM_RVALID = AXI_MSLAVE_MEM_RVALID;
    assign AXI_MIRROR_MST_MEM_RRESP = AXI_MSLAVE_MEM_RRESP;
    assign AXI_MIRROR_MST_MEM_RDATA = AXI_MSLAVE_MEM_RDATA;
    assign AXI_MIRROR_MST_MEM_RLAST = AXI_MSLAVE_MEM_RLAST;
    assign AXI_MIRROR_MST_MEM_RID = AXI_MSLAVE_MEM_RID;
    assign AXI_MIRROR_MST_MEM_RUSER = AXI_MSLAVE_MEM_RUSER;

   // CoreAXIToAHBL does not support anything but 64-bit
   // Transactions. Bare minimal code to translate our
   // 32-bit transactions into 64-bit

   always @(*) begin
      conditioned_ARSIZE[2:0] = AXI_MIRROR_MST_MMIO_ARSIZE[2:0];
      if (AXI_MIRROR_MST_MMIO_ARVALID) begin
         if (AXI_MIRROR_MST_MMIO_ARSIZE == 3'b000) begin // 8-bit
            conditioned_ARSIZE[2:0] = 3'b011; 
         end else if (AXI_MIRROR_MST_MMIO_ARSIZE == 3'b001) begin //16-bit
            conditioned_ARSIZE[2:0] = 3'b011; 
         end else if (AXI_MIRROR_MST_MMIO_ARSIZE == 3'b010) begin // 32-bit
            conditioned_ARSIZE[2:0] = 3'b011; // 64-bit.
         end else if (AXI_MIRROR_MST_MMIO_ARSIZE == 3'b011) begin
         end else begin
            //$display ("UNSUPPORTED ARSIZE : %h", ARSIZE);
            //$finish;
         end
      end
   end


   always @(*) begin
      conditioned_ARSIZE_0[2:0] = AXI_MIRROR_MST_MEM_ARSIZE[2:0];
      if (AXI_MIRROR_MST_MEM_ARVALID) begin
         if (AXI_MIRROR_MST_MEM_ARSIZE == 3'b000) begin // 8-bit
            conditioned_ARSIZE_0[2:0] = 3'b011; 
         end else if (AXI_MIRROR_MST_MEM_ARSIZE == 3'b001) begin //16-bit
            conditioned_ARSIZE_0[2:0] = 3'b011; 
         end else if (AXI_MIRROR_MST_MEM_ARSIZE == 3'b010) begin // 32-bit
            conditioned_ARSIZE_0[2:0] = 3'b011; // 64-bit.
         end else if (AXI_MIRROR_MST_MEM_ARSIZE == 3'b011) begin
         end else begin
            //$display ("UNSUPPORTED ARSIZE_0 : %h", ARSIZE_0);
            //$finish;
         end
      end
   end

  
   always @(*) begin
      conditioned_AWSIZE[2:0] = AXI_MIRROR_MST_MMIO_AWSIZE[2:0];
      conditioned_WSTRB[7:0] = AXI_MIRROR_MST_MMIO_WSTRB[7:0];
      if (AXI_MIRROR_MST_MMIO_AWVALID) begin
         if (AXI_MIRROR_MST_MMIO_AWSIZE == 3'b000) begin // 8-bit
            conditioned_AWSIZE[2:0] = 3'b011;
            conditioned_WSTRB[7:0] = AXI_MIRROR_MST_MMIO_WSTRB[7:0] & 7'h1;
         end else if (AXI_MIRROR_MST_MMIO_AWSIZE == 3'b001) begin // 16-bit
            conditioned_AWSIZE[2:0] = 3'b011;
            conditioned_WSTRB[7:0] = AXI_MIRROR_MST_MMIO_WSTRB[7:0] & 7'h3;
         end else if (AXI_MIRROR_MST_MMIO_AWSIZE == 3'b010) begin // 32-bit
            conditioned_AWSIZE[2:0] = 3'b011; 
            conditioned_WSTRB[7:0] = AXI_MIRROR_MST_MMIO_WSTRB[7:0] & 7'hF;
         end else if (AXI_MIRROR_MST_MMIO_AWSIZE == 3'b011) begin // 64-bit
         end else begin
            //$display ("UNSUPPORTED AWSIZE : %h", AWSIZE);
            //$finish;
         end
      end
   end

    always @(*) begin
      conditioned_AWSIZE_0[2:0] = AXI_MIRROR_MST_MEM_AWSIZE[2:0];
      conditioned_WSTRB_0[7:0] = AXI_MIRROR_MST_MEM_WSTRB[7:0];
      if (AXI_MIRROR_MST_MEM_AWVALID) begin
         if (AXI_MIRROR_MST_MEM_AWSIZE == 3'b000) begin // 8-bit
            conditioned_AWSIZE_0[2:0] = 3'b011;
            conditioned_WSTRB_0[7:0] = AXI_MIRROR_MST_MEM_WSTRB[7:0] & 7'h1;
         end else if (AXI_MIRROR_MST_MEM_AWSIZE == 3'b001) begin // 16-bit
            conditioned_AWSIZE_0[2:0] = 3'b011;
            conditioned_WSTRB_0[7:0] = AXI_MIRROR_MST_MEM_WSTRB[7:0] & 7'h3;
         end else if (AXI_MIRROR_MST_MEM_AWSIZE == 3'b010) begin // 32-bit
            conditioned_AWSIZE_0[2:0] = 3'b011; 
            conditioned_WSTRB_0[7:0] = AXI_MIRROR_MST_MEM_WSTRB[7:0] & 7'hF;
         end else if (AXI_MIRROR_MST_MEM_AWSIZE == 3'b011) begin // 64-bit
         end else begin
            //$display ("UNSUPPORTED AWSIZE_0 : %h", AWSIZE_0);
            //$finish;
         end
      end
   end


endmodule
