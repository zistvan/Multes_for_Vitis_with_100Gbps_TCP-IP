// This is a generated file. Use and modify at your own risk.
//////////////////////////////////////////////////////////////////////////////// 
// default_nettype of none prevents implicit wire declaration.
`default_nettype none
`timescale 1 ns / 1 ps
// Top level of the kernel. Do not modify module name, parameters or ports.
module user_krnl #(
  parameter integer C_S_AXI_CONTROL_ADDR_WIDTH                = 12 ,
  parameter integer C_S_AXI_CONTROL_DATA_WIDTH                = 32 ,
  parameter integer C_M00_AXI_ADDR_WIDTH                      = 64 ,
  parameter integer C_M00_AXI_DATA_WIDTH                      = 512,
  parameter integer C_M01_AXI_ADDR_WIDTH                      = 64 ,
  parameter integer C_M01_AXI_DATA_WIDTH                      = 512,
  parameter integer C_M02_AXI_ADDR_WIDTH                      = 64 ,
  parameter integer C_M02_AXI_DATA_WIDTH                      = 512,
  parameter integer C_M03_AXI_ADDR_WIDTH                      = 64 ,
  parameter integer C_M03_AXI_DATA_WIDTH                      = 512,
  parameter integer C_S_AXIS_UDP_RX_TDATA_WIDTH               = 512,
  parameter integer C_M_AXIS_UDP_TX_TDATA_WIDTH               = 512,
  parameter integer C_S_AXIS_UDP_RX_META_TDATA_WIDTH          = 256,
  parameter integer C_M_AXIS_UDP_TX_META_TDATA_WIDTH          = 256,
  parameter integer C_M_AXIS_TCP_LISTEN_PORT_TDATA_WIDTH      = 16 ,
  parameter integer C_S_AXIS_TCP_PORT_STATUS_TDATA_WIDTH      = 8  ,
  parameter integer C_M_AXIS_TCP_OPEN_CONNECTION_TDATA_WIDTH  = 64 ,
  parameter integer C_S_AXIS_TCP_OPEN_STATUS_TDATA_WIDTH      = 32 ,
  parameter integer C_M_AXIS_TCP_CLOSE_CONNECTION_TDATA_WIDTH = 16 ,
  parameter integer C_S_AXIS_TCP_NOTIFICATION_TDATA_WIDTH     = 128,
  parameter integer C_M_AXIS_TCP_READ_PKG_TDATA_WIDTH         = 32 ,
  parameter integer C_S_AXIS_TCP_RX_META_TDATA_WIDTH          = 16 ,
  parameter integer C_S_AXIS_TCP_RX_DATA_TDATA_WIDTH          = 512,
  parameter integer C_M_AXIS_TCP_TX_META_TDATA_WIDTH          = 32 ,
  parameter integer C_M_AXIS_TCP_TX_DATA_TDATA_WIDTH          = 512,
  parameter integer C_S_AXIS_TCP_TX_STATUS_TDATA_WIDTH        = 64 
)
(
  // System Signals
  input  wire                                                   ap_clk                            ,
  input  wire                                                   ap_rst_n                          ,
  //  Note: A minimum subset of AXI4 memory mapped signals are declared.  AXI
  // signals omitted from these interfaces are automatically inferred with the
  // optimal values for Xilinx accleration platforms.  This allows Xilinx AXI4 Interconnects
  // within the system to be optimized by removing logic for AXI4 protocol
  // features that are not necessary. When adapting AXI4 masters within the RTL
  // kernel that have signals not declared below, it is suitable to add the
  // signals to the declarations below to connect them to the AXI4 Master.
  // 
  // List of ommited signals - effect
  // -------------------------------
  // ID - Transaction ID are used for multithreading and out of order
  // transactions.  This increases complexity. This saves logic and increases Fmax
  // in the system when ommited.
  // SIZE - Default value is log2(data width in bytes). Needed for subsize bursts.
  // This saves logic and increases Fmax in the system when ommited.
  // BURST - Default value (0b01) is incremental.  Wrap and fixed bursts are not
  // recommended. This saves logic and increases Fmax in the system when ommited.
  // LOCK - Not supported in AXI4
  // CACHE - Default value (0b0011) allows modifiable transactions. No benefit to
  // changing this.
  // PROT - Has no effect in current acceleration platforms.
  // QOS - Has no effect in current acceleration platforms.
  // REGION - Has no effect in current acceleration platforms.
  // USER - Has no effect in current acceleration platforms.
  // RESP - Not useful in most acceleration platforms.
  // 
  // AXI4 master interface m00_axi
  output wire                                                   m00_axi_awvalid                   ,
  input  wire                                                   m00_axi_awready                   ,
  output wire [C_M00_AXI_ADDR_WIDTH-1:0]                        m00_axi_awaddr                    ,
  output wire [8-1:0]                                           m00_axi_awlen                     ,
  output wire                                                   m00_axi_wvalid                    ,
  input  wire                                                   m00_axi_wready                    ,
  output wire [C_M00_AXI_DATA_WIDTH-1:0]                        m00_axi_wdata                     ,
  output wire [C_M00_AXI_DATA_WIDTH/8-1:0]                      m00_axi_wstrb                     ,
  output wire                                                   m00_axi_wlast                     ,
  input  wire                                                   m00_axi_bvalid                    ,
  output wire                                                   m00_axi_bready                    ,
  output wire                                                   m00_axi_arvalid                   ,
  input  wire                                                   m00_axi_arready                   ,
  output wire [C_M00_AXI_ADDR_WIDTH-1:0]                        m00_axi_araddr                    ,
  output wire [8-1:0]                                           m00_axi_arlen                     ,
  input  wire                                                   m00_axi_rvalid                    ,
  output wire                                                   m00_axi_rready                    ,
  input  wire [C_M00_AXI_DATA_WIDTH-1:0]                        m00_axi_rdata                     ,
  input  wire                                                   m00_axi_rlast                     ,
  // AXI4 master interface m01_axi
  output wire                                                   m01_axi_awvalid                   ,
  input  wire                                                   m01_axi_awready                   ,
  output wire [C_M01_AXI_ADDR_WIDTH-1:0]                        m01_axi_awaddr                    ,
  output wire [8-1:0]                                           m01_axi_awlen                     ,
  output wire                                                   m01_axi_wvalid                    ,
  input  wire                                                   m01_axi_wready                    ,
  output wire [C_M01_AXI_DATA_WIDTH-1:0]                        m01_axi_wdata                     ,
  output wire [C_M01_AXI_DATA_WIDTH/8-1:0]                      m01_axi_wstrb                     ,
  output wire                                                   m01_axi_wlast                     ,
  input  wire                                                   m01_axi_bvalid                    ,
  output wire                                                   m01_axi_bready                    ,
  output wire                                                   m01_axi_arvalid                   ,
  input  wire                                                   m01_axi_arready                   ,
  output wire [C_M01_AXI_ADDR_WIDTH-1:0]                        m01_axi_araddr                    ,
  output wire [8-1:0]                                           m01_axi_arlen                     ,
  input  wire                                                   m01_axi_rvalid                    ,
  output wire                                                   m01_axi_rready                    ,
  input  wire [C_M01_AXI_DATA_WIDTH-1:0]                        m01_axi_rdata                     ,
  input  wire                                                   m01_axi_rlast                     ,
  // AXI4 master interface m02_axi
  output wire                                                   m02_axi_awvalid                   ,
  input  wire                                                   m02_axi_awready                   ,
  output wire [C_M02_AXI_ADDR_WIDTH-1:0]                        m02_axi_awaddr                    ,
  output wire [8-1:0]                                           m02_axi_awlen                     ,
  output wire                                                   m02_axi_wvalid                    ,
  input  wire                                                   m02_axi_wready                    ,
  output wire [C_M02_AXI_DATA_WIDTH-1:0]                        m02_axi_wdata                     ,
  output wire [C_M02_AXI_DATA_WIDTH/8-1:0]                      m02_axi_wstrb                     ,
  output wire                                                   m02_axi_wlast                     ,
  input  wire                                                   m02_axi_bvalid                    ,
  output wire                                                   m02_axi_bready                    ,
  output wire                                                   m02_axi_arvalid                   ,
  input  wire                                                   m02_axi_arready                   ,
  output wire [C_M02_AXI_ADDR_WIDTH-1:0]                        m02_axi_araddr                    ,
  output wire [8-1:0]                                           m02_axi_arlen                     ,
  input  wire                                                   m02_axi_rvalid                    ,
  output wire                                                   m02_axi_rready                    ,
  input  wire [C_M02_AXI_DATA_WIDTH-1:0]                        m02_axi_rdata                     ,
  input  wire                                                   m02_axi_rlast                     ,
  // AXI4 master interface m03_axi
  output wire                                                   m03_axi_awvalid                   ,
  input  wire                                                   m03_axi_awready                   ,
  output wire [C_M03_AXI_ADDR_WIDTH-1:0]                        m03_axi_awaddr                    ,
  output wire [8-1:0]                                           m03_axi_awlen                     ,
  output wire                                                   m03_axi_wvalid                    ,
  input  wire                                                   m03_axi_wready                    ,
  output wire [C_M03_AXI_DATA_WIDTH-1:0]                        m03_axi_wdata                     ,
  output wire [C_M03_AXI_DATA_WIDTH/8-1:0]                      m03_axi_wstrb                     ,
  output wire                                                   m03_axi_wlast                     ,
  input  wire                                                   m03_axi_bvalid                    ,
  output wire                                                   m03_axi_bready                    ,
  output wire                                                   m03_axi_arvalid                   ,
  input  wire                                                   m03_axi_arready                   ,
  output wire [C_M03_AXI_ADDR_WIDTH-1:0]                        m03_axi_araddr                    ,
  output wire [8-1:0]                                           m03_axi_arlen                     ,
  input  wire                                                   m03_axi_rvalid                    ,
  output wire                                                   m03_axi_rready                    ,
  input  wire [C_M03_AXI_DATA_WIDTH-1:0]                        m03_axi_rdata                     ,
  input  wire                                                   m03_axi_rlast                     ,
  // AXI4-Stream (slave) interface s_axis_udp_rx
  input  wire                                                   s_axis_udp_rx_tvalid              ,
  output wire                                                   s_axis_udp_rx_tready              ,
  input  wire [C_S_AXIS_UDP_RX_TDATA_WIDTH-1:0]                 s_axis_udp_rx_tdata               ,
  input  wire [C_S_AXIS_UDP_RX_TDATA_WIDTH/8-1:0]               s_axis_udp_rx_tkeep               ,
  input  wire                                                   s_axis_udp_rx_tlast               ,
  // AXI4-Stream (master) interface m_axis_udp_tx
  output wire                                                   m_axis_udp_tx_tvalid              ,
  input  wire                                                   m_axis_udp_tx_tready              ,
  output wire [C_M_AXIS_UDP_TX_TDATA_WIDTH-1:0]                 m_axis_udp_tx_tdata               ,
  output wire [C_M_AXIS_UDP_TX_TDATA_WIDTH/8-1:0]               m_axis_udp_tx_tkeep               ,
  output wire                                                   m_axis_udp_tx_tlast               ,
  // AXI4-Stream (slave) interface s_axis_udp_rx_meta
  input  wire                                                   s_axis_udp_rx_meta_tvalid         ,
  output wire                                                   s_axis_udp_rx_meta_tready         ,
  input  wire [C_S_AXIS_UDP_RX_META_TDATA_WIDTH-1:0]            s_axis_udp_rx_meta_tdata          ,
  input  wire [C_S_AXIS_UDP_RX_META_TDATA_WIDTH/8-1:0]          s_axis_udp_rx_meta_tkeep          ,
  input  wire                                                   s_axis_udp_rx_meta_tlast          ,
  // AXI4-Stream (master) interface m_axis_udp_tx_meta
  output wire                                                   m_axis_udp_tx_meta_tvalid         ,
  input  wire                                                   m_axis_udp_tx_meta_tready         ,
  output wire [C_M_AXIS_UDP_TX_META_TDATA_WIDTH-1:0]            m_axis_udp_tx_meta_tdata          ,
  output wire [C_M_AXIS_UDP_TX_META_TDATA_WIDTH/8-1:0]          m_axis_udp_tx_meta_tkeep          ,
  output wire                                                   m_axis_udp_tx_meta_tlast          ,
  // AXI4-Stream (master) interface m_axis_tcp_listen_port
  output wire                                                   m_axis_tcp_listen_port_tvalid     ,
  input  wire                                                   m_axis_tcp_listen_port_tready     ,
  output wire [C_M_AXIS_TCP_LISTEN_PORT_TDATA_WIDTH-1:0]        m_axis_tcp_listen_port_tdata      ,
  output wire [C_M_AXIS_TCP_LISTEN_PORT_TDATA_WIDTH/8-1:0]      m_axis_tcp_listen_port_tkeep      ,
  output wire                                                   m_axis_tcp_listen_port_tlast      ,
  // AXI4-Stream (slave) interface s_axis_tcp_port_status
  input  wire                                                   s_axis_tcp_port_status_tvalid     ,
  output wire                                                   s_axis_tcp_port_status_tready     ,
  input  wire [C_S_AXIS_TCP_PORT_STATUS_TDATA_WIDTH-1:0]        s_axis_tcp_port_status_tdata      ,
  input  wire                                                   s_axis_tcp_port_status_tlast      ,
  // AXI4-Stream (master) interface m_axis_tcp_open_connection
  output wire                                                   m_axis_tcp_open_connection_tvalid ,
  input  wire                                                   m_axis_tcp_open_connection_tready ,
  output wire [C_M_AXIS_TCP_OPEN_CONNECTION_TDATA_WIDTH-1:0]    m_axis_tcp_open_connection_tdata  ,
  output wire [C_M_AXIS_TCP_OPEN_CONNECTION_TDATA_WIDTH/8-1:0]  m_axis_tcp_open_connection_tkeep  ,
  output wire                                                   m_axis_tcp_open_connection_tlast  ,
  // AXI4-Stream (slave) interface s_axis_tcp_open_status
  input  wire                                                   s_axis_tcp_open_status_tvalid     ,
  output wire                                                   s_axis_tcp_open_status_tready     ,
  input  wire [C_S_AXIS_TCP_OPEN_STATUS_TDATA_WIDTH-1:0]        s_axis_tcp_open_status_tdata      ,
  input  wire [C_S_AXIS_TCP_OPEN_STATUS_TDATA_WIDTH/8-1:0]      s_axis_tcp_open_status_tkeep      ,
  input  wire                                                   s_axis_tcp_open_status_tlast      ,
  // AXI4-Stream (master) interface m_axis_tcp_close_connection
  output wire                                                   m_axis_tcp_close_connection_tvalid,
  input  wire                                                   m_axis_tcp_close_connection_tready,
  output wire [C_M_AXIS_TCP_CLOSE_CONNECTION_TDATA_WIDTH-1:0]   m_axis_tcp_close_connection_tdata ,
  output wire [C_M_AXIS_TCP_CLOSE_CONNECTION_TDATA_WIDTH/8-1:0] m_axis_tcp_close_connection_tkeep ,
  output wire                                                   m_axis_tcp_close_connection_tlast ,
  // AXI4-Stream (slave) interface s_axis_tcp_notification
  input  wire                                                   s_axis_tcp_notification_tvalid    ,
  output wire                                                   s_axis_tcp_notification_tready    ,
  input  wire [C_S_AXIS_TCP_NOTIFICATION_TDATA_WIDTH-1:0]       s_axis_tcp_notification_tdata     ,
  input  wire [C_S_AXIS_TCP_NOTIFICATION_TDATA_WIDTH/8-1:0]     s_axis_tcp_notification_tkeep     ,
  input  wire                                                   s_axis_tcp_notification_tlast     ,
  // AXI4-Stream (master) interface m_axis_tcp_read_pkg
  output wire                                                   m_axis_tcp_read_pkg_tvalid        ,
  input  wire                                                   m_axis_tcp_read_pkg_tready        ,
  output wire [C_M_AXIS_TCP_READ_PKG_TDATA_WIDTH-1:0]           m_axis_tcp_read_pkg_tdata         ,
  output wire [C_M_AXIS_TCP_READ_PKG_TDATA_WIDTH/8-1:0]         m_axis_tcp_read_pkg_tkeep         ,
  output wire                                                   m_axis_tcp_read_pkg_tlast         ,
  // AXI4-Stream (slave) interface s_axis_tcp_rx_meta
  input  wire                                                   s_axis_tcp_rx_meta_tvalid         ,
  output wire                                                   s_axis_tcp_rx_meta_tready         ,
  input  wire [C_S_AXIS_TCP_RX_META_TDATA_WIDTH-1:0]            s_axis_tcp_rx_meta_tdata          ,
  input  wire [C_S_AXIS_TCP_RX_META_TDATA_WIDTH/8-1:0]          s_axis_tcp_rx_meta_tkeep          ,
  input  wire                                                   s_axis_tcp_rx_meta_tlast          ,
  // AXI4-Stream (slave) interface s_axis_tcp_rx_data
  input  wire                                                   s_axis_tcp_rx_data_tvalid         ,
  output wire                                                   s_axis_tcp_rx_data_tready         ,
  input  wire [C_S_AXIS_TCP_RX_DATA_TDATA_WIDTH-1:0]            s_axis_tcp_rx_data_tdata          ,
  input  wire [C_S_AXIS_TCP_RX_DATA_TDATA_WIDTH/8-1:0]          s_axis_tcp_rx_data_tkeep          ,
  input  wire                                                   s_axis_tcp_rx_data_tlast          ,
  // AXI4-Stream (master) interface m_axis_tcp_tx_meta
  output wire                                                   m_axis_tcp_tx_meta_tvalid         ,
  input  wire                                                   m_axis_tcp_tx_meta_tready         ,
  output wire [C_M_AXIS_TCP_TX_META_TDATA_WIDTH-1:0]            m_axis_tcp_tx_meta_tdata          ,
  output wire [C_M_AXIS_TCP_TX_META_TDATA_WIDTH/8-1:0]          m_axis_tcp_tx_meta_tkeep          ,
  output wire                                                   m_axis_tcp_tx_meta_tlast          ,
  // AXI4-Stream (master) interface m_axis_tcp_tx_data
  output wire                                                   m_axis_tcp_tx_data_tvalid         ,
  input  wire                                                   m_axis_tcp_tx_data_tready         ,
  output wire [C_M_AXIS_TCP_TX_DATA_TDATA_WIDTH-1:0]            m_axis_tcp_tx_data_tdata          ,
  output wire [C_M_AXIS_TCP_TX_DATA_TDATA_WIDTH/8-1:0]          m_axis_tcp_tx_data_tkeep          ,
  output wire                                                   m_axis_tcp_tx_data_tlast          ,
  // AXI4-Stream (slave) interface s_axis_tcp_tx_status
  input  wire                                                   s_axis_tcp_tx_status_tvalid       ,
  output wire                                                   s_axis_tcp_tx_status_tready       ,
  input  wire [C_S_AXIS_TCP_TX_STATUS_TDATA_WIDTH-1:0]          s_axis_tcp_tx_status_tdata        ,
  input  wire [C_S_AXIS_TCP_TX_STATUS_TDATA_WIDTH/8-1:0]        s_axis_tcp_tx_status_tkeep        ,
  input  wire                                                   s_axis_tcp_tx_status_tlast        ,
  // AXI4-Lite slave interface
  input  wire                                                   s_axi_control_awvalid             ,
  output wire                                                   s_axi_control_awready             ,
  input  wire [C_S_AXI_CONTROL_ADDR_WIDTH-1:0]                  s_axi_control_awaddr              ,
  input  wire                                                   s_axi_control_wvalid              ,
  output wire                                                   s_axi_control_wready              ,
  input  wire [C_S_AXI_CONTROL_DATA_WIDTH-1:0]                  s_axi_control_wdata               ,
  input  wire [C_S_AXI_CONTROL_DATA_WIDTH/8-1:0]                s_axi_control_wstrb               ,
  input  wire                                                   s_axi_control_arvalid             ,
  output wire                                                   s_axi_control_arready             ,
  input  wire [C_S_AXI_CONTROL_ADDR_WIDTH-1:0]                  s_axi_control_araddr              ,
  output wire                                                   s_axi_control_rvalid              ,
  input  wire                                                   s_axi_control_rready              ,
  output wire [C_S_AXI_CONTROL_DATA_WIDTH-1:0]                  s_axi_control_rdata               ,
  output wire [2-1:0]                                           s_axi_control_rresp               ,
  output wire                                                   s_axi_control_bvalid              ,
  input  wire                                                   s_axi_control_bready              ,
  output wire [2-1:0]                                           s_axi_control_bresp               ,
  output wire                                                   interrupt                         
);

///////////////////////////////////////////////////////////////////////////////
// Local Parameters
///////////////////////////////////////////////////////////////////////////////

///////////////////////////////////////////////////////////////////////////////
// Wires and Variables
///////////////////////////////////////////////////////////////////////////////
(* DONT_TOUCH = "yes" *)
reg                                 areset                         = 1'b0;
wire                                ap_start                      ;
wire                                ap_idle                       ;
wire                                ap_done                       ;
wire                                ap_ready                      ;
wire [32-1:0]                       useConn                       ;
wire [32-1:0]                       useIpAddr                     ;
wire [32-1:0]                       pkgWordCount                  ;
wire [32-1:0]                       basePort                      ;
wire [32-1:0]                       baseIpAddress                 ;
wire [32-1:0]                       dualModeEn                    ;
wire [32-1:0]                       packetGap                     ;
wire [32-1:0]                       timeInSeconds                 ;
wire [64-1:0]                       timeInCycles                  ;
wire [64-1:0]                       axi00_ptr0                    ;
wire [64-1:0]                       axi01_ptr0                    ;
wire [64-1:0]                       axi02_ptr0                    ;
wire [64-1:0]                       axi03_ptr0                    ;

// Register and invert reset signal.
always @(posedge ap_clk) begin
  areset <= ~ap_rst_n;
end

///////////////////////////////////////////////////////////////////////////////
// Begin control interface RTL.  Modifying not recommended.
///////////////////////////////////////////////////////////////////////////////


// AXI4-Lite slave interface
user_krnl_control_s_axi #(
  .C_S_AXI_ADDR_WIDTH ( C_S_AXI_CONTROL_ADDR_WIDTH ),
  .C_S_AXI_DATA_WIDTH ( C_S_AXI_CONTROL_DATA_WIDTH )
)
inst_control_s_axi (
  .ACLK          ( ap_clk                ),
  .ARESET        ( areset                ),
  .ACLK_EN       ( 1'b1                  ),
  .AWVALID       ( s_axi_control_awvalid ),
  .AWREADY       ( s_axi_control_awready ),
  .AWADDR        ( s_axi_control_awaddr  ),
  .WVALID        ( s_axi_control_wvalid  ),
  .WREADY        ( s_axi_control_wready  ),
  .WDATA         ( s_axi_control_wdata   ),
  .WSTRB         ( s_axi_control_wstrb   ),
  .ARVALID       ( s_axi_control_arvalid ),
  .ARREADY       ( s_axi_control_arready ),
  .ARADDR        ( s_axi_control_araddr  ),
  .RVALID        ( s_axi_control_rvalid  ),
  .RREADY        ( s_axi_control_rready  ),
  .RDATA         ( s_axi_control_rdata   ),
  .RRESP         ( s_axi_control_rresp   ),
  .BVALID        ( s_axi_control_bvalid  ),
  .BREADY        ( s_axi_control_bready  ),
  .BRESP         ( s_axi_control_bresp   ),
  .interrupt     ( interrupt             ),
  .ap_start      ( ap_start              ),
  .ap_done       ( ap_done               ),
  .ap_ready      ( ap_ready              ),
  .ap_idle       ( ap_idle               ),
  .useConn       ( useConn               ),
  .useIpAddr     ( useIpAddr             ),
  .pkgWordCount  ( pkgWordCount          ),
  .basePort      ( basePort              ),
  .baseIpAddress ( baseIpAddress         ),
  .dualModeEn    ( dualModeEn            ),
  .packetGap     ( packetGap             ),
  .timeInSeconds ( timeInSeconds         ),
  .timeInCycles  ( timeInCycles          ),
  .axi00_ptr0    ( axi00_ptr0            ),
  .axi01_ptr0    ( axi01_ptr0            ),
  .axi02_ptr0    ( axi02_ptr0            ),
  .axi03_ptr0    ( axi03_ptr0            )
);

///////////////////////////////////////////////////////////////////////////////
// Add kernel logic here.  Modify/remove example code as necessary.
///////////////////////////////////////////////////////////////////////////////

// Example RTL block.  Remove to insert custom logic.
user_krnl_example #(
  .C_M00_AXI_ADDR_WIDTH                      ( C_M00_AXI_ADDR_WIDTH                      ),
  .C_M00_AXI_DATA_WIDTH                      ( C_M00_AXI_DATA_WIDTH                      ),
  .C_M01_AXI_ADDR_WIDTH                      ( C_M01_AXI_ADDR_WIDTH                      ),
  .C_M01_AXI_DATA_WIDTH                      ( C_M01_AXI_DATA_WIDTH                      ),
  .C_M02_AXI_ADDR_WIDTH                      ( C_M02_AXI_ADDR_WIDTH                      ),
  .C_M02_AXI_DATA_WIDTH                      ( C_M02_AXI_DATA_WIDTH                      ),
  .C_M03_AXI_ADDR_WIDTH                      ( C_M03_AXI_ADDR_WIDTH                      ),
  .C_M03_AXI_DATA_WIDTH                      ( C_M03_AXI_DATA_WIDTH                      ),
  .C_S_AXIS_UDP_RX_TDATA_WIDTH               ( C_S_AXIS_UDP_RX_TDATA_WIDTH               ),
  .C_M_AXIS_UDP_TX_TDATA_WIDTH               ( C_M_AXIS_UDP_TX_TDATA_WIDTH               ),
  .C_S_AXIS_UDP_RX_META_TDATA_WIDTH          ( C_S_AXIS_UDP_RX_META_TDATA_WIDTH          ),
  .C_M_AXIS_UDP_TX_META_TDATA_WIDTH          ( C_M_AXIS_UDP_TX_META_TDATA_WIDTH          ),
  .C_M_AXIS_TCP_LISTEN_PORT_TDATA_WIDTH      ( C_M_AXIS_TCP_LISTEN_PORT_TDATA_WIDTH      ),
  .C_S_AXIS_TCP_PORT_STATUS_TDATA_WIDTH      ( C_S_AXIS_TCP_PORT_STATUS_TDATA_WIDTH      ),
  .C_M_AXIS_TCP_OPEN_CONNECTION_TDATA_WIDTH  ( C_M_AXIS_TCP_OPEN_CONNECTION_TDATA_WIDTH  ),
  .C_S_AXIS_TCP_OPEN_STATUS_TDATA_WIDTH      ( C_S_AXIS_TCP_OPEN_STATUS_TDATA_WIDTH      ),
  .C_M_AXIS_TCP_CLOSE_CONNECTION_TDATA_WIDTH ( C_M_AXIS_TCP_CLOSE_CONNECTION_TDATA_WIDTH ),
  .C_S_AXIS_TCP_NOTIFICATION_TDATA_WIDTH     ( C_S_AXIS_TCP_NOTIFICATION_TDATA_WIDTH     ),
  .C_M_AXIS_TCP_READ_PKG_TDATA_WIDTH         ( C_M_AXIS_TCP_READ_PKG_TDATA_WIDTH         ),
  .C_S_AXIS_TCP_RX_META_TDATA_WIDTH          ( C_S_AXIS_TCP_RX_META_TDATA_WIDTH          ),
  .C_S_AXIS_TCP_RX_DATA_TDATA_WIDTH          ( C_S_AXIS_TCP_RX_DATA_TDATA_WIDTH          ),
  .C_M_AXIS_TCP_TX_META_TDATA_WIDTH          ( C_M_AXIS_TCP_TX_META_TDATA_WIDTH          ),
  .C_M_AXIS_TCP_TX_DATA_TDATA_WIDTH          ( C_M_AXIS_TCP_TX_DATA_TDATA_WIDTH          ),
  .C_S_AXIS_TCP_TX_STATUS_TDATA_WIDTH        ( C_S_AXIS_TCP_TX_STATUS_TDATA_WIDTH        )
)
inst_example (
  .ap_clk                             ( ap_clk                             ),
  .ap_rst_n                           ( ap_rst_n                           ),
  .m00_axi_awvalid                    ( m00_axi_awvalid                    ),
  .m00_axi_awready                    ( m00_axi_awready                    ),
  .m00_axi_awaddr                     ( m00_axi_awaddr                     ),
  .m00_axi_awlen                      ( m00_axi_awlen                      ),
  .m00_axi_wvalid                     ( m00_axi_wvalid                     ),
  .m00_axi_wready                     ( m00_axi_wready                     ),
  .m00_axi_wdata                      ( m00_axi_wdata                      ),
  .m00_axi_wstrb                      ( m00_axi_wstrb                      ),
  .m00_axi_wlast                      ( m00_axi_wlast                      ),
  .m00_axi_bvalid                     ( m00_axi_bvalid                     ),
  .m00_axi_bready                     ( m00_axi_bready                     ),
  .m00_axi_arvalid                    ( m00_axi_arvalid                    ),
  .m00_axi_arready                    ( m00_axi_arready                    ),
  .m00_axi_araddr                     ( m00_axi_araddr                     ),
  .m00_axi_arlen                      ( m00_axi_arlen                      ),
  .m00_axi_rvalid                     ( m00_axi_rvalid                     ),
  .m00_axi_rready                     ( m00_axi_rready                     ),
  .m00_axi_rdata                      ( m00_axi_rdata                      ),
  .m00_axi_rlast                      ( m00_axi_rlast                      ),
  .m01_axi_awvalid                    ( m01_axi_awvalid                    ),
  .m01_axi_awready                    ( m01_axi_awready                    ),
  .m01_axi_awaddr                     ( m01_axi_awaddr                     ),
  .m01_axi_awlen                      ( m01_axi_awlen                      ),
  .m01_axi_wvalid                     ( m01_axi_wvalid                     ),
  .m01_axi_wready                     ( m01_axi_wready                     ),
  .m01_axi_wdata                      ( m01_axi_wdata                      ),
  .m01_axi_wstrb                      ( m01_axi_wstrb                      ),
  .m01_axi_wlast                      ( m01_axi_wlast                      ),
  .m01_axi_bvalid                     ( m01_axi_bvalid                     ),
  .m01_axi_bready                     ( m01_axi_bready                     ),
  .m01_axi_arvalid                    ( m01_axi_arvalid                    ),
  .m01_axi_arready                    ( m01_axi_arready                    ),
  .m01_axi_araddr                     ( m01_axi_araddr                     ),
  .m01_axi_arlen                      ( m01_axi_arlen                      ),
  .m01_axi_rvalid                     ( m01_axi_rvalid                     ),
  .m01_axi_rready                     ( m01_axi_rready                     ),
  .m01_axi_rdata                      ( m01_axi_rdata                      ),
  .m01_axi_rlast                      ( m01_axi_rlast                      ),
  .m02_axi_awvalid                    ( m02_axi_awvalid                    ),
  .m02_axi_awready                    ( m02_axi_awready                    ),
  .m02_axi_awaddr                     ( m02_axi_awaddr                     ),
  .m02_axi_awlen                      ( m02_axi_awlen                      ),
  .m02_axi_wvalid                     ( m02_axi_wvalid                     ),
  .m02_axi_wready                     ( m02_axi_wready                     ),
  .m02_axi_wdata                      ( m02_axi_wdata                      ),
  .m02_axi_wstrb                      ( m02_axi_wstrb                      ),
  .m02_axi_wlast                      ( m02_axi_wlast                      ),
  .m02_axi_bvalid                     ( m02_axi_bvalid                     ),
  .m02_axi_bready                     ( m02_axi_bready                     ),
  .m02_axi_arvalid                    ( m02_axi_arvalid                    ),
  .m02_axi_arready                    ( m02_axi_arready                    ),
  .m02_axi_araddr                     ( m02_axi_araddr                     ),
  .m02_axi_arlen                      ( m02_axi_arlen                      ),
  .m02_axi_rvalid                     ( m02_axi_rvalid                     ),
  .m02_axi_rready                     ( m02_axi_rready                     ),
  .m02_axi_rdata                      ( m02_axi_rdata                      ),
  .m02_axi_rlast                      ( m02_axi_rlast                      ),
  .m03_axi_awvalid                    ( m03_axi_awvalid                    ),
  .m03_axi_awready                    ( m03_axi_awready                    ),
  .m03_axi_awaddr                     ( m03_axi_awaddr                     ),
  .m03_axi_awlen                      ( m03_axi_awlen                      ),
  .m03_axi_wvalid                     ( m03_axi_wvalid                     ),
  .m03_axi_wready                     ( m03_axi_wready                     ),
  .m03_axi_wdata                      ( m03_axi_wdata                      ),
  .m03_axi_wstrb                      ( m03_axi_wstrb                      ),
  .m03_axi_wlast                      ( m03_axi_wlast                      ),
  .m03_axi_bvalid                     ( m03_axi_bvalid                     ),
  .m03_axi_bready                     ( m03_axi_bready                     ),
  .m03_axi_arvalid                    ( m03_axi_arvalid                    ),
  .m03_axi_arready                    ( m03_axi_arready                    ),
  .m03_axi_araddr                     ( m03_axi_araddr                     ),
  .m03_axi_arlen                      ( m03_axi_arlen                      ),
  .m03_axi_rvalid                     ( m03_axi_rvalid                     ),
  .m03_axi_rready                     ( m03_axi_rready                     ),
  .m03_axi_rdata                      ( m03_axi_rdata                      ),
  .m03_axi_rlast                      ( m03_axi_rlast                      ),
  .s_axis_udp_rx_tvalid               ( s_axis_udp_rx_tvalid               ),
  .s_axis_udp_rx_tready               ( s_axis_udp_rx_tready               ),
  .s_axis_udp_rx_tdata                ( s_axis_udp_rx_tdata                ),
  .s_axis_udp_rx_tkeep                ( s_axis_udp_rx_tkeep                ),
  .s_axis_udp_rx_tlast                ( s_axis_udp_rx_tlast                ),
  .m_axis_udp_tx_tvalid               ( m_axis_udp_tx_tvalid               ),
  .m_axis_udp_tx_tready               ( m_axis_udp_tx_tready               ),
  .m_axis_udp_tx_tdata                ( m_axis_udp_tx_tdata                ),
  .m_axis_udp_tx_tkeep                ( m_axis_udp_tx_tkeep                ),
  .m_axis_udp_tx_tlast                ( m_axis_udp_tx_tlast                ),
  .s_axis_udp_rx_meta_tvalid          ( s_axis_udp_rx_meta_tvalid          ),
  .s_axis_udp_rx_meta_tready          ( s_axis_udp_rx_meta_tready          ),
  .s_axis_udp_rx_meta_tdata           ( s_axis_udp_rx_meta_tdata           ),
  .s_axis_udp_rx_meta_tkeep           ( s_axis_udp_rx_meta_tkeep           ),
  .s_axis_udp_rx_meta_tlast           ( s_axis_udp_rx_meta_tlast           ),
  .m_axis_udp_tx_meta_tvalid          ( m_axis_udp_tx_meta_tvalid          ),
  .m_axis_udp_tx_meta_tready          ( m_axis_udp_tx_meta_tready          ),
  .m_axis_udp_tx_meta_tdata           ( m_axis_udp_tx_meta_tdata           ),
  .m_axis_udp_tx_meta_tkeep           ( m_axis_udp_tx_meta_tkeep           ),
  .m_axis_udp_tx_meta_tlast           ( m_axis_udp_tx_meta_tlast           ),
  .m_axis_tcp_listen_port_tvalid      ( m_axis_tcp_listen_port_tvalid      ),
  .m_axis_tcp_listen_port_tready      ( m_axis_tcp_listen_port_tready      ),
  .m_axis_tcp_listen_port_tdata       ( m_axis_tcp_listen_port_tdata       ),
  .m_axis_tcp_listen_port_tkeep       ( m_axis_tcp_listen_port_tkeep       ),
  .m_axis_tcp_listen_port_tlast       ( m_axis_tcp_listen_port_tlast       ),
  .s_axis_tcp_port_status_tvalid      ( s_axis_tcp_port_status_tvalid      ),
  .s_axis_tcp_port_status_tready      ( s_axis_tcp_port_status_tready      ),
  .s_axis_tcp_port_status_tdata       ( s_axis_tcp_port_status_tdata       ),
  .s_axis_tcp_port_status_tlast       ( s_axis_tcp_port_status_tlast       ),
  .m_axis_tcp_open_connection_tvalid  ( m_axis_tcp_open_connection_tvalid  ),
  .m_axis_tcp_open_connection_tready  ( m_axis_tcp_open_connection_tready  ),
  .m_axis_tcp_open_connection_tdata   ( m_axis_tcp_open_connection_tdata   ),
  .m_axis_tcp_open_connection_tkeep   ( m_axis_tcp_open_connection_tkeep   ),
  .m_axis_tcp_open_connection_tlast   ( m_axis_tcp_open_connection_tlast   ),
  .s_axis_tcp_open_status_tvalid      ( s_axis_tcp_open_status_tvalid      ),
  .s_axis_tcp_open_status_tready      ( s_axis_tcp_open_status_tready      ),
  .s_axis_tcp_open_status_tdata       ( s_axis_tcp_open_status_tdata       ),
  .s_axis_tcp_open_status_tkeep       ( s_axis_tcp_open_status_tkeep       ),
  .s_axis_tcp_open_status_tlast       ( s_axis_tcp_open_status_tlast       ),
  .m_axis_tcp_close_connection_tvalid ( m_axis_tcp_close_connection_tvalid ),
  .m_axis_tcp_close_connection_tready ( m_axis_tcp_close_connection_tready ),
  .m_axis_tcp_close_connection_tdata  ( m_axis_tcp_close_connection_tdata  ),
  .m_axis_tcp_close_connection_tkeep  ( m_axis_tcp_close_connection_tkeep  ),
  .m_axis_tcp_close_connection_tlast  ( m_axis_tcp_close_connection_tlast  ),
  .s_axis_tcp_notification_tvalid     ( s_axis_tcp_notification_tvalid     ),
  .s_axis_tcp_notification_tready     ( s_axis_tcp_notification_tready     ),
  .s_axis_tcp_notification_tdata      ( s_axis_tcp_notification_tdata      ),
  .s_axis_tcp_notification_tkeep      ( s_axis_tcp_notification_tkeep      ),
  .s_axis_tcp_notification_tlast      ( s_axis_tcp_notification_tlast      ),
  .m_axis_tcp_read_pkg_tvalid         ( m_axis_tcp_read_pkg_tvalid         ),
  .m_axis_tcp_read_pkg_tready         ( m_axis_tcp_read_pkg_tready         ),
  .m_axis_tcp_read_pkg_tdata          ( m_axis_tcp_read_pkg_tdata          ),
  .m_axis_tcp_read_pkg_tkeep          ( m_axis_tcp_read_pkg_tkeep          ),
  .m_axis_tcp_read_pkg_tlast          ( m_axis_tcp_read_pkg_tlast          ),
  .s_axis_tcp_rx_meta_tvalid          ( s_axis_tcp_rx_meta_tvalid          ),
  .s_axis_tcp_rx_meta_tready          ( s_axis_tcp_rx_meta_tready          ),
  .s_axis_tcp_rx_meta_tdata           ( s_axis_tcp_rx_meta_tdata           ),
  .s_axis_tcp_rx_meta_tkeep           ( s_axis_tcp_rx_meta_tkeep           ),
  .s_axis_tcp_rx_meta_tlast           ( s_axis_tcp_rx_meta_tlast           ),
  .s_axis_tcp_rx_data_tvalid          ( s_axis_tcp_rx_data_tvalid          ),
  .s_axis_tcp_rx_data_tready          ( s_axis_tcp_rx_data_tready          ),
  .s_axis_tcp_rx_data_tdata           ( s_axis_tcp_rx_data_tdata           ),
  .s_axis_tcp_rx_data_tkeep           ( s_axis_tcp_rx_data_tkeep           ),
  .s_axis_tcp_rx_data_tlast           ( s_axis_tcp_rx_data_tlast           ),
  .m_axis_tcp_tx_meta_tvalid          ( m_axis_tcp_tx_meta_tvalid          ),
  .m_axis_tcp_tx_meta_tready          ( m_axis_tcp_tx_meta_tready          ),
  .m_axis_tcp_tx_meta_tdata           ( m_axis_tcp_tx_meta_tdata           ),
  .m_axis_tcp_tx_meta_tkeep           ( m_axis_tcp_tx_meta_tkeep           ),
  .m_axis_tcp_tx_meta_tlast           ( m_axis_tcp_tx_meta_tlast           ),
  .m_axis_tcp_tx_data_tvalid          ( m_axis_tcp_tx_data_tvalid          ),
  .m_axis_tcp_tx_data_tready          ( m_axis_tcp_tx_data_tready          ),
  .m_axis_tcp_tx_data_tdata           ( m_axis_tcp_tx_data_tdata           ),
  .m_axis_tcp_tx_data_tkeep           ( m_axis_tcp_tx_data_tkeep           ),
  .m_axis_tcp_tx_data_tlast           ( m_axis_tcp_tx_data_tlast           ),
  .s_axis_tcp_tx_status_tvalid        ( s_axis_tcp_tx_status_tvalid        ),
  .s_axis_tcp_tx_status_tready        ( s_axis_tcp_tx_status_tready        ),
  .s_axis_tcp_tx_status_tdata         ( s_axis_tcp_tx_status_tdata         ),
  .s_axis_tcp_tx_status_tkeep         ( s_axis_tcp_tx_status_tkeep         ),
  .s_axis_tcp_tx_status_tlast         ( s_axis_tcp_tx_status_tlast         ),
  .ap_start                           ( ap_start                           ),
  .ap_done                            ( ap_done                            ),
  .ap_idle                            ( ap_idle                            ),
  .ap_ready                           ( ap_ready                           ),
  .useConn                            ( useConn                            ),
  .useIpAddr                          ( useIpAddr                          ),
  .pkgWordCount                       ( pkgWordCount                       ),
  .basePort                           ( basePort                           ),
  .baseIpAddress                      ( baseIpAddress                      ),
  .dualModeEn                         ( dualModeEn                         ),
  .packetGap                          ( packetGap                          ),
  .timeInSeconds                      ( timeInSeconds                      ),
  .timeInCycles                       ( timeInCycles                       ),
  .axi00_ptr0                         ( axi00_ptr0                         ),
  .axi01_ptr0                         ( axi01_ptr0                         ),
  .axi02_ptr0                         ( axi02_ptr0                         ),
  .axi03_ptr0                         ( axi03_ptr0                         )
);

endmodule
`default_nettype wire
